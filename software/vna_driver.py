import socket 
import numpy as np
import pdb
import struct
import time
import skrf as rf
from skrf.calibration import OnePort
import os
import matplotlib.pyplot as plt

VNAPORT = 8888
VNAIP = '192.168.1.177'

SWITCH_PATH1 = 1
SWITCH_PATH0 = 0

ADC_BITS = 16
ADC_REF = 4.096

S21 = 0
S11 = 1
SDIR_SWITCH = 2


SYNTH_POW = 4 # dBm

SWITCH_CMD = np.uint8(ord('w'))
FILT_CMD = np.uint8(ord('f'))
POW_CMD = np.uint8(ord('p'))
DBM_CMD = np.uint8(ord('b'))
SYNTH_CMD = np.uint8(ord('s'))
DET_CMD = np.uint8(ord('d'))
ATT_CMD = np.uint8(ord('a'))
IQ_CMD = np.uint8(ord('q'))
CMD_ERR = np.uint8(ord('E'))

class eth_vna:
    def __init__(self, vna_port, vna_ip):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.freq = np.float32(0)
        self.pow_cal = False   

    def cal_sweep_pow(self, fstart, fstop, points):
        self.pow_cal = True
        print('precomputing sweep amplitudes')
        sweep_freqs = np.linspace(fstart, fstop, points)

        self.cal_att = np.zeros(points)
        self.cal_path = np.zeros(points)
        self.cal_pow = np.zeros(points)

        for (fidx, f) in enumerate(sweep_freqs):
            self.set_freq(f)
            dbm_actual = self.set_dbm(SYNTH_POW)
            self.cal_att[fidx] = self.att_setting
            self.cal_path[fidx] = self.channel_select
            self.cal_pow[fidx] = self.channel_power
            print('{}/{} frequency {}, actual power {}'.format(fidx, points, f, dbm_actual)) 

    def sweep(self, fstart, fstop, points, use_cal = True):
        if use_cal and not self.pow_cal:
            self.cal_sweep_pow(fstart, fstop, points)

        sweep_freqs = np.linspace(fstart, fstop, points)
        sweep_iq = 1j * np.zeros(points)
        
        for (fidx, f) in enumerate(sweep_freqs):
            self.set_freq(f)

            if not use_cal:
                self.set_dbm(SYNTH_POW)
            else:
                self.set_att(self.cal_att[fidx])
                self.set_pow(self.cal_path[fidx], self.cal_pow[fidx])
                time.sleep(.05)

            i, q = self.read_iq()
            sweep_iq[fidx] = i + 1j * q
        
        net = rf.Network(f=sweep_freqs/1e9, s=sweep_iq, z0=50)
        return net 
    
    def slot_calibrate_oneport(self, fstart, fstop, points):
        raw_input("connect load, then press enter to continue")
        self.cal_load = self.sweep(fstart, fstop, points)

        raw_input("connect short, then press enter to continue")
        self.cal_short = self.sweep(fstart, fstop, points)

        raw_input("connect open, then press enter to continue")
        self.cal_open = self.sweep(fstart, fstop, points)
        sweep_freqs = np.linspace(fstart, fstop, points) / 1e9

        ideal_open = rf.Network(f=sweep_freqs, s=np.ones(points), z0=50)
        ideal_short = rf.Network(f=sweep_freqs, s=-1*np.ones(points), z0=50)
        ideal_load = rf.Network(f=sweep_freqs, s=np.zeros(points), z0=50)

        #raw_input("connect thru, then press enter to continue")
        #self.cal_thru = self.sweep(fstart, fstop, points)
        self.cal_oneport = rf.OnePort(\
                ideals = [ideal_short, ideal_open, ideal_load],\
                measured = [self.cal_short, self.cal_open, self.cal_load])        
                
        self.cal_oneport.run()
        short_caled = self.cal_oneport.apply_cal(self.cal_short)
    
    def plot_oneport_sparam(self, fstart, fstop, points):
        sweep = self.sweep(fstart, fstop, points)
        sweep_cal = self.cal_oneport.apply_cal(sweep)
        sweep_cal.plot_s_db()
        return sweep_cal

    def _eth_cmd(self, values):
        args_str = ''.join([a.tobytes() for a in values])
        self.sock.sendto(args_str, (VNAIP, VNAPORT))
        rval = self.sock.recvfrom(1024)
        assert rval[0][0] == args_str[0]
        return rval[0][1:]
   
    def set_freq(self, f):
        self.freq = int(f)
        freq = int(self.freq/10)
        args = [SYNTH_CMD, np.uint8(0), \
                np.uint8(freq & 0xff), np.uint8((freq >> 8) & 0xff), np.uint8((freq >> 16) & 0xff), np.uint8((freq >> 24) & 0xff)]
        self._eth_cmd(args)

    def set_sw(self, switch, path):
        args = [SWITCH_CMD, np.uint8(switch), np.uint8(path)]
        self._eth_cmd(args)

    def set_filt(self, path, bank = 0):
        args = [FILT_CMD, np.uint8(bank), np.uint8(path)]
        self._eth_cmd(args)

    def set_pow(self, path, power):
        self.channel_power = power
        args = [POW_CMD, np.uint8(path), np.uint8(power)]
        self._eth_cmd(args)

    def set_att(self, att):
        args = [ATT_CMD, np.uint8(0), np.uint8(att/.5)]
        self._eth_cmd(args)


    def set_dbm(self, power, use_cache = True):
        args = [DBM_CMD, np.int8(power)]
        dbm_return = self._eth_cmd(args)
        power_measured = struct.unpack("<h", dbm_return[0:2])[0]/4
        self.att_setting = struct.unpack("B", dbm_return[2])[0]/2
        self.channel_power = struct.unpack("B", dbm_return[3])[0]
        self.channel_select = struct.unpack("B", dbm_return[4])[0]
        return power_measured

    def set_meas(self, meas):
        self.set_sw(SDIR_SWITCH, meas)

    def read_iq(self):
        iq = self._eth_cmd([IQ_CMD])
        adc1 = struct.unpack("<h", iq[0:2])[0]
        adc2 = struct.unpack("<h", iq[2:4])[0]

        adc1 = 1e3 * ADC_REF * ((adc1)/(2.0 ** ADC_BITS)) # convert to mV
        adc2 = 1e3 * ADC_REF * ((adc2)/(2.0 ** ADC_BITS)) # convert to mV

        print("adc1: {}, adc2: {}".format(adc1, adc2))
        return adc1, adc2

    def read_det(self):
        '''det'''
        det_val = self._eth_cmd([DET_CMD, np.uint8(0), np.uint8(0)])
        power = struct.unpack("<h", det_val)[0]/4
        return power

if __name__ == '__main__':
    vna  = eth_vna(VNAPORT, VNAIP)
    fstart = .5e9
    fstop = 4e9
    points = 501 

    vna.set_meas(S11)
    vna.slot_calibrate_oneport(fstart, fstop, points)

    while True:
        raw_input("connect dut, then press enter to continue")
        plt.subplot(1,2,1)
        sweep_cal = vna.plot_oneport_sparam(fstart, fstop, points)
        plt.subplot(1,2,2)
        sweep_cal.plot_s_smith()
        plt.show()

    pdb.set_trace()

