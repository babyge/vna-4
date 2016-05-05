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
LIBS:txco
LIBS:tcm-63ax+
LIBS:scbd-16-63
LIBS:rf_crossbar
LIBS:pwr_splitter
LIBS:pe42521
LIBS:pcm2900
LIBS:mounting_hole
LIBS:mounting_box
LIBS:mga-82563
LIBS:maam-011101
LIBS:ltc5549
LIBS:ltc1983
LIBS:ltc1566-1
LIBS:lt1567
LIBS:lmx2592
LIBS:lmk61e2
LIBS:hmc629
LIBS:hmc525
LIBS:hmc424
LIBS:hmc321
LIBS:hmc311sc70
LIBS:conn_sma
LIBS:cmm0511-qt-0g0t
LIBS:cat102
LIBS:boosterpack_ti
LIBS:adm7150
LIBS:adl5902
LIBS:adl5380
LIBS:adf4355-3
LIBS:74xx1g14
LIBS:74hc04
LIBS:74hc04_full
LIBS:frequency_synth-cache
LIBS:boosterpack-cache
LIBS:refclk_breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
L boosterpack_ti U?
U 1 1 572E0ED9
P 1950 2850
F 0 "U?" H 1700 4450 60  0000 C CNN
F 1 "boosterpack_ti" H 1950 4250 60  0000 C CNN
F 2 "vna_footprints:ti_booster40" H 1700 4450 60  0001 C CNN
F 3 "" H 1700 4450 60  0000 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 572E0EDA
P 2650 2950
F 0 "#PWR?" H 2650 2700 50  0001 C CNN
F 1 "GND" H 2650 2800 50  0000 C CNN
F 2 "" H 2650 2950 50  0000 C CNN
F 3 "" H 2650 2950 50  0000 C CNN
	1    2650 2950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 572E0EDB
P 2700 1850
F 0 "#PWR?" H 2700 1600 50  0001 C CNN
F 1 "GND" H 2700 1700 50  0000 C CNN
F 2 "" H 2700 1850 50  0000 C CNN
F 3 "" H 2700 1850 50  0000 C CNN
	1    2700 1850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 572E0EDE
P 6050 1150
F 0 "P?" H 6050 1300 50  0000 C CNN
F 1 "CONN_01X02" V 6150 1150 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 6050 1150 50  0001 C CNN
F 3 "" H 6050 1150 50  0000 C CNN
	1    6050 1150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 572E0EDF
P 6000 1450
F 0 "#PWR?" H 6000 1200 50  0001 C CNN
F 1 "GND" H 6000 1300 50  0000 C CNN
F 2 "" H 6000 1450 50  0000 C CNN
F 3 "" H 6000 1450 50  0000 C CNN
	1    6000 1450
	1    0    0    -1  
$EndComp
Text Label 8650 850  0    60   ~ 0
RFSW_0
Text Label 10350 1050 0    60   ~ 0
FILTA_0
Text Label 10350 950  0    60   ~ 0
FILTB_0
Text Label 10350 850  0    60   ~ 0
FILTC_0
$Comp
L GND #PWR?
U 1 1 572E0EEC
P 9800 1200
F 0 "#PWR?" H 9800 950 50  0001 C CNN
F 1 "GND" H 9800 1050 50  0000 C CNN
F 2 "" H 9800 1200 50  0000 C CNN
F 3 "" H 9800 1200 50  0000 C CNN
	1    9800 1200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 572E0EEE
P 9850 1300
F 0 "#PWR?" H 9850 1150 50  0001 C CNN
F 1 "+5V" H 9850 1440 50  0000 C CNN
F 2 "" H 9850 1300 50  0000 C CNN
F 3 "" H 9850 1300 50  0000 C CNN
	1    9850 1300
	0    1    1    0   
$EndComp
Text Notes 10000 650  0    60   ~ 0
filter bank
Text Notes 8250 650  0    60   ~ 0
rf switch control
Text Label 9900 2200 0    60   ~ 0
ADF_CE_0
Text Label 9900 2100 0    60   ~ 0
ADF_LE_0
Text Label 9900 2000 0    60   ~ 0
ADF_DATA_0
Text Label 9900 1900 0    60   ~ 0
ADF_CLK_0
Text Label 9900 1800 0    60   ~ 0
ADF_LOCK_0
Text Label 1200 2150 2    60   ~ 0
ADF_CE_0
Text Label 1200 2250 2    60   ~ 0
ADF_LE_0
Text Label 2950 3450 0    60   ~ 0
ADF_DATA_0
Text Label 950  2350 2    60   ~ 0
ADF_CLK_0
Text Label 950  2450 2    60   ~ 0
ADF_LOCK_0
Text Label 3000 2650 0    60   ~ 0
RFSW_2
Text Label 3000 2550 0    60   ~ 0
RFSW_1
Text Label 3000 2450 0    60   ~ 0
RFSW_0
Text Label 1250 3850 2    60   ~ 0
FILTA_0
Text Label 1250 3750 2    60   ~ 0
FILTB_0
Text Label 1250 3650 2    60   ~ 0
FILTC_0
$Comp
L LED D?
U 1 1 572E0F0F
P 5300 1100
F 0 "D?" H 5300 1200 50  0000 C CNN
F 1 "LED" H 5300 1000 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5300 1100 50  0001 C CNN
F 3 "" H 5300 1100 50  0000 C CNN
	1    5300 1100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 572E0F10
P 5300 1500
F 0 "R?" H 5330 1520 50  0000 L CNN
F 1 "10k" H 5330 1460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5300 1500 50  0001 C CNN
F 3 "" H 5300 1500 50  0000 C CNN
	1    5300 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 572E0F11
P 5300 800
F 0 "#PWR?" H 5300 650 50  0001 C CNN
F 1 "VCC" H 5300 950 50  0000 C CNN
F 2 "" H 5300 800 50  0000 C CNN
F 3 "" H 5300 800 50  0000 C CNN
	1    5300 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 572E0F12
P 5300 1700
F 0 "#PWR?" H 5300 1450 50  0001 C CNN
F 1 "GND" H 5300 1550 50  0000 C CNN
F 2 "" H 5300 1700 50  0000 C CNN
F 3 "" H 5300 1700 50  0000 C CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
Text Label 3000 1950 0    60   ~ 0
POWERDET
$Comp
L CONN_SMA U?
U 1 1 572E0F13
P 4700 4700
F 0 "U?" H 4350 4900 60  0000 C CNN
F 1 "CONN_SMA" H 4550 5050 60  0000 C CNN
F 2 "vna_footprints:732512200_SMA" H 4700 4700 60  0001 C CNN
F 3 "" H 4700 4700 60  0000 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 572E0F14
P 4550 5300
F 0 "#PWR?" H 4550 5050 50  0001 C CNN
F 1 "GND" H 4550 5150 50  0000 C CNN
F 2 "" H 4550 5300 50  0000 C CNN
F 3 "" H 4550 5300 50  0000 C CNN
	1    4550 5300
	1    0    0    -1  
$EndComp
Text HLabel 3400 4700 0    60   Input ~ 0
SYNTH_OUT
Connection ~ 4750 5250
Wire Wire Line
	4750 5150 4750 5250
Connection ~ 4650 5250
Wire Wire Line
	4650 5150 4650 5250
Connection ~ 4550 5250
Wire Wire Line
	4550 5250 4850 5250
Wire Wire Line
	4850 5250 4850 5150
Wire Wire Line
	4550 5150 4550 5300
Wire Wire Line
	3400 4700 4150 4700
Wire Wire Line
	2550 1950 3000 1950
Wire Wire Line
	2650 2950 2550 2950
Wire Wire Line
	950  2450 1350 2450
Wire Wire Line
	1200 2250 1350 2250
Wire Wire Line
	1200 2150 1350 2150
Wire Wire Line
	950  2350 1350 2350
Wire Wire Line
	5300 1700 5300 1600
Wire Wire Line
	5300 1300 5300 1400
Wire Wire Line
	5300 800  5300 900 
Wire Wire Line
	2550 2650 3000 2650
Wire Wire Line
	2550 2550 3000 2550
Wire Wire Line
	3000 2450 2550 2450
Wire Wire Line
	1250 3350 1350 3350
Wire Wire Line
	1250 3450 1350 3450
Wire Wire Line
	1250 3850 1350 3850
Wire Wire Line
	1250 3750 1350 3750
Wire Wire Line
	1250 3650 1350 3650
Wire Wire Line
	1250 3550 1350 3550
Wire Wire Line
	9600 1800 9900 1800
Wire Wire Line
	9600 1900 9900 1900
Wire Wire Line
	9600 2000 9900 2000
Wire Wire Line
	9600 2100 9900 2100
Wire Wire Line
	9600 2200 9900 2200
Wire Wire Line
	9550 1200 9800 1200
Wire Wire Line
	9550 850  10350 850 
Wire Wire Line
	9550 950  10350 950 
Wire Wire Line
	9550 1050 10350 1050
Wire Wire Line
	7550 850  8650 850 
Wire Wire Line
	6500 1100 6500 1450
Wire Wire Line
	6500 1450 6100 1450
Wire Wire Line
	6100 1450 6100 1350
Wire Wire Line
	6000 1350 6000 1450
Wire Wire Line
	1250 1750 1350 1750
Wire Wire Line
	2750 1750 2550 1750
Wire Wire Line
	2550 1850 2700 1850
Text HLabel 7550 850  0    60   Input ~ 0
RFSW
Text HLabel 9550 850  0    60   Input ~ 0
FILTC
Text HLabel 9550 950  0    60   Input ~ 0
FILTB
Text HLabel 9550 1050 0    60   Input ~ 0
FILTA
Text HLabel 9550 1200 0    60   Input ~ 0
GND
Text HLabel 9550 1300 0    60   Input ~ 0
5V
Wire Wire Line
	9850 1300 9550 1300
Text Label 10350 1550 0    60   ~ 0
POWERDET
Text HLabel 9550 1550 0    60   Input ~ 0
POWERDET
Wire Wire Line
	10350 1550 9550 1550
Text HLabel 9600 1800 0    60   Input ~ 0
LMX_LOCK
Text HLabel 9600 1900 0    60   Input ~ 0
LMX_CLK
Text HLabel 9600 2000 0    60   Input ~ 0
LMX_DAT
Text HLabel 9600 2100 0    60   Input ~ 0
LMX_LE
Text HLabel 9600 2200 0    60   Input ~ 0
LMX_CE
Text Label 1100 2550 2    60   ~ 0
REF_SCL
Text Label 1100 2650 2    60   ~ 0
REF_SDA
Text Label 1100 2950 2    60   ~ 0
REF_OE
Wire Wire Line
	1100 2650 1350 2650
Wire Wire Line
	1100 2550 1350 2550
Wire Wire Line
	1100 2950 1350 2950
Wire Wire Line
	2550 3450 2950 3450
Text Label 10250 2400 0    60   ~ 0
REF_SCL
Text Label 10250 2500 0    60   ~ 0
REF_SDA
Text Label 10250 2600 0    60   ~ 0
REF_OE
Text HLabel 9600 2400 0    60   Input ~ 0
REF_SCL
Text HLabel 9600 2500 0    60   Input ~ 0
REF_SDA
Text HLabel 9600 2600 0    60   Input ~ 0
REF_CE
Wire Wire Line
	10250 2400 9600 2400
Wire Wire Line
	9600 2500 10250 2500
Wire Wire Line
	10250 2600 9600 2600
Text HLabel 9550 1400 0    60   Input ~ 0
3V3
$Comp
L +3V3 #PWR?
U 1 1 5730B3CA
P 9850 1400
F 0 "#PWR?" H 9850 1250 50  0001 C CNN
F 1 "+3V3" H 9850 1540 50  0000 C CNN
F 2 "" H 9850 1400 50  0000 C CNN
F 3 "" H 9850 1400 50  0000 C CNN
	1    9850 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 1400 9550 1400
Wire Wire Line
	1350 3050 1250 3050
Wire Wire Line
	1350 3150 1250 3150
Wire Wire Line
	1350 3250 1250 3250
Text Label 1250 3050 2    60   ~ 0
ATT_1
Text Label 1250 3150 2    60   ~ 0
ATT_2
Text Label 1250 3250 2    60   ~ 0
ATT_3
Text Label 1250 3350 2    60   ~ 0
ATT_4
Text Label 1250 3450 2    60   ~ 0
ATT_5
Text Label 1250 3550 2    60   ~ 0
ATT_6
Text Label 10300 2950 0    60   ~ 0
ATT_1
Text Label 10300 3050 0    60   ~ 0
ATT_2
Text Label 10300 3150 0    60   ~ 0
ATT_3
Text Label 10300 3250 0    60   ~ 0
ATT_4
Text Label 10300 3350 0    60   ~ 0
ATT_5
Text Label 10300 3450 0    60   ~ 0
ATT_6
Text HLabel 9750 2950 0    60   Input ~ 0
ATT_1
Text HLabel 9750 3050 0    60   Input ~ 0
ATT_2
Text HLabel 9750 3150 0    60   Input ~ 0
ATT_3
Text HLabel 9750 3250 0    60   Input ~ 0
ATT_4
Text HLabel 9750 3350 0    60   Input ~ 0
ATT_5
Wire Wire Line
	10300 2950 9750 2950
Wire Wire Line
	9750 3050 10300 3050
Wire Wire Line
	10300 3150 9750 3150
Wire Wire Line
	9750 3250 10300 3250
Wire Wire Line
	10300 3350 9750 3350
Text HLabel 9750 3450 0    60   Input ~ 0
ATT_6
Wire Wire Line
	9750 3450 10300 3450
NoConn ~ 2750 1750
NoConn ~ 1250 1750
$Comp
L +3V3 #PWR?
U 1 1 573281E3
P 6500 1100
F 0 "#PWR?" H 6500 950 50  0001 C CNN
F 1 "+3V3" H 6500 1240 50  0000 C CNN
F 2 "" H 6500 1100 50  0000 C CNN
F 3 "" H 6500 1100 50  0000 C CNN
	1    6500 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 573282FD
P 6100 2000
F 0 "P?" H 6100 2150 50  0000 C CNN
F 1 "CONN_01X02" V 6200 2000 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 6100 2000 50  0001 C CNN
F 3 "" H 6100 2000 50  0000 C CNN
	1    6100 2000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57328303
P 6050 2300
F 0 "#PWR?" H 6050 2050 50  0001 C CNN
F 1 "GND" H 6050 2150 50  0000 C CNN
F 2 "" H 6050 2300 50  0000 C CNN
F 3 "" H 6050 2300 50  0000 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1950 6550 2300
Wire Wire Line
	6550 2300 6150 2300
Wire Wire Line
	6150 2300 6150 2200
Wire Wire Line
	6050 2200 6050 2300
$Comp
L +5V #PWR?
U 1 1 57328345
P 6550 1950
F 0 "#PWR?" H 6550 1800 50  0001 C CNN
F 1 "+5V" H 6550 2090 50  0000 C CNN
F 2 "" H 6550 1950 50  0000 C CNN
F 3 "" H 6550 1950 50  0000 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
