# misc vna io stuff 
# switches, multipliers, adc initialization...

# initialize ADC(s)
# set switches
# reset syncb


import zmq
import argparse
import pdb

import Adafruit_BBIO.GPIO as GPIO

from vna_io_commands import *
from adc_bbone_init import *


MIX_EN = "P8.15"
MIX_X2 = "P8.17"

ALC_SW_1_1 = "P8.27"
ALC_SW_1_2 = "P8.29"

SW4_0_0 = "P8.28"
SW4_0_1 = "P8.30"

SYNCB = "P8.41"

SW2_0 = "P8.7"
SW2_1 = "P8.9"
SW2_2 = "P8.11"

SW_MAP = {  SW_DUT_RF : SW2_0, \
            SW_MULT_1 : SW2_1, \
            SW_AUX : SW2_2, \
            SW4_0 : SW4_0_0, \
            SW4_1 : SW4_0_1}
            

class zmq_io_server:
    def __init__(self, context, port):
        # init socket stuff
        self.context = context
        self.socket = context.socket(zmp.REP)
        self.socket.bind("tcp://*:{}".format(str(port)))

        # init io stuff
        GPIO.setup(MIX_EN, GPIO.OUTPUT)
        GPIO.setup(MIX_X2, GPIO.OUTPUT)
        GPIO.setup(ALC_SW_1_1, GPIO.OUTPUT)
        GPIO.setup(ALC_SW_1_2, GPIO.OUTPUT)
        GPIO.setup(SW4_0_0, GPIO.OUTPUT)
        GPIO.setup(SW4_0_1, GPIO.OUTPUT)
        GPIO.setup(SW2_0, GPIO.OUTPUT)
        GPIO.setup(SW2_1, GPIO.OUTPUT)
        GPIO.setup(SW2_2, GPIO.OUTPUT)
        GPIO.setup(SYNCB, GPIO.OUTPUT)

        GPIO.output(MIX_EN, GPIO.LOW)
        GPIO.output(MIX_X2, GPIO.LOW)

        self.adc_spi1 = bitbang_spi(ADC_SPI_CS1, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
        self.adc_spi2 = bitbang_spi(ADC_SPI_CS2, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
        self.adc_spi3 = bitbang_spi(ADC_SPI_CS3, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
        self.adc_spi4 = bitbang_spi(ADC_SPI_CS4, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)

        self.adc_spis = [self.adc_spi1, self.adc_spi2, self.adc_spi3, self.adc_spi4]


    
    def _set_switch(self, message):
        freq = float(message[1:])
        self.synth.set_freq(freq)
        return message[COMMAND_INDEX]

    def _set_multiplier(self, message):
        mult_enable = int(message[1:])

        if mult_enable:
            GPIO.output(MIX_X2,GPIO.HIGH)
        else:
            GPIO.output(MIX_X2,GPIO.LOW)
       
        return message[COMMAND_INDEX]


    def _enable_mixer(self, message):
        mixer_enable = int(message[1:])
        if mixer_enable:
            GPIO.output(MIX_EN,GPIO.HIGH)
        else:
            GPIO.output(MIX_EN,GPIO.LOW)

        return message[COMMAND_INDEX]

    def _init_adc(self, message):
        adc = int(message[1:])

        if adc == ALL_ADC:
            for s in self.adc_spis:
                ad9864_init(s)
        else:
            ad9864_init(adc_spis[adc])
            
        return message[COMMAND_INDEX]

    def _sync_adc(self, message):
        GPIO.output(SYNCB,GPIO.LOW)
        GPIO.output(SYNCB,GPIO.HIGH)
        GPIO.output(SYNCB,GPIO.LOW)

        return message[COMMAND_INDEX]

    self.command_handlers = {\
        VNA_SW_CMD: self._set_switch, \
        MIX_EN_CMD: self._enable_mixer, \
        MIX_MUL_CMD: self._set_multiplier, \
        ADC_INIT_CMD : self._init_adc, \
        ADC_SYNC_CMD: self._sync_adc}

    def run(self):
        while True:
            message = self.socket.recv()
            command = message[COMMAND_INDEX]
            response = ''

            try:
                response = self.command_handlers[commands](message)

            except:
                print('unrecognized command')
                pdb.set_trace()
            
            socket.send(response)


if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    args = parser.parse_args()

    context = zmq.Context()
    synth_name = args.synth
    
    pins = SYNTH_PINS[synth_name]
    port = SYNTH_PORTS[synth_name]

    synth = synth_bbone.synth_r1(pins)

    synth_server = ethernet_synth(context, synth, port)
    synth_server.run()
    synth_server.close()
    
    context.destroy()
