EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:ad9577
LIBS:conn_sma
LIBS:conn_sma_2gnd
LIBS:tps2065d
LIBS:ltc1983
LIBS:adp7158
LIBS:okr_t3-w12-c
LIBS:vna_control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L CONN_02X23 J?
U 1 1 595A007A
P 8950 2350
F 0 "J?" H 8950 3550 50  0000 C CNN
F 1 "CONN_02X23" V 8950 2350 50  0000 C CNN
F 2 "" H 8950 1500 50  0001 C CNN
F 3 "" H 8950 1500 50  0001 C CNN
	1    8950 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595A012F
P 9300 1250
F 0 "#PWR?" H 9300 1000 50  0001 C CNN
F 1 "GND" H 9300 1100 50  0000 C CNN
F 2 "" H 9300 1250 50  0001 C CNN
F 3 "" H 9300 1250 50  0001 C CNN
	1    9300 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 8700 1350
NoConn ~ 8700 1450
NoConn ~ 8700 1550
NoConn ~ 8700 1650
NoConn ~ 9200 1650
NoConn ~ 9200 1450
NoConn ~ 9200 1350
NoConn ~ 9200 1550
Text Notes 8550 1050 0    60   ~ 0
BeagleBone P9
Text Notes 10250 1100 0    60   ~ 0
BeagleBone P8
$Comp
L GND #PWR?
U 1 1 595A027F
P 8600 1250
F 0 "#PWR?" H 8600 1000 50  0001 C CNN
F 1 "GND" H 8600 1100 50  0000 C CNN
F 2 "" H 8600 1250 50  0001 C CNN
F 3 "" H 8600 1250 50  0001 C CNN
	1    8600 1250
	0    1    1    0   
$EndComp
$Comp
L CONN_02X10 J?
U 1 1 595B1A64
P 2350 3100
F 0 "J?" H 2350 3650 50  0000 C CNN
F 1 "CONN_02X10" V 2350 3100 50  0000 C CNN
F 2 "" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 3100
	1    0    0    -1  
$EndComp
Text Notes 2200 2400 0    60   ~ 0
Demod J401
Text Notes 2200 5300 0    60   ~ 0
RF J401\n
$Comp
L CONN_SMA U?
U 1 1 595B1D3A
P 5950 4200
F 0 "U?" H 5600 4400 60  0000 C CNN
F 1 "CONN_SMA" H 5800 4550 60  0000 C CNN
F 2 "" H 5950 4200 60  0000 C CNN
F 3 "" H 5950 4200 60  0000 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B1ED9
P 5950 4800
F 0 "#PWR?" H 5950 4550 50  0001 C CNN
F 1 "GND" H 5950 4650 50  0000 C CNN
F 2 "" H 5950 4800 50  0001 C CNN
F 3 "" H 5950 4800 50  0001 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
Text HLabel 5200 4200 0    60   Input ~ 0
SYNTH_REF_A
$Comp
L CONN_SMA U?
U 1 1 595B21C1
P 5950 2950
F 0 "U?" H 5600 3150 60  0000 C CNN
F 1 "CONN_SMA" H 5800 3300 60  0000 C CNN
F 2 "" H 5950 2950 60  0000 C CNN
F 3 "" H 5950 2950 60  0000 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B21C7
P 5950 3550
F 0 "#PWR?" H 5950 3300 50  0001 C CNN
F 1 "GND" H 5950 3400 50  0000 C CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
Text HLabel 5200 2950 0    60   Input ~ 0
SYNTH_REF_B
$Comp
L CONN_SMA U?
U 1 1 595B2258
P 5950 5250
F 0 "U?" H 5600 5450 60  0000 C CNN
F 1 "CONN_SMA" H 5800 5600 60  0000 C CNN
F 2 "" H 5950 5250 60  0000 C CNN
F 3 "" H 5950 5250 60  0000 C CNN
	1    5950 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B225E
P 5950 5850
F 0 "#PWR?" H 5950 5600 50  0001 C CNN
F 1 "GND" H 5950 5700 50  0000 C CNN
F 2 "" H 5950 5850 50  0001 C CNN
F 3 "" H 5950 5850 50  0001 C CNN
	1    5950 5850
	1    0    0    -1  
$EndComp
Text HLabel 5200 5250 0    60   Input ~ 0
IF_REF
Text Notes 2150 3800 0    60   ~ 0
Demod J402
$Comp
L CONN_02X10 J?
U 1 1 595B24DF
P 2350 4400
F 0 "J?" H 2350 4950 50  0000 C CNN
F 1 "CONN_02X10" V 2350 4400 50  0000 C CNN
F 2 "" H 2350 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X10 J?
U 1 1 595B2601
P 2350 6050
F 0 "J?" H 2350 6600 50  0000 C CNN
F 1 "CONN_02X10" V 2350 6050 50  0000 C CNN
F 2 "" H 2350 4850 50  0001 C CNN
F 3 "" H 2350 4850 50  0001 C CNN
	1    2350 6050
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X23 J?
U 1 1 595B281F
P 10550 2350
F 0 "J?" H 10550 3550 50  0000 C CNN
F 1 "CONN_02X23" V 10550 2350 50  0000 C CNN
F 2 "" H 10550 1500 50  0001 C CNN
F 3 "" H 10550 1500 50  0001 C CNN
	1    10550 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B2825
P 10900 1250
F 0 "#PWR?" H 10900 1000 50  0001 C CNN
F 1 "GND" H 10900 1100 50  0000 C CNN
F 2 "" H 10900 1250 50  0001 C CNN
F 3 "" H 10900 1250 50  0001 C CNN
	1    10900 1250
	0    -1   -1   0   
$EndComp
NoConn ~ 10300 1350
NoConn ~ 10300 1450
NoConn ~ 10300 1550
NoConn ~ 10300 1650
NoConn ~ 10800 1650
NoConn ~ 10800 1450
NoConn ~ 10800 1350
NoConn ~ 10800 1550
$Comp
L GND #PWR?
U 1 1 595B2834
P 10200 1250
F 0 "#PWR?" H 10200 1000 50  0001 C CNN
F 1 "GND" H 10200 1100 50  0000 C CNN
F 2 "" H 10200 1250 50  0001 C CNN
F 3 "" H 10200 1250 50  0001 C CNN
	1    10200 1250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 595B29C7
P 2750 2900
F 0 "#PWR?" H 2750 2650 50  0001 C CNN
F 1 "GND" H 2750 2750 50  0000 C CNN
F 2 "" H 2750 2900 50  0001 C CNN
F 3 "" H 2750 2900 50  0001 C CNN
	1    2750 2900
	0    -1   -1   0   
$EndComp
Text Label 2700 3250 0    60   ~ 0
AD_DOUTB
Text Label 2700 3350 0    60   ~ 0
AD_PD
Text Label 2700 3450 0    60   ~ 0
AD_PE_A
Text Label 2700 3550 0    60   ~ 0
AD_PE_B
Text Label 2000 3550 2    60   ~ 0
AD_PE_D
Text Label 2000 3450 2    60   ~ 0
AD_PE_C
Text Label 2000 3350 2    60   ~ 0
AD_PC
Text Label 2000 3250 2    60   ~ 0
AD_FS
Text Label 2000 3150 2    60   ~ 0
AD_CLKOUT
Text Label 2000 3050 2    60   ~ 0
AD_SYNCB
Text Label 2000 2950 2    60   ~ 0
AD_DOUTA_A
Text Label 2000 2850 2    60   ~ 0
AD_DOUTA_B
Text Label 2000 2750 2    60   ~ 0
AD_DOUTA_C
Text Label 2000 2650 2    60   ~ 0
AD_DOUTA_D
Text Label 2700 3950 0    60   ~ 0
MIX_EN
Text Label 2700 4050 0    60   ~ 0
ADC_CLK_EN
Text Label 2700 4150 0    60   ~ 0
DEMOD_LMX_MUXout
$Comp
L GND #PWR?
U 1 1 595B3C95
P 2750 4400
F 0 "#PWR?" H 2750 4150 50  0001 C CNN
F 1 "GND" H 2750 4250 50  0000 C CNN
F 2 "" H 2750 4400 50  0001 C CNN
F 3 "" H 2750 4400 50  0001 C CNN
	1    2750 4400
	0    -1   -1   0   
$EndComp
Text Label 2000 3950 2    60   ~ 0
MIX_X2
Text Label 2000 4050 2    60   ~ 0
IF_REF_EN
Text Label 2000 4150 2    60   ~ 0
DEMOD_LMX_SCK
Text Label 2000 4250 2    60   ~ 0
DEMOD_LMX_SDI
Text Label 2000 4350 2    60   ~ 0
DEMOD_LMX_CSB
Text Label 2000 4450 2    60   ~ 0
DEMOD_LMX_CE
$Comp
L GND #PWR?
U 1 1 595B4764
P 1950 4550
F 0 "#PWR?" H 1950 4300 50  0001 C CNN
F 1 "GND" H 1950 4400 50  0000 C CNN
F 2 "" H 1950 4550 50  0001 C CNN
F 3 "" H 1950 4550 50  0001 C CNN
	1    1950 4550
	0    1    1    0   
$EndComp
Text HLabel 2900 5600 2    60   Input ~ 0
AMP_5V
Text Label 2900 5700 0    60   ~ 0
RF_LMX_SDI
Text Label 2900 5800 0    60   ~ 0
RF_LMX_SCK
Text Label 2900 5900 0    60   ~ 0
RF_LMX_MUXOUT
Text Label 2900 6000 0    60   ~ 0
RF_LMX_CE
$Comp
L -5V #PWR?
U 1 1 595B5270
P 2800 6200
F 0 "#PWR?" H 2800 6300 50  0001 C CNN
F 1 "-5V" V 2800 6400 50  0000 C CNN
F 2 "" H 2800 6200 50  0001 C CNN
F 3 "" H 2800 6200 50  0001 C CNN
	1    2800 6200
	0    1    1    0   
$EndComp
Text Label 2900 6300 0    60   ~ 0
RF_PORT_SEL
Text Label 2900 6400 0    60   ~ 0
RF_DAC_CS
Text Label 2900 6500 0    60   ~ 0
RF_SW_2
$Comp
L GND #PWR?
U 1 1 595B58A3
P 1950 5800
F 0 "#PWR?" H 1950 5550 50  0001 C CNN
F 1 "GND" H 1950 5650 50  0000 C CNN
F 2 "" H 1950 5800 50  0001 C CNN
F 3 "" H 1950 5800 50  0001 C CNN
	1    1950 5800
	0    1    1    0   
$EndComp
Text Label 1950 6000 2    60   ~ 0
RF_LMX_CS
Text Label 1950 6300 2    60   ~ 0
RF_DAC_SCK
Text Label 1950 6400 2    60   ~ 0
RF_DAC_SDI
Text Label 1950 6500 2    60   ~ 0
RF_SW_1
Wire Wire Line
	9300 1250 9200 1250
Wire Wire Line
	8600 1250 8700 1250
Wire Wire Line
	5800 4650 5800 4700
Wire Wire Line
	5800 4700 6100 4700
Wire Wire Line
	6100 4700 6100 4650
Wire Wire Line
	6000 4650 6000 4700
Connection ~ 6000 4700
Wire Wire Line
	5900 4650 5900 4700
Connection ~ 5900 4700
Wire Wire Line
	5950 4800 5950 4700
Connection ~ 5950 4700
Wire Wire Line
	5400 4200 5200 4200
Wire Wire Line
	5800 3400 5800 3450
Wire Wire Line
	5800 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3400
Wire Wire Line
	6000 3400 6000 3450
Connection ~ 6000 3450
Wire Wire Line
	5900 3400 5900 3450
Connection ~ 5900 3450
Wire Wire Line
	5950 3550 5950 3450
Connection ~ 5950 3450
Wire Wire Line
	5400 2950 5200 2950
Wire Wire Line
	5800 5700 5800 5750
Wire Wire Line
	5800 5750 6100 5750
Wire Wire Line
	6100 5750 6100 5700
Wire Wire Line
	6000 5700 6000 5750
Connection ~ 6000 5750
Wire Wire Line
	5900 5700 5900 5750
Connection ~ 5900 5750
Wire Wire Line
	5950 5850 5950 5750
Connection ~ 5950 5750
Wire Wire Line
	5400 5250 5200 5250
Wire Wire Line
	2600 2650 2700 2650
Wire Wire Line
	2600 2750 2700 2750
Wire Wire Line
	2700 2850 2600 2850
Wire Wire Line
	2700 2950 2600 2950
Wire Wire Line
	2700 3050 2600 3050
Wire Wire Line
	2700 3150 2600 3150
Wire Wire Line
	2600 3250 2700 3250
Wire Wire Line
	2600 3350 2700 3350
Wire Wire Line
	2600 3450 2700 3450
Wire Wire Line
	2600 3550 2700 3550
Wire Wire Line
	2000 2650 2100 2650
Wire Wire Line
	2000 2750 2100 2750
Wire Wire Line
	2000 2850 2100 2850
Wire Wire Line
	2000 2950 2100 2950
Wire Wire Line
	2000 3050 2100 3050
Wire Wire Line
	2000 3150 2100 3150
Wire Wire Line
	2000 3250 2100 3250
Wire Wire Line
	2000 3350 2100 3350
Wire Wire Line
	2000 3450 2100 3450
Wire Wire Line
	2000 3550 2100 3550
Wire Wire Line
	2600 3950 2700 3950
Wire Wire Line
	2600 4050 2700 4050
Wire Wire Line
	2600 4150 2700 4150
Wire Wire Line
	2600 4250 2700 4250
Wire Wire Line
	2600 4350 2700 4350
Wire Wire Line
	2700 4450 2600 4450
Wire Wire Line
	2700 4550 2600 4550
Wire Wire Line
	2600 4650 2700 4650
Wire Wire Line
	2600 4750 2750 4750
Wire Wire Line
	2700 4850 2600 4850
Wire Wire Line
	2000 3950 2100 3950
Wire Wire Line
	2000 4050 2100 4050
Wire Wire Line
	2000 4150 2100 4150
Wire Wire Line
	2000 4250 2100 4250
Wire Wire Line
	2000 4350 2100 4350
Wire Wire Line
	2000 4450 2100 4450
Wire Wire Line
	1950 4550 2100 4550
Wire Wire Line
	2000 4850 2100 4850
Wire Wire Line
	9200 2550 9300 2550
Wire Wire Line
	9200 2650 9300 2650
Wire Wire Line
	9200 2750 9300 2750
Wire Wire Line
	9200 2850 9300 2850
Wire Wire Line
	9200 2950 9300 2950
Wire Wire Line
	9200 3050 9300 3050
Wire Wire Line
	9200 3150 9300 3150
Wire Wire Line
	9200 3250 9300 3250
Wire Wire Line
	9200 3350 9300 3350
Wire Wire Line
	9200 3450 9300 3450
Wire Wire Line
	2600 5600 2900 5600
Wire Wire Line
	2600 5700 2900 5700
Wire Wire Line
	2600 5800 2900 5800
Wire Wire Line
	2600 5900 2900 5900
Wire Wire Line
	2600 6000 2900 6000
Wire Wire Line
	2600 6200 2800 6200
Wire Wire Line
	2600 6300 2900 6300
Wire Wire Line
	2600 6400 2900 6400
Wire Wire Line
	2600 6500 2900 6500
Wire Wire Line
	2000 5600 2100 5600
Wire Wire Line
	1950 5700 2100 5700
Wire Wire Line
	1950 5800 2100 5800
Wire Wire Line
	1950 5900 2100 5900
Wire Wire Line
	1950 6000 2100 6000
Wire Wire Line
	1950 6100 2100 6100
Wire Wire Line
	1950 6200 2100 6200
Wire Wire Line
	1950 6300 2100 6300
Wire Wire Line
	1950 6400 2100 6400
Wire Wire Line
	1950 6500 2100 6500
Wire Wire Line
	8600 2550 8700 2550
Wire Wire Line
	8600 2650 8700 2650
Wire Wire Line
	8600 2750 8700 2750
Wire Wire Line
	8600 2850 8700 2850
Wire Wire Line
	8600 2950 8700 2950
Wire Wire Line
	8600 3050 8700 3050
Wire Wire Line
	8600 3150 8700 3150
Wire Wire Line
	8600 3250 8700 3250
Wire Wire Line
	8600 3350 8700 3350
Wire Wire Line
	8600 3450 8700 3450
Wire Wire Line
	8600 2350 8700 2350
Wire Wire Line
	8600 2450 8700 2450
Wire Wire Line
	8600 2050 8700 2050
Wire Wire Line
	8600 2150 8700 2150
Wire Wire Line
	8600 2250 8700 2250
Wire Wire Line
	8600 1750 8700 1750
Wire Wire Line
	8600 1850 8700 1850
Wire Wire Line
	8600 1950 8700 1950
Wire Wire Line
	9200 2350 9300 2350
Wire Wire Line
	9200 2450 9300 2450
Wire Wire Line
	9200 2050 9300 2050
Wire Wire Line
	9200 2150 9300 2150
Wire Wire Line
	9200 2250 9300 2250
Wire Wire Line
	9200 1750 9300 1750
Wire Wire Line
	9200 1850 9300 1850
Wire Wire Line
	9200 1950 9300 1950
Wire Wire Line
	10900 1250 10800 1250
Wire Wire Line
	10200 1250 10300 1250
Wire Wire Line
	10800 2550 10900 2550
Wire Wire Line
	10800 2650 10900 2650
Wire Wire Line
	10800 2750 10900 2750
Wire Wire Line
	10800 2850 10900 2850
Wire Wire Line
	10800 2950 10900 2950
Wire Wire Line
	10800 3050 10900 3050
Wire Wire Line
	10800 3150 10900 3150
Wire Wire Line
	10800 3250 10900 3250
Wire Wire Line
	10800 3350 10900 3350
Wire Wire Line
	10800 3450 10900 3450
Wire Wire Line
	10200 2550 10300 2550
Wire Wire Line
	10200 2650 10300 2650
Wire Wire Line
	10200 2750 10300 2750
Wire Wire Line
	10200 2850 10300 2850
Wire Wire Line
	10200 2950 10300 2950
Wire Wire Line
	10200 3050 10300 3050
Wire Wire Line
	10200 3150 10300 3150
Wire Wire Line
	10200 3250 10300 3250
Wire Wire Line
	10200 3350 10300 3350
Wire Wire Line
	10200 3450 10300 3450
Wire Wire Line
	10200 2350 10300 2350
Wire Wire Line
	10200 2450 10300 2450
Wire Wire Line
	10200 2050 10300 2050
Wire Wire Line
	10200 2150 10300 2150
Wire Wire Line
	10200 2250 10300 2250
Wire Wire Line
	10200 1750 10300 1750
Wire Wire Line
	10200 1850 10300 1850
Wire Wire Line
	10200 1950 10300 1950
Wire Wire Line
	10800 2350 10900 2350
Wire Wire Line
	10800 2450 10900 2450
Wire Wire Line
	10800 2050 10900 2050
Wire Wire Line
	10800 2150 10900 2150
Wire Wire Line
	10800 2250 10900 2250
Wire Wire Line
	10800 1750 10900 1750
Wire Wire Line
	10800 1850 10900 1850
Wire Wire Line
	10800 1950 10900 1950
Connection ~ 2700 2750
Connection ~ 2700 2850
Connection ~ 2700 2950
Connection ~ 2700 2900
Wire Wire Line
	2700 2900 2750 2900
Connection ~ 2700 3050
Wire Wire Line
	2700 2650 2700 3150
Wire Wire Line
	2700 4250 2700 4550
Connection ~ 2700 4350
Connection ~ 2700 4450
Wire Wire Line
	2750 4400 2700 4400
Connection ~ 2700 4400
Wire Wire Line
	2700 4650 2700 4950
Connection ~ 2700 4750
Wire Wire Line
	2000 5600 2000 5350
Wire Wire Line
	2000 5350 2750 5350
Wire Wire Line
	2750 5350 2750 5600
Connection ~ 2750 5600
Wire Wire Line
	1950 6100 1950 6200
Wire Wire Line
	1950 6150 1900 6150
Connection ~ 1950 6150
Wire Wire Line
	1950 5700 1950 5900
Connection ~ 1950 5800
$Comp
L LED D?
U 1 1 595B7A63
P 9750 5950
F 0 "D?" H 9750 6050 50  0000 C CNN
F 1 "LED" H 9750 5850 50  0000 C CNN
F 2 "" H 9750 5950 50  0001 C CNN
F 3 "" H 9750 5950 50  0001 C CNN
	1    9750 5950
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 595B7ADF
P 10100 5950
F 0 "D?" H 10100 6050 50  0000 C CNN
F 1 "LED" H 10100 5850 50  0000 C CNN
F 2 "" H 10100 5950 50  0001 C CNN
F 3 "" H 10100 5950 50  0001 C CNN
	1    10100 5950
	0    1    1    0   
$EndComp
$Comp
L -5V #PWR?
U 1 1 595B7B2D
P 10100 5400
F 0 "#PWR?" H 10100 5500 50  0001 C CNN
F 1 "-5V" V 10100 5600 50  0000 C CNN
F 2 "" H 10100 5400 50  0001 C CNN
F 3 "" H 10100 5400 50  0001 C CNN
	1    10100 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B7B5C
P 10100 6150
F 0 "#PWR?" H 10100 5900 50  0001 C CNN
F 1 "GND" H 10100 6000 50  0000 C CNN
F 2 "" H 10100 6150 50  0001 C CNN
F 3 "" H 10100 6150 50  0001 C CNN
	1    10100 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B7B8B
P 9750 6150
F 0 "#PWR?" H 9750 5900 50  0001 C CNN
F 1 "GND" H 9750 6000 50  0000 C CNN
F 2 "" H 9750 6150 50  0001 C CNN
F 3 "" H 9750 6150 50  0001 C CNN
	1    9750 6150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 595B7C0F
P 9750 5600
F 0 "R?" H 9780 5620 50  0000 L CNN
F 1 "1k" H 9780 5560 50  0000 L CNN
F 2 "" H 9750 5600 50  0001 C CNN
F 3 "" H 9750 5600 50  0001 C CNN
	1    9750 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 595B7CC6
P 10100 5600
F 0 "R?" H 10130 5620 50  0000 L CNN
F 1 "1k" H 10130 5560 50  0000 L CNN
F 2 "" H 10100 5600 50  0001 C CNN
F 3 "" H 10100 5600 50  0001 C CNN
	1    10100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5700 10100 5800
Wire Wire Line
	9750 5700 9750 5800
Wire Wire Line
	9750 5400 9750 5500
Wire Wire Line
	10100 5400 10100 5500
$Comp
L CONN_SMA U?
U 1 1 595B2529
P 6000 6500
F 0 "U?" H 5650 6700 60  0000 C CNN
F 1 "CONN_SMA" H 5850 6850 60  0000 C CNN
F 2 "" H 6000 6500 60  0000 C CNN
F 3 "" H 6000 6500 60  0000 C CNN
	1    6000 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595B252F
P 6000 7100
F 0 "#PWR?" H 6000 6850 50  0001 C CNN
F 1 "GND" H 6000 6950 50  0000 C CNN
F 2 "" H 6000 7100 50  0001 C CNN
F 3 "" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
Text HLabel 5250 6500 0    60   Input ~ 0
ADC_CLK
Wire Wire Line
	5850 6950 5850 7000
Wire Wire Line
	5850 7000 6150 7000
Wire Wire Line
	6150 7000 6150 6950
Wire Wire Line
	6050 6950 6050 7000
Connection ~ 6050 7000
Wire Wire Line
	5950 6950 5950 7000
Connection ~ 5950 7000
Wire Wire Line
	6000 7100 6000 7000
Connection ~ 6000 7000
Wire Wire Line
	5450 6500 5250 6500
Text HLabel 2750 4750 2    60   Input ~ 0
3V3_DEMOD
Wire Wire Line
	2100 4750 2000 4750
Wire Wire Line
	2700 4950 2000 4950
Connection ~ 2700 4850
Connection ~ 2000 4850
Text HLabel 2900 6100 2    60   Input ~ 0
3V3_RF_SENSE
Text Label 9750 5400 1    60   ~ 0
3V3_RF
Text HLabel 1900 6150 0    60   Input ~ 0
3V3_RF
Wire Wire Line
	2900 6100 2600 6100
Wire Wire Line
	2000 4950 2000 4750
Text HLabel 1900 4650 0    60   Input ~ 0
3V3_DEMOD_SENSE
Wire Wire Line
	1900 4650 2100 4650
$Comp
L CONN_01X02 J?
U 1 1 595CEFA7
P 8100 4900
F 0 "J?" H 8100 5050 50  0000 C CNN
F 1 "CONN_01X02" V 8200 4900 50  0000 C CNN
F 2 "" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0001 C CNN
	1    8100 4900
	0    -1   -1   0   
$EndComp
$Comp
L Polyfuse F?
U 1 1 595CF060
P 8350 5300
F 0 "F?" V 8250 5300 50  0000 C CNN
F 1 "PTC/MF-NSMF200-2" V 8250 5850 50  0000 C CNN
F 2 "" H 8400 5100 50  0001 L CNN
F 3 "" H 8350 5300 50  0001 C CNN
	1    8350 5300
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 595CF1E4
P 8550 6150
F 0 "#PWR?" H 8550 6000 50  0001 C CNN
F 1 "+5V" H 8550 6290 50  0000 C CNN
F 2 "" H 8550 6150 50  0001 C CNN
F 3 "" H 8550 6150 50  0001 C CNN
	1    8550 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 5100 8150 5300
Wire Wire Line
	8150 5300 8200 5300
$Comp
L GND #PWR?
U 1 1 595CF412
P 8050 6150
F 0 "#PWR?" H 8050 5900 50  0001 C CNN
F 1 "GND" H 8050 6000 50  0000 C CNN
F 2 "" H 8050 6150 50  0001 C CNN
F 3 "" H 8050 6150 50  0001 C CNN
	1    8050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5100 8050 6150
$Comp
L Q_PMOS_GSD Q?
U 1 1 595CF794
P 8450 5850
F 0 "Q?" H 8650 5900 50  0000 L CNN
F 1 "DMG2305UX" H 8650 5800 50  0000 L CNN
F 2 "" H 8650 5950 50  0001 C CNN
F 3 "" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5300 8550 5650
Wire Wire Line
	8250 5850 8050 5850
Connection ~ 8050 5850
Wire Wire Line
	8500 5300 8550 5300
Wire Wire Line
	8550 6150 8550 6050
Text Notes 7950 4650 0    60   ~ 0
5V input
Text HLabel 2850 1250 0    60   Input ~ 0
3V3_RF_EN
Text HLabel 2850 1350 0    60   Input ~ 0
3V3_DEMOD_EN
Text HLabel 2850 1450 0    60   Input ~ 0
RF_AMP_EN
Text HLabel 2850 1550 0    60   Input ~ 0
-5V_EN
Text HLabel 5200 1650 0    60   Input ~ 0
PLL_REF_IN
$Comp
L CONN_SMA U?
U 1 1 595D5C68
P 5950 1650
F 0 "U?" H 5600 1850 60  0000 C CNN
F 1 "CONN_SMA" H 5800 2000 60  0000 C CNN
F 2 "" H 5950 1650 60  0000 C CNN
F 3 "" H 5950 1650 60  0000 C CNN
	1    5950 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 595D5C6E
P 5950 2250
F 0 "#PWR?" H 5950 2000 50  0001 C CNN
F 1 "GND" H 5950 2100 50  0000 C CNN
F 2 "" H 5950 2250 50  0001 C CNN
F 3 "" H 5950 2250 50  0001 C CNN
	1    5950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2100 5800 2150
Wire Wire Line
	5800 2150 6100 2150
Wire Wire Line
	6100 2150 6100 2100
Wire Wire Line
	6000 2100 6000 2150
Connection ~ 6000 2150
Wire Wire Line
	5900 2100 5900 2150
Connection ~ 5900 2150
Wire Wire Line
	5950 2250 5950 2150
Connection ~ 5950 2150
Wire Wire Line
	5200 1650 5400 1650
Text HLabel 2800 850  0    60   Input ~ 0
SCL
Text HLabel 2800 750  0    60   Input ~ 0
SDA
Text HLabel 2800 950  0    60   Input ~ 0
PLL_REF_SEL
Text Notes 7100 2850 0    60   ~ 0
TODO: add sense jumper
Text HLabel 2800 1150 0    60   Input ~ 0
3V3_PLL_EN
$EndSCHEMATC