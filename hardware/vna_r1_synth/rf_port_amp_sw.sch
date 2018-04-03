EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:adrf5020
LIBS:tps2051
LIBS:resistive_bridge
LIBS:lm2776
LIBS:max810
LIBS:vdd_clk
LIBS:vdd_lo
LIBS:vdd_rf
LIBS:lan8710a
LIBS:ad9577
LIBS:okr_t3-w12-c
LIBS:adp7158
LIBS:maam-011100
LIBS:ltc2054cs5
LIBS:ltc2630
LIBS:trf37b73
LIBS:nc7wzu04
LIBS:adrf5040
LIBS:lmx2594
LIBS:tps255xx
LIBS:tps2065d
LIBS:masw-008322-tr1000
LIBS:max510
LIBS:pe42541
LIBS:txco
LIBS:tps793
LIBS:tpd4s012
LIBS:tcm-63ax+
LIBS:sn74lvc1g07
LIBS:scbd-16-63
LIBS:rf_crossbar
LIBS:pwr_splitter
LIBS:pe43705
LIBS:pe42540
LIBS:pe42521
LIBS:pcm2900
LIBS:nc7sv74kbx
LIBS:nb3n551
LIBS:mounting_hole
LIBS:mounting_box
LIBS:mga-82563
LIBS:max2605
LIBS:maam-011101
LIBS:ltc5596
LIBS:ltc5549
LIBS:ltc2323
LIBS:ltc1983
LIBS:ltc1566-1
LIBS:lt1819
LIBS:lt1567
LIBS:lmx2592
LIBS:lmk61e2
LIBS:hmc629
LIBS:hmc525
LIBS:hmc475
LIBS:hmc424
LIBS:hmc321
LIBS:hmc311sc70
LIBS:conn_sma_2gnd
LIBS:conn_sma
LIBS:conn_microsd
LIBS:cmm0511-qt-0g0t
LIBS:cat102
LIBS:boosterpack_ti
LIBS:ammp-6120
LIBS:adm7150
LIBS:adl5902
LIBS:adl5380
LIBS:adf4355-3
LIBS:ad9864
LIBS:75451
LIBS:74xx1g14
LIBS:74hc04_full
LIBS:74hc04
LIBS:lm27762
LIBS:74lvc1g00
LIBS:74lvc1g32
LIBS:vna_r1_synth-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADRF5020 U?
U 1 1 5AB9090D
P 6200 5350
F 0 "U?" H 5500 5900 60  0000 C CNN
F 1 "ADRF5020" H 5650 6000 60  0000 C CNN
F 2 "" H 6200 5350 60  0001 C CNN
F 3 "" H 6200 5350 60  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
$Comp
L MAAM-011100 U?
U 1 1 5AB90926
P 3350 5350
F 0 "U?" H 2600 5800 60  0000 C CNN
F 1 "MAAM-011100" H 2850 5700 60  0000 C CNN
F 2 "" H 3350 5350 60  0001 C CNN
F 3 "" H 3350 5350 60  0001 C CNN
	1    3350 5350
	-1   0    0    -1  
$EndComp
Text HLabel 1350 5350 0    60   Input ~ 0
RF_IN
Text HLabel 6200 6600 3    60   Output ~ 0
PORT_1
Text HLabel 6200 4300 1    60   Output ~ 0
PORT_2
Text HLabel 8400 5450 2    60   Input ~ 0
PORT_SEL
$Comp
L -2V5 #PWR?
U 1 1 5AB9B29C
P 7000 4600
F 0 "#PWR?" H 7000 4700 50  0001 C CNN
F 1 "-2V5" H 7000 4750 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5AB9B2B6
P 3400 2250
F 0 "#PWR?" H 3400 2100 50  0001 C CNN
F 1 "+3V3" H 3400 2390 50  0000 C CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "" H 3400 2250 50  0001 C CNN
	1    3400 2250
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5AB9B487
P 2000 5350
F 0 "C?" H 2010 5420 50  0000 L CNN
F 1 "10 pF" H 2010 5270 50  0000 L CNN
F 2 "" H 2000 5350 50  0001 C CNN
F 3 "" H 2000 5350 50  0001 C CNN
	1    2000 5350
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5AB9B4F5
P 4800 5350
F 0 "C?" H 4810 5420 50  0000 L CNN
F 1 "10 pF" H 4810 5270 50  0000 L CNN
F 2 "" H 4800 5350 50  0001 C CNN
F 3 "" H 4800 5350 50  0001 C CNN
	1    4800 5350
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5AB9B551
P 2200 5100
F 0 "R?" H 2230 5120 50  0000 L CNN
F 1 "1k" H 2230 5060 50  0000 L CNN
F 2 "" H 2200 5100 50  0001 C CNN
F 3 "" H 2200 5100 50  0001 C CNN
	1    2200 5100
	1    0    0    -1  
$EndComp
$Comp
L L_Small L?
U 1 1 5AB9B5AB
P 4250 5150
F 0 "L?" H 4280 5190 50  0000 L CNN
F 1 "L_Small" H 4280 5110 50  0000 L CNN
F 2 "" H 4250 5150 50  0001 C CNN
F 3 "" H 4250 5150 50  0001 C CNN
	1    4250 5150
	1    0    0    -1  
$EndComp
Text HLabel 4250 4100 1    60   Input ~ 0
AMP_VD
$Comp
L GND #PWR?
U 1 1 5ABC40C4
P 6950 5350
F 0 "#PWR?" H 6950 5100 50  0001 C CNN
F 1 "GND" H 6950 5200 50  0000 C CNN
F 2 "" H 6950 5350 50  0001 C CNN
F 3 "" H 6950 5350 50  0001 C CNN
	1    6950 5350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4108
P 6400 6100
F 0 "#PWR?" H 6400 5850 50  0001 C CNN
F 1 "GND" H 6400 5950 50  0000 C CNN
F 2 "" H 6400 6100 50  0001 C CNN
F 3 "" H 6400 6100 50  0001 C CNN
	1    6400 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC415E
P 6000 6100
F 0 "#PWR?" H 6000 5850 50  0001 C CNN
F 1 "GND" H 6000 5950 50  0000 C CNN
F 2 "" H 6000 6100 50  0001 C CNN
F 3 "" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4199
P 5450 5550
F 0 "#PWR?" H 5450 5300 50  0001 C CNN
F 1 "GND" H 5450 5400 50  0000 C CNN
F 2 "" H 5450 5550 50  0001 C CNN
F 3 "" H 5450 5550 50  0001 C CNN
	1    5450 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC420C
P 5450 5150
F 0 "#PWR?" H 5450 4900 50  0001 C CNN
F 1 "GND" H 5450 5000 50  0000 C CNN
F 2 "" H 5450 5150 50  0001 C CNN
F 3 "" H 5450 5150 50  0001 C CNN
	1    5450 5150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4289
P 6000 4600
F 0 "#PWR?" H 6000 4350 50  0001 C CNN
F 1 "GND" H 6000 4450 50  0000 C CNN
F 2 "" H 6000 4600 50  0001 C CNN
F 3 "" H 6000 4600 50  0001 C CNN
	1    6000 4600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4300
P 6400 4600
F 0 "#PWR?" H 6400 4350 50  0001 C CNN
F 1 "GND" H 6400 4450 50  0000 C CNN
F 2 "" H 6400 4600 50  0001 C CNN
F 3 "" H 6400 4600 50  0001 C CNN
	1    6400 4600
	-1   0    0    1   
$EndComp
$Comp
L C_Small C?
U 1 1 5ABC4630
P 7150 4850
F 0 "C?" H 7160 4920 50  0000 L CNN
F 1 "10 pF" H 7160 4770 50  0000 L CNN
F 2 "" H 7150 4850 50  0001 C CNN
F 3 "" H 7150 4850 50  0001 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC46B9
P 7150 5000
F 0 "#PWR?" H 7150 4750 50  0001 C CNN
F 1 "GND" H 7150 4850 50  0000 C CNN
F 2 "" H 7150 5000 50  0001 C CNN
F 3 "" H 7150 5000 50  0001 C CNN
	1    7150 5000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5ABC4774
P 7550 5550
F 0 "#PWR?" H 7550 5400 50  0001 C CNN
F 1 "+3V3" H 7550 5690 50  0000 C CNN
F 2 "" H 7550 5550 50  0001 C CNN
F 3 "" H 7550 5550 50  0001 C CNN
	1    7550 5550
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5ABC47E7
P 7150 5800
F 0 "C?" H 7160 5870 50  0000 L CNN
F 1 "10 pF" H 7160 5720 50  0000 L CNN
F 2 "" H 7150 5800 50  0001 C CNN
F 3 "" H 7150 5800 50  0001 C CNN
	1    7150 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4873
P 7150 6000
F 0 "#PWR?" H 7150 5750 50  0001 C CNN
F 1 "GND" H 7150 5850 50  0000 C CNN
F 2 "" H 7150 6000 50  0001 C CNN
F 3 "" H 7150 6000 50  0001 C CNN
	1    7150 6000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 5ABC4B24
P 7450 5250
F 0 "R?" H 7480 5270 50  0000 L CNN
F 1 "JMP" H 7480 5210 50  0000 L CNN
F 2 "" H 7450 5250 50  0001 C CNN
F 3 "" H 7450 5250 50  0001 C CNN
	1    7450 5250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4C56
P 7650 5250
F 0 "#PWR?" H 7650 5000 50  0001 C CNN
F 1 "GND" H 7650 5100 50  0000 C CNN
F 2 "" H 7650 5250 50  0001 C CNN
F 3 "" H 7650 5250 50  0001 C CNN
	1    7650 5250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 5ABC4EF2
P 8000 5450
F 0 "R?" H 8030 5470 50  0000 L CNN
F 1 "1k" H 8030 5410 50  0000 L CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "" H 8000 5450 50  0001 C CNN
	1    8000 5450
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5ABC4F69
P 8250 5650
F 0 "C?" H 8260 5720 50  0000 L CNN
F 1 "10 pF" H 8260 5570 50  0000 L CNN
F 2 "" H 8250 5650 50  0001 C CNN
F 3 "" H 8250 5650 50  0001 C CNN
	1    8250 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABC4FDB
P 8250 6000
F 0 "#PWR?" H 8250 5750 50  0001 C CNN
F 1 "GND" H 8250 5850 50  0000 C CNN
F 2 "" H 8250 6000 50  0001 C CNN
F 3 "" H 8250 6000 50  0001 C CNN
	1    8250 6000
	1    0    0    -1  
$EndComp
Text Notes 8450 5000 0    60   ~ 0
CTRL 3V3, RFC -> RF1\nCTRL  0V, RFC -> RF2
Text Notes 6950 4250 0    60   ~ 0
APPLY VSS AND VDD BEFORE DIGITAL INPUTS
Text HLabel 1400 2050 0    60   Input ~ 0
DAC_CS
Text HLabel 1400 2250 0    60   Input ~ 0
SDI
Text HLabel 1400 2150 0    60   Input ~ 0
SCK
$Comp
L LTC2630 U?
U 1 1 5ABCB709
P 2650 2150
F 0 "U?" H 2350 2450 60  0000 C CNN
F 1 "LTC2630-LZ8" H 2450 2550 60  0000 C CNN
F 2 "" H 2700 2050 60  0001 C CNN
F 3 "" H 2700 2050 60  0001 C CNN
	1    2650 2150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 5ABCBA47
P 1800 2250
F 0 "R?" H 1830 2270 50  0000 L CNN
F 1 "R_Small" H 1830 2210 50  0000 L CNN
F 2 "" H 1800 2250 50  0001 C CNN
F 3 "" H 1800 2250 50  0001 C CNN
	1    1800 2250
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5ABCBB09
P 1800 2150
F 0 "R?" H 1830 2170 50  0000 L CNN
F 1 "R_Small" H 1830 2110 50  0000 L CNN
F 2 "" H 1800 2150 50  0001 C CNN
F 3 "" H 1800 2150 50  0001 C CNN
	1    1800 2150
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5ABCBB43
P 1800 2050
F 0 "R?" H 1830 2070 50  0000 L CNN
F 1 "R_Small" H 1830 2010 50  0000 L CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 5350 6850 5350
Wire Wire Line
	6400 6000 6400 6100
Wire Wire Line
	6300 6000 6300 6050
Wire Wire Line
	6300 6050 6500 6050
Connection ~ 6400 6050
Wire Wire Line
	6500 6050 6500 6000
Wire Wire Line
	6000 6000 6000 6100
Wire Wire Line
	6000 6050 6100 6050
Wire Wire Line
	6100 6050 6100 6000
Connection ~ 6000 6050
Wire Wire Line
	5450 5550 5550 5550
Wire Wire Line
	5550 5450 5500 5450
Wire Wire Line
	5500 5450 5500 5550
Connection ~ 5500 5550
Wire Wire Line
	5450 5150 5550 5150
Wire Wire Line
	5550 5250 5500 5250
Wire Wire Line
	5500 5250 5500 5150
Connection ~ 5500 5150
Wire Wire Line
	6000 4600 6000 4700
Wire Wire Line
	6000 4650 6100 4650
Wire Wire Line
	6100 4650 6100 4700
Connection ~ 6000 4650
Wire Wire Line
	6400 4600 6400 4700
Wire Wire Line
	6400 4650 6300 4650
Wire Wire Line
	6300 4650 6300 4700
Connection ~ 6400 4650
Wire Wire Line
	7000 5150 6850 5150
Wire Wire Line
	7000 4600 7000 5150
Wire Wire Line
	7000 4650 7150 4650
Wire Wire Line
	7150 4650 7150 4750
Connection ~ 7000 4650
Wire Wire Line
	7150 4950 7150 5000
Wire Wire Line
	6850 5550 7550 5550
Wire Wire Line
	7150 5900 7150 6000
Wire Wire Line
	7150 5700 7150 5550
Connection ~ 7150 5550
Wire Wire Line
	7350 5250 6850 5250
Wire Wire Line
	7550 5250 7650 5250
Wire Wire Line
	6850 5450 7900 5450
Wire Wire Line
	8100 5450 8400 5450
Wire Wire Line
	8250 5450 8250 5550
Wire Wire Line
	8250 6000 8250 5750
Connection ~ 8250 5450
Wire Wire Line
	6200 6600 6200 6000
Wire Wire Line
	6200 4300 6200 4700
Wire Wire Line
	1400 2050 1700 2050
Wire Wire Line
	1400 2150 1700 2150
Wire Wire Line
	1400 2250 1700 2250
Wire Wire Line
	1900 2050 2200 2050
Wire Wire Line
	1900 2150 2200 2150
Wire Wire Line
	1900 2250 2200 2250
Wire Wire Line
	3100 2250 3400 2250
$Comp
L GND #PWR?
U 1 1 5ABCC75B
P 3250 2150
F 0 "#PWR?" H 3250 1900 50  0001 C CNN
F 1 "GND" H 3250 2000 50  0000 C CNN
F 2 "" H 3250 2150 50  0001 C CNN
F 3 "" H 3250 2150 50  0001 C CNN
	1    3250 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 2150 3100 2150
$Comp
L C_Small C?
U 1 1 5ABCC950
P 3250 2450
F 0 "C?" H 3260 2520 50  0000 L CNN
F 1 "100 nF" H 3260 2370 50  0000 L CNN
F 2 "" H 3250 2450 50  0001 C CNN
F 3 "" H 3250 2450 50  0001 C CNN
	1    3250 2450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5ABCCA76
P 3250 2600
F 0 "#PWR?" H 3250 2350 50  0001 C CNN
F 1 "GND" H 3250 2450 50  0000 C CNN
F 2 "" H 3250 2600 50  0001 C CNN
F 3 "" H 3250 2600 50  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2350 3250 2250
Connection ~ 3250 2250
Wire Wire Line
	3250 2550 3250 2600
Wire Wire Line
	2100 5350 2850 5350
Wire Wire Line
	1900 5350 1350 5350
Wire Wire Line
	3850 5350 4700 5350
Wire Wire Line
	4250 5250 4250 5350
Connection ~ 4250 5350
Wire Wire Line
	4900 5350 5550 5350
$Comp
L -2V5 #PWR?
U 1 1 5AC421A3
P 2000 4550
F 0 "#PWR?" H 2000 4650 50  0001 C CNN
F 1 "-2V5" H 2000 4700 50  0000 C CNN
F 2 "" H 2000 4550 50  0001 C CNN
F 3 "" H 2000 4550 50  0001 C CNN
	1    2000 4550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC42381
P 2000 3850
F 0 "#PWR?" H 2000 3600 50  0001 C CNN
F 1 "GND" H 2000 3700 50  0000 C CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 5AC4240C
P 2000 4050
F 0 "R?" H 2030 4070 50  0000 L CNN
F 1 "4k7" H 2030 4010 50  0000 L CNN
F 2 "" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 5AC4249E
P 2000 4350
F 0 "R?" H 2030 4370 50  0000 L CNN
F 1 "1k2" H 2030 4310 50  0000 L CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 4450 2000 4550
Wire Wire Line
	2000 4150 2000 4250
Wire Wire Line
	2000 3850 2000 3950
Text Notes 850  3550 0    60   ~ 0
typ Ig = 10 uA\nso, burn 500 uA in resistor divider, total of 5k ohms
Wire Wire Line
	2000 4200 2500 4200
Wire Wire Line
	2200 4200 2200 5000
Connection ~ 2000 4200
Wire Wire Line
	2200 5200 2200 5350
Connection ~ 2200 5350
$Comp
L C_Small C?
U 1 1 5AC42E46
P 2500 4050
F 0 "C?" H 2510 4120 50  0000 L CNN
F 1 "100 nF" H 2510 3970 50  0000 L CNN
F 2 "" H 2500 4050 50  0001 C CNN
F 3 "" H 2500 4050 50  0001 C CNN
	1    2500 4050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC42F44
P 2500 3850
F 0 "#PWR?" H 2500 3600 50  0001 C CNN
F 1 "GND" H 2500 3700 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3850 2500 3950
Wire Wire Line
	2500 4200 2500 4150
Connection ~ 2200 4200
$Comp
L GND #PWR?
U 1 1 5AC43D12
P 3350 5950
F 0 "#PWR?" H 3350 5700 50  0001 C CNN
F 1 "GND" H 3350 5800 50  0000 C CNN
F 2 "" H 3350 5950 50  0001 C CNN
F 3 "" H 3350 5950 50  0001 C CNN
	1    3350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5800 3350 5950
Wire Wire Line
	3450 5900 3450 5800
Wire Wire Line
	3150 5900 3450 5900
Connection ~ 3350 5900
Wire Wire Line
	3250 5800 3250 5900
Wire Wire Line
	3150 5800 3150 5900
Connection ~ 3250 5900
Wire Wire Line
	4250 4100 4250 5050
$Comp
L C_Small C?
U 1 1 5AC443B7
P 4500 4400
F 0 "C?" H 4510 4470 50  0000 L CNN
F 1 "10 pF" H 4510 4320 50  0000 L CNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5AC44437
P 4850 4400
F 0 "C?" H 4860 4470 50  0000 L CNN
F 1 "100 nF" H 4860 4320 50  0000 L CNN
F 2 "" H 4850 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC44557
P 4500 4600
F 0 "#PWR?" H 4500 4350 50  0001 C CNN
F 1 "GND" H 4500 4450 50  0000 C CNN
F 2 "" H 4500 4600 50  0001 C CNN
F 3 "" H 4500 4600 50  0001 C CNN
	1    4500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4500 4500 4600
$Comp
L GND #PWR?
U 1 1 5AC447B1
P 4850 4600
F 0 "#PWR?" H 4850 4350 50  0001 C CNN
F 1 "GND" H 4850 4450 50  0000 C CNN
F 2 "" H 4850 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4500 4850 4600
Wire Wire Line
	4250 4200 5200 4200
Wire Wire Line
	4500 4200 4500 4300
Connection ~ 4250 4200
Wire Wire Line
	4850 4200 4850 4300
Connection ~ 4500 4200
$Comp
L C_Small C?
U 1 1 5AC449EA
P 5200 4400
F 0 "C?" H 5210 4470 50  0000 L CNN
F 1 "1 uF" H 5210 4320 50  0000 L CNN
F 2 "" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC44A79
P 5200 4600
F 0 "#PWR?" H 5200 4350 50  0001 C CNN
F 1 "GND" H 5200 4450 50  0000 C CNN
F 2 "" H 5200 4600 50  0001 C CNN
F 3 "" H 5200 4600 50  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4500 5200 4600
Wire Wire Line
	5200 4200 5200 4300
Connection ~ 4850 4200
$Comp
L R_Small R?
U 1 1 5AC45012
P 3350 4650
F 0 "R?" H 3380 4670 50  0000 L CNN
F 1 "JMP" H 3380 4610 50  0000 L CNN
F 2 "" H 3350 4650 50  0001 C CNN
F 3 "" H 3350 4650 50  0001 C CNN
	1    3350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4900 3350 4750
Wire Wire Line
	3350 4100 3350 4550
$Comp
L C_Small C?
U 1 1 5AC4552F
P 3650 4400
F 0 "C?" H 3660 4470 50  0000 L CNN
F 1 "10 pF" H 3660 4320 50  0000 L CNN
F 2 "" H 3650 4400 50  0001 C CNN
F 3 "" H 3650 4400 50  0001 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC4565D
P 3650 4600
F 0 "#PWR?" H 3650 4350 50  0001 C CNN
F 1 "GND" H 3650 4450 50  0000 C CNN
F 2 "" H 3650 4600 50  0001 C CNN
F 3 "" H 3650 4600 50  0001 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4600 3650 4500
Wire Wire Line
	3350 4200 3650 4200
Wire Wire Line
	3650 4200 3650 4300
Connection ~ 3350 4200
Text Label 3350 4100 1    60   ~ 0
AMP_VCTL
Text Label 7800 1850 0    60   ~ 0
AMP_VCTL
Wire Wire Line
	3100 2050 4000 2050
$Comp
L LTC2054CS5 U?
U 1 1 5AC48348
P 6250 1950
F 0 "U?" H 5850 2300 60  0000 C CNN
F 1 "LTC2054CS5" H 6050 2400 60  0000 C CNN
F 2 "" H 6250 1950 60  0001 C CNN
F 3 "" H 6250 1950 60  0001 C CNN
	1    6250 1950
	-1   0    0    -1  
$EndComp
$Comp
L -2V5 #PWR?
U 1 1 5AC48A14
P 6800 1950
F 0 "#PWR?" H 6800 2050 50  0001 C CNN
F 1 "-2V5" H 6800 2100 50  0000 C CNN
F 2 "" H 6800 1950 50  0001 C CNN
F 3 "" H 6800 1950 50  0001 C CNN
	1    6800 1950
	0    1    -1   0   
$EndComp
Wire Wire Line
	6800 1950 6650 1950
$Comp
L +2V5 #PWR?
U 1 1 5AC4A1E7
P 5800 1350
F 0 "#PWR?" H 5800 1200 50  0001 C CNN
F 1 "+2V5" H 5800 1490 50  0000 C CNN
F 2 "" H 5800 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 1350 5800 1850
Wire Wire Line
	5800 1850 5850 1850
$Comp
L C_Small C?
U 1 1 5AC4A698
P 5500 1600
F 0 "C?" H 5510 1670 50  0000 L CNN
F 1 "100 nF" H 5510 1520 50  0000 L CNN
F 2 "" H 5500 1600 50  0001 C CNN
F 3 "" H 5500 1600 50  0001 C CNN
	1    5500 1600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC4ABC5
P 5500 1750
F 0 "#PWR?" H 5500 1500 50  0001 C CNN
F 1 "GND" H 5500 1600 50  0000 C CNN
F 2 "" H 5500 1750 50  0001 C CNN
F 3 "" H 5500 1750 50  0001 C CNN
	1    5500 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 1700 5500 1750
Wire Wire Line
	5800 1450 5500 1450
Wire Wire Line
	5500 1450 5500 1500
Connection ~ 5800 1450
Wire Wire Line
	4200 2050 5850 2050
$Comp
L R_Small R?
U 1 1 5AC4AF48
P 4100 2050
F 0 "R?" H 4130 2070 50  0000 L CNN
F 1 "R_Small" H 4130 2010 50  0000 L CNN
F 2 "" H 4100 2050 50  0001 C CNN
F 3 "" H 4100 2050 50  0001 C CNN
	1    4100 2050
	0    -1   1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5AC4BB24
P 6250 1100
F 0 "R?" H 6280 1120 50  0000 L CNN
F 1 "TBD" H 6280 1060 50  0000 L CNN
F 2 "" H 6250 1100 50  0001 C CNN
F 3 "" H 6250 1100 50  0001 C CNN
	1    6250 1100
	0    1    -1   0   
$EndComp
Wire Wire Line
	6350 1100 7350 1100
Wire Wire Line
	7350 750  7350 1850
Wire Wire Line
	6650 1850 7800 1850
Connection ~ 7350 1850
Wire Wire Line
	6150 1100 5000 1100
Wire Wire Line
	5000 750  5000 2050
Connection ~ 5000 2050
$Comp
L C_Small C?
U 1 1 5AC4C4BD
P 6250 750
F 0 "C?" H 6260 820 50  0000 L CNN
F 1 "DNP" H 6260 670 50  0000 L CNN
F 2 "" H 6250 750 50  0001 C CNN
F 3 "" H 6250 750 50  0001 C CNN
	1    6250 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 750  7350 750 
Connection ~ 7350 1100
Wire Wire Line
	6150 750  5000 750 
Connection ~ 5000 1100
$Comp
L R_Small R?
U 1 1 5AC4CE0C
P 6800 2300
F 0 "R?" H 6830 2320 50  0000 L CNN
F 1 "JMP" H 6830 2260 50  0000 L CNN
F 2 "" H 6800 2300 50  0001 C CNN
F 3 "" H 6800 2300 50  0001 C CNN
	1    6800 2300
	1    0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC4CEED
P 6800 2500
F 0 "#PWR?" H 6800 2250 50  0001 C CNN
F 1 "GND" H 6800 2350 50  0000 C CNN
F 2 "" H 6800 2500 50  0001 C CNN
F 3 "" H 6800 2500 50  0001 C CNN
	1    6800 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 2400 6800 2500
Wire Wire Line
	6650 2050 6800 2050
Wire Wire Line
	6800 2050 6800 2200
$Comp
L C_Small C?
U 1 1 5AC4D4AB
P 4100 1800
F 0 "C?" H 4110 1870 50  0000 L CNN
F 1 "DNP" H 4110 1720 50  0000 L CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1800 3700 1800
Wire Wire Line
	3700 1800 3700 2050
Connection ~ 3700 2050
Wire Wire Line
	4200 1800 4450 1800
Wire Wire Line
	4450 1800 4450 2050
Connection ~ 4450 2050
$EndSCHEMATC
