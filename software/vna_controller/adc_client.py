from pylab import *
import socket
import sys
import pdb
import time
from scipy import signal

class ethernet_pru_adc:
    def __init__(self, adc_addr, adc_port):
        self.adc_addr = adc_addr
        self.adc_port = adc_port

    def grab_samples(paths = 2, number_of_samples = 1024):
        t1 =  time.time()
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        server_address = (self.adc_addr, self.adc_port)

        sock.connect(server_address)

        sock.sendall(np.uint32(number_of_samples).tobytes())
        adc_buff_size = np.fromstring(sock.recv(4), dtype=np.uint32)[0]

        remaining_samples = number_of_samples 
        data = ''
        while(remaining_samples > 0):
            adc_buffer = sock.recv(adc_buff_size * 4, socket.MSG_WAITALL)
            print('received {} of {} bytes'.format(len(adc_buffer), adc_buff_size * 4))
            data += adc_buffer
            remaining_samples -= len(adc_buffer) / 4

        sock.sendall(np.uint32(number_of_samples).tobytes())
        samples = np.fromstring(data, dtype=np.int16)
        samples = samples[0::2] + 1j * samples[1::2]
        sock.close()
        
        t2 = time.time()
        print("grabbing samples took {} seconds".format(t2 - t1))

        return np.split(samples, paths)
           
    def calc_power_spectrum(samples):
        fs = 26e6 / 900 # ad9864 adc clock of 26 MHz, decimation rate of 900

        power_spectrum = 20 * log10(abs(fftshift(fft(samples, norm='ortho'))))
        freqs = fftshift(fftfreq(len(samples), d = 1/fs))

        return power_spectrum, freqs

    def plot_power_spectrum(power_spectrum, freqs):
        plt.plot(freqs / 1000, power_spectrum - max(power_spectrum))
        plt.xlabel('frequency (kHz)')
        plt.ylabel('power (dB, relative to max)')
        plt.show()

if __name__ == '__main__':
    adc = ethernet_pru_adc('bbone', 10520)
    samples = grab_samples(paths=1)
    pows, freqs = calc_power_spectrum(samples)
    plot_power_spectrum(samples)


