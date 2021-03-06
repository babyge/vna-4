EESchema Schematic File Version 4
LIBS:vna_r1-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 10
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
L vna_r1-rescue:OKR-T_3-W12-C U904
U 1 1 595CA703
P 8700 7150
F 0 "U904" H 8150 7450 60  0000 C CNN
F 1 "OKR-T/3-W12-C" H 8500 7550 60  0000 C CNN
F 2 "vna_footprints:OKRT3_C72" H 8700 7150 60  0001 C CNN
F 3 "" H 8700 7150 60  0001 C CNN
	1    8700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:VPP #PWR618
U 1 1 595CA82E
P 9550 7050
F 0 "#PWR618" H 9550 6900 50  0001 C CNN
F 1 "VPP" H 9550 7200 50  0000 C CNN
F 2 "" H 9550 7050 50  0001 C CNN
F 3 "" H 9550 7050 50  0001 C CNN
	1    9550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 7150 9550 7050
$Comp
L power:GND #PWR617
U 1 1 595CA9A5
P 8700 8000
F 0 "#PWR617" H 8700 7750 50  0001 C CNN
F 1 "GND" H 8700 7850 50  0000 C CNN
F 2 "" H 8700 8000 50  0001 C CNN
F 3 "" H 8700 8000 50  0001 C CNN
	1    8700 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 7650 8700 8000
$Comp
L conn:CONN_01X02 J901
U 1 1 595CACDB
P 15350 7500
F 0 "J901" H 15350 7650 50  0000 C CNN
F 1 "CONN_01X02" V 15450 7500 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 15350 7500 50  0001 C CNN
F 3 "" H 15350 7500 50  0001 C CNN
	1    15350 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR619
U 1 1 595CAE17
P 15300 7900
F 0 "#PWR619" H 15300 7650 50  0001 C CNN
F 1 "GND" H 15300 7750 50  0000 C CNN
F 2 "" H 15300 7900 50  0001 C CNN
F 3 "" H 15300 7900 50  0001 C CNN
	1    15300 7900
	1    0    0    -1  
$EndComp
$Comp
L power:VPP #PWR620
U 1 1 595CAF0A
P 15400 7900
F 0 "#PWR620" H 15400 7750 50  0001 C CNN
F 1 "VPP" H 15400 8050 50  0000 C CNN
F 2 "" H 15400 7900 50  0001 C CNN
F 3 "" H 15400 7900 50  0001 C CNN
	1    15400 7900
	-1   0    0    1   
$EndComp
Wire Wire Line
	15400 7700 15400 7900
Wire Wire Line
	15300 7900 15300 7700
$Comp
L power:+5V #PWR615
U 1 1 595CB86B
P 7600 7100
F 0 "#PWR615" H 7600 6950 50  0001 C CNN
F 1 "+5V" H 7600 7240 50  0000 C CNN
F 2 "" H 7600 7100 50  0001 C CNN
F 3 "" H 7600 7100 50  0001 C CNN
	1    7600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 7100 7600 7500
Wire Wire Line
	7600 7150 8200 7150
$Comp
L device:R_Small R903
U 1 1 595CC76D
P 8800 7800
F 0 "R903" H 8830 7820 50  0000 L CNN
F 1 "390" H 8830 7760 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8800 7800 50  0001 C CNN
F 3 "" H 8800 7800 50  0001 C CNN
	1    8800 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 7650 8800 7700
Wire Wire Line
	8700 7950 8800 7950
Wire Wire Line
	8800 7950 8800 7900
Connection ~ 8700 7950
Text Notes 8100 8400 0    60   ~ 0
Rtrim = 1182 / (Vout - .591)\nVout = 3.6V
$Comp
L device:R_Small R904
U 1 1 595CD435
P 9400 7150
F 0 "R904" H 9430 7170 50  0000 L CNN
F 1 "JMP" H 9430 7110 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 9400 7150 50  0001 C CNN
F 3 "" H 9400 7150 50  0001 C CNN
	1    9400 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 7150 9300 7150
Wire Wire Line
	9500 7150 9550 7150
$Comp
L device:C_Small C917
U 1 1 595CD888
P 7600 7600
F 0 "C917" H 7610 7670 50  0000 L CNN
F 1 "10 uF" H 7610 7520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7600 7600 50  0001 C CNN
F 3 "" H 7600 7600 50  0001 C CNN
	1    7600 7600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR616
U 1 1 595CDAB9
P 7600 8000
F 0 "#PWR616" H 7600 7750 50  0001 C CNN
F 1 "GND" H 7600 7850 50  0000 C CNN
F 2 "" H 7600 8000 50  0001 C CNN
F 3 "" H 7600 8000 50  0001 C CNN
	1    7600 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 7700 7600 8000
Connection ~ 7600 7150
NoConn ~ 8600 7650
$Comp
L adp7158:ADP7158 U903
U 1 1 595D24BE
P 3900 7850
F 0 "U903" H 3450 8300 60  0000 C CNN
F 1 "ADP7158" H 3550 8400 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 3900 7850 60  0001 C CNN
F 3 "" H 3900 7850 60  0001 C CNN
	1    3900 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR606
U 1 1 595D24C4
P 3900 8600
F 0 "#PWR606" H 3900 8350 50  0001 C CNN
F 1 "GND" H 3900 8450 50  0000 C CNN
F 2 "" H 3900 8600 50  0001 C CNN
F 3 "" H 3900 8600 50  0001 C CNN
	1    3900 8600
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C909
U 1 1 595D24CA
P 4750 8200
F 0 "C909" H 4760 8270 50  0000 L CNN
F 1 "1 uF" H 4760 8120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4750 8200 50  0001 C CNN
F 3 "" H 4750 8200 50  0001 C CNN
	1    4750 8200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR607
U 1 1 595D24D0
P 4750 8600
F 0 "#PWR607" H 4750 8350 50  0001 C CNN
F 1 "GND" H 4750 8450 50  0000 C CNN
F 2 "" H 4750 8600 50  0001 C CNN
F 3 "" H 4750 8600 50  0001 C CNN
	1    4750 8600
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C912
U 1 1 595D24D6
P 5150 8200
F 0 "C912" H 5160 8270 50  0000 L CNN
F 1 "1 uF" H 5160 8120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5150 8200 50  0001 C CNN
F 3 "" H 5150 8200 50  0001 C CNN
	1    5150 8200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR608
U 1 1 595D24DC
P 5150 8600
F 0 "#PWR608" H 5150 8350 50  0001 C CNN
F 1 "GND" H 5150 8450 50  0000 C CNN
F 2 "" H 5150 8600 50  0001 C CNN
F 3 "" H 5150 8600 50  0001 C CNN
	1    5150 8600
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C915
U 1 1 595D24E2
P 5450 8200
F 0 "C915" H 5460 8270 50  0000 L CNN
F 1 "10 uF" H 5460 8120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5450 8200 50  0001 C CNN
F 3 "" H 5450 8200 50  0001 C CNN
	1    5450 8200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR612
U 1 1 595D24E8
P 5450 8600
F 0 "#PWR612" H 5450 8350 50  0001 C CNN
F 1 "GND" H 5450 8450 50  0000 C CNN
F 2 "" H 5450 8600 50  0001 C CNN
F 3 "" H 5450 8600 50  0001 C CNN
	1    5450 8600
	1    0    0    -1  
$EndComp
$Comp
L power:VPP #PWR611
U 1 1 595D24EE
P 5450 7650
F 0 "#PWR611" H 5450 7500 50  0001 C CNN
F 1 "VPP" H 5450 7800 50  0000 C CNN
F 2 "" H 5450 7650 50  0001 C CNN
F 3 "" H 5450 7650 50  0001 C CNN
	1    5450 7650
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C901
U 1 1 595D24F4
P 1800 7950
F 0 "C901" H 1810 8020 50  0000 L CNN
F 1 "10 uF" H 1810 7870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1800 7950 50  0001 C CNN
F 3 "" H 1800 7950 50  0001 C CNN
	1    1800 7950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR602
U 1 1 595D24FA
P 1800 8300
F 0 "#PWR602" H 1800 8050 50  0001 C CNN
F 1 "GND" H 1800 8150 50  0000 C CNN
F 2 "" H 1800 8300 50  0001 C CNN
F 3 "" H 1800 8300 50  0001 C CNN
	1    1800 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 8500 3900 8600
Wire Wire Line
	4750 8600 4750 8300
Wire Wire Line
	4500 8050 4750 8050
Wire Wire Line
	5150 8300 5150 8600
Wire Wire Line
	4500 7850 5150 7850
Wire Wire Line
	5150 7850 5150 8100
Wire Wire Line
	5450 8300 5450 8600
Wire Wire Line
	4500 7750 5450 7750
Wire Wire Line
	5450 7650 5450 8100
Wire Wire Line
	4500 7650 4550 7650
Wire Wire Line
	4550 7650 4550 7750
Connection ~ 4550 7750
Connection ~ 5450 7750
Wire Wire Line
	4750 8050 4750 8100
Wire Wire Line
	4500 7950 4550 7950
Wire Wire Line
	4550 7950 4550 8050
Connection ~ 4550 8050
Wire Wire Line
	1600 7650 3300 7650
Wire Wire Line
	1800 8050 1800 8300
Wire Wire Line
	1800 7850 1800 7650
Connection ~ 1800 7650
Wire Wire Line
	3300 7750 3150 7750
Connection ~ 3150 7650
$Comp
L device:C_Small C906
U 1 1 595D2518
P 2650 8150
F 0 "C906" H 2660 8220 50  0000 L CNN
F 1 "1 uF" H 2660 8070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2650 8150 50  0001 C CNN
F 3 "" H 2650 8150 50  0001 C CNN
	1    2650 8150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 7950 2650 7950
Wire Wire Line
	2650 7950 2650 8050
$Comp
L power:GND #PWR603
U 1 1 595D2520
P 2650 8300
F 0 "#PWR603" H 2650 8050 50  0001 C CNN
F 1 "GND" H 2650 8150 50  0000 C CNN
F 2 "" H 2650 8300 50  0001 C CNN
F 3 "" H 2650 8300 50  0001 C CNN
	1    2650 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 8250 2650 8300
Wire Wire Line
	2400 7850 3300 7850
$Comp
L device:R_Small R901
U 1 1 595D279C
P 2900 8350
F 0 "R901" H 2930 8370 50  0000 L CNN
F 1 "DNP" H 2930 8310 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2900 8350 50  0001 C CNN
F 3 "" H 2900 8350 50  0001 C CNN
	1    2900 8350
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R902
U 1 1 595D2869
P 2900 8700
F 0 "R902" H 2930 8720 50  0000 L CNN
F 1 "10k" H 2930 8660 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2900 8700 50  0001 C CNN
F 3 "" H 2900 8700 50  0001 C CNN
	1    2900 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR605
U 1 1 595D28FE
P 2900 8950
F 0 "#PWR605" H 2900 8700 50  0001 C CNN
F 1 "GND" H 2900 8800 50  0000 C CNN
F 2 "" H 2900 8950 50  0001 C CNN
F 3 "" H 2900 8950 50  0001 C CNN
	1    2900 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 8800 2900 8950
Wire Wire Line
	2900 8600 2900 8450
Wire Wire Line
	2800 8550 3150 8550
Connection ~ 2900 8550
Wire Wire Line
	3300 8050 3150 8050
Wire Wire Line
	3150 8050 3150 8550
$Comp
L power:VPP #PWR604
U 1 1 595D3935
P 2900 8200
F 0 "#PWR604" H 2900 8050 50  0001 C CNN
F 1 "VPP" H 2900 8350 50  0000 C CNN
F 2 "" H 2900 8200 50  0001 C CNN
F 3 "" H 2900 8200 50  0001 C CNN
	1    2900 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 8200 2900 8250
Text HLabel 2800 8550 0    60   Input ~ 0
3V3_PLL_EN
Wire Wire Line
	3150 7750 3150 7650
$Comp
L power:+3V3 #PWR601
U 1 1 5ACC44BC
P 1600 7650
F 0 "#PWR601" H 1600 7500 50  0001 C CNN
F 1 "+3V3" H 1600 7790 50  0000 C CNN
F 2 "" H 1600 7650 50  0001 C CNN
F 3 "" H 1600 7650 50  0001 C CNN
	1    1600 7650
	0    -1   -1   0   
$EndComp
$Comp
L device:R_Small R906
U 1 1 5AD576A9
P 2300 7850
F 0 "R906" H 2330 7870 50  0000 L CNN
F 1 "JMP" H 2330 7810 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2300 7850 50  0001 C CNN
F 3 "" H 2300 7850 50  0001 C CNN
	1    2300 7850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 7850 2000 7850
Wire Wire Line
	2000 7850 2000 7650
Connection ~ 2000 7650
$Comp
L vna_r1-rescue:LED_Small D901
U 1 1 5AF079B4
P 5450 6100
F 0 "D901" H 5400 6225 50  0000 L CNN
F 1 "LED_Small" H 5275 6000 50  0000 L CNN
F 2 "LEDs:LED_0603" V 5450 6100 50  0001 C CNN
F 3 "" V 5450 6100 50  0001 C CNN
	1    5450 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:VPP #PWR609
U 1 1 5AF07A56
P 5450 5800
F 0 "#PWR609" H 5450 5650 50  0001 C CNN
F 1 "VPP" H 5450 5950 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR613
U 1 1 5AF07A8E
P 5750 5800
F 0 "#PWR613" H 5750 5650 50  0001 C CNN
F 1 "+5V" H 5750 5940 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "" H 5750 5800 50  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR610
U 1 1 5AF07AC6
P 5450 6650
F 0 "#PWR610" H 5450 6400 50  0001 C CNN
F 1 "GND" H 5450 6500 50  0000 C CNN
F 2 "" H 5450 6650 50  0001 C CNN
F 3 "" H 5450 6650 50  0001 C CNN
	1    5450 6650
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R905
U 1 1 5AF07B90
P 5450 6450
F 0 "R905" H 5480 6470 50  0000 L CNN
F 1 "10k" H 5480 6410 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5450 6450 50  0001 C CNN
F 3 "" H 5450 6450 50  0001 C CNN
	1    5450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5800 5450 6000
Wire Wire Line
	5450 6200 5450 6350
Wire Wire Line
	5450 6550 5450 6650
$Comp
L vna_r1-rescue:LED_Small D902
U 1 1 5AF07E72
P 5750 6100
F 0 "D902" H 5700 6225 50  0000 L CNN
F 1 "LED_Small" H 5575 6000 50  0000 L CNN
F 2 "LEDs:LED_0603" V 5750 6100 50  0001 C CNN
F 3 "" V 5750 6100 50  0001 C CNN
	1    5750 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR614
U 1 1 5AF07E78
P 5750 6650
F 0 "#PWR614" H 5750 6400 50  0001 C CNN
F 1 "GND" H 5750 6500 50  0000 C CNN
F 2 "" H 5750 6650 50  0001 C CNN
F 3 "" H 5750 6650 50  0001 C CNN
	1    5750 6650
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R907
U 1 1 5AF07E7E
P 5750 6450
F 0 "R907" H 5780 6470 50  0000 L CNN
F 1 "10k" H 5780 6410 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5750 6450 50  0001 C CNN
F 3 "" H 5750 6450 50  0001 C CNN
	1    5750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5800 5750 6000
Wire Wire Line
	5750 6200 5750 6350
Wire Wire Line
	5750 6550 5750 6650
$EndSCHEMATC
