# script to bit-bang ad9864 initialiation over SPI for fixed 45 MHz IF 
# (use bit-banged SPI, initialization adc initialization only happens once
# save the hardware SPI for more exciting things like controlling the synth)
# currently hardcoded for assuming 26 MHz ref and adc clk

import time
import pdb
from bbone_spi_bitbang import bitbang_spi
from vna_pins_r1 import PINS

ADC_SPI_CS1 = PINS.AD_PE_A # adc1
ADC_SPI_CS2 = PINS.AD_PE_B # adc2
ADC_SPI_CS3 = PINS.AD_PE_C # adc3
ADC_SPI_CS4 = PINS.AD_PE_D # adc4
ADC_SPI_MOSI = PINS.AD_PD
ADC_SPI_MISO = PINS.AD_DOUTB
ADC_SPI_CLK = PINS.AD_PC

ADC_CLK_EN = PINS.ADC_CLK_EN

def ad9864_write_reg(spi, addr, val):
    payload = addr << 9 | val
    spi.transfer(payload, bits = 16)
    print('readback: ' + str(ad9864_read_reg(spi, addr)) + ' for val: ' + str(val))

def ad9864_read_reg(spi, addr):
    AD9864_READ_MASK = 1 << 15

    payload = addr << 9 | AD9864_READ_MASK;
    response = spi.transfer(payload, bits = 16)

    return response & 0xFF

def ad9864_tristate_miso(spi):
    ad9864_write_reg(spi, 0x3B, 0x08)

def ad9864_set_attenuation(spi, fixed = False):
    if fixed:
        # set fixed attenuation
        ad9864_write_reg(spi, 0x03, 0x80)
    else:
        ad9864_write_reg(spi, 0x03, 0x00)

def ad9864_init(spi):
    ad9864_write_reg(spi, 0x3F, 0x99) # software reset
    time.sleep(.001)    

    ad9864_write_reg(spi, 0x19, 0x87) # 4-wire SPI, 16 bit I/Q
    ad9864_write_reg(spi, 0x3B, 0x00) # enable mosi on doutb 

    ad9864_write_reg(spi, 0x00, 0x77) # take ref out of standby

    # lc and rc resonator calibration
    ad9864_write_reg(spi, 0x3E, 0x47)
    ad9864_write_reg(spi, 0x38, 0x01)
    ad9864_write_reg(spi, 0x39, 0x0F)
    time.sleep(.001)    

    for i in range(5):
        ad9864_write_reg(spi, 0x1C, 0x03)
        ad9864_write_reg(spi, 0x00, 0x74)
        time.sleep(.006)
        r = ad9864_read_reg(spi, 0x1C)

        if r == 0:
            print('LC/RC calibration worked!')
            break

        ad9864_write_reg(spi, 0x1C, 0x00)
        print("LC/RC calibration failed, retrying..")

    ad9864_write_reg(spi, 0x38, 0x00)
    ad9864_write_reg(spi, 0x3E, 0x00)


    # readback tuning values
    print('CAPL1 (coarse): {}'.format(ad9864_read_reg(spi, 0x1D)))
    print('CAPL0   (fine): {}'.format(ad9864_read_reg(spi, 0x1E)))
    print('CAPR          : {}'.format(ad9864_read_reg(spi, 0x1F)))


    # lo synth configuration, set LO to 48.25 MHz
    ad9864_write_reg(spi, 0x00, 0x30) # enable everything but ck..
    ad9864_write_reg(spi, 0x08, 0x00)  
    ad9864_write_reg(spi, 0x09, 0x68) # LOR = 104 (so, fif = 250 kHz * (8 LOB + LOA)
    ad9864_write_reg(spi, 0x0A, 0x20) # LOA = 1
    ad9864_write_reg(spi, 0x0B, 0x18) # LOB = 24 (0x18)
    ad9864_write_reg(spi, 0x0C, 0x07) # normal LO charge pump current control


    # configure decimation
    ad9864_write_reg(spi, 0x07, 0x0e) # set decimation rate to 900, 60 * (M + 1) if K = 0, M = 14

    # configure SSI
    ad9864_write_reg(spi, 0x1A, 0x07) # (clkout freq = adc clk / 7)
    ad9864_write_reg(spi, 0x18, 0x00) # take fs and clkout out of tristate
    
    # set doutb to tristate
    ad9864_write_reg(spi, 0x3B, 0x08) # disable mosi on doutb 


if __name__ == '__main__':
    from mmap_gpio import GPIO
    import time

    gpio = GPIO()
    SYNCB = PINS.AD_SYNCB
    V3_EN = PINS.PLL_3V3_EN

    gpio.set_output(SYNCB)
    gpio.set_output(V3_EN)
    gpio.set_output(ADC_CLK_EN)

    
    gpio.set_value(V3_EN, gpio.HIGH)
    gpio.set_value(SYNCB, gpio.HIGH)
    gpio.set_value(ADC_CLK_EN, gpio.HIGH)
    
    print("SYNCB HIGH")
    time.sleep(.5)

    spi1 = bitbang_spi(ADC_SPI_CS1, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
    spi2 = bitbang_spi(ADC_SPI_CS2, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
    spi3 = bitbang_spi(ADC_SPI_CS3, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
    spi4 = bitbang_spi(ADC_SPI_CS4, ADC_SPI_MOSI, ADC_SPI_MISO, ADC_SPI_CLK)
   
    ad9864_tristate_miso(spi1)
    ad9864_tristate_miso(spi2)
    ad9864_tristate_miso(spi3)
    ad9864_tristate_miso(spi4)
   
    print("init adc1")
    ad9864_init(spi1)

    print("init adc2")
    ad9864_init(spi2)

    print("init adc3")
    ad9864_init(spi3)

    print("init adc4")
    ad9864_init(spi4)



    time.sleep(.5)

    gpio.set_value(SYNCB, gpio.HIGH)
    gpio.set_value(SYNCB, gpio.LOW)
    time.sleep(.05)
    gpio.set_value(SYNCB, gpio.HIGH)
