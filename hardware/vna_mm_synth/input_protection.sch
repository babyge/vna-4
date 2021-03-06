EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 13
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
L power:VPP #PWR?
U 1 1 5DEFF490
P 3150 2750
AR Path="/5DC45DA8/5DEFF490" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF490" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF490" Ref="#PWR01105"  Part="1" 
F 0 "#PWR01105" H 3150 2600 50  0001 C CNN
F 1 "VPP" H 3165 2923 50  0000 C CNN
F 2 "" H 3150 2750 50  0001 C CNN
F 3 "" H 3150 2750 50  0001 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
$Comp
L Power_Management:LTC4365DDB U?
U 1 1 5DEFF498
P 5050 4050
AR Path="/5DC45DA8/5DEFF498" Ref="U?"  Part="1" 
AR Path="/5DEECA69/5DEFF498" Ref="U?"  Part="1" 
AR Path="/5DECADF2/5DEFF498" Ref="U1101"  Part="1" 
F 0 "U1101" H 4550 4550 50  0000 C CNN
F 1 "LTC4365DDB" H 4700 4450 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x3mm_P0.5mm_EP0.61x2.2mm" H 5050 3550 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/4365fa.pdf" H 5050 4150 50  0001 C CNN
F 4 "LTC4365CDDB#TRMPBFCT-ND" H 5050 4050 50  0001 C CNN "DIST_PN"
F 5 "Digi-Key" H 5050 4050 50  0001 C CNN "DIST_NAME"
	1    5050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF49E
P 5100 4850
AR Path="/5DC45DA8/5DEFF49E" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF49E" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF49E" Ref="#PWR01108"  Part="1" 
F 0 "#PWR01108" H 5100 4600 50  0001 C CNN
F 1 "GND" H 5105 4677 50  0000 C CNN
F 2 "" H 5100 4850 50  0001 C CNN
F 3 "" H 5100 4850 50  0001 C CNN
	1    5100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4450 5050 4500
Wire Wire Line
	5050 4500 5100 4500
Wire Wire Line
	5150 4500 5150 4450
Connection ~ 5100 4500
Wire Wire Line
	5100 4500 5150 4500
Text Notes 6150 2950 0    50   ~ 0
1.5A MAX
Text Notes 2800 2400 0    50   ~ 0
4V +/- 5% input, 1.5A
$Comp
L Transistor_FET:FDS6890A Q?
U 1 1 5DEFF4B3
P 4750 3100
AR Path="/5DC45DA8/5DEFF4B3" Ref="Q?"  Part="1" 
AR Path="/5DEECA69/5DEFF4B3" Ref="Q?"  Part="1" 
AR Path="/5DECADF2/5DEFF4B3" Ref="Q1101"  Part="1" 
F 0 "Q1101" H 4956 3146 50  0000 L CNN
F 1 "FDS6890A" H 4956 3055 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4950 3025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS6890A.pdf" H 4750 3100 50  0001 L CNN
F 4 "Digi-Key" H 4750 3100 50  0001 C CNN "DIST_NAME"
F 5 "FDS6890ACT-ND" H 4750 3100 50  0001 C CNN "DIST_PN"
	1    4750 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3000 5150 3000
Wire Wire Line
	4750 3300 4750 3450
Wire Wire Line
	4750 3450 5050 3450
Wire Wire Line
	5050 3450 5050 3650
Wire Wire Line
	5050 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3300
Connection ~ 5050 3450
$Comp
L Device:C_Small C?
U 1 1 5DEFF4CA
P 5900 4300
AR Path="/5DC45DA8/5DEFF4CA" Ref="C?"  Part="1" 
AR Path="/5DEECA69/5DEFF4CA" Ref="C?"  Part="1" 
AR Path="/5DECADF2/5DEFF4CA" Ref="C1103"  Part="1" 
F 0 "C1103" H 5992 4346 50  0000 L CNN
F 1 "22 uF" H 5992 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 4300 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
F 4 "Digi-Key" H 5900 4300 50  0001 C CNN "DIST_NAME"
F 5 "GRM21BR61A226ME51L" H 5900 4300 50  0001 C CNN "DIST_PN"
	1    5900 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF4D0
P 5900 4850
AR Path="/5DC45DA8/5DEFF4D0" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF4D0" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF4D0" Ref="#PWR01110"  Part="1" 
F 0 "#PWR01110" H 5900 4600 50  0001 C CNN
F 1 "GND" H 5905 4677 50  0000 C CNN
F 2 "" H 5900 4850 50  0001 C CNN
F 3 "" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3850 5900 3850
Wire Wire Line
	5900 3850 5900 4200
Wire Wire Line
	5550 3000 5900 3000
Wire Wire Line
	5900 3000 5900 3850
Connection ~ 5900 3850
Wire Wire Line
	6750 2800 6750 3000
$Comp
L Device:R_Small R?
U 1 1 5DEFF4DE
P 3700 4100
AR Path="/5DC45DA8/5DEFF4DE" Ref="R?"  Part="1" 
AR Path="/5DEECA69/5DEFF4DE" Ref="R?"  Part="1" 
AR Path="/5DECADF2/5DEFF4DE" Ref="R1101"  Part="1" 
F 0 "R1101" H 3641 4054 50  0000 R CNN
F 1 "1.8M" H 3641 4145 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3700 4100 50  0001 C CNN
F 3 "~" H 3700 4100 50  0001 C CNN
F 4 "Digi-Key" H 3700 4100 50  0001 C CNN "DIST_NAME"
F 5 "2019-RK73H1ETTP1804FCT-ND" H 3700 4100 50  0001 C CNN "DIST_PN"
	1    3700 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEFF4E4
P 3700 4400
AR Path="/5DC45DA8/5DEFF4E4" Ref="R?"  Part="1" 
AR Path="/5DEECA69/5DEFF4E4" Ref="R?"  Part="1" 
AR Path="/5DECADF2/5DEFF4E4" Ref="R1102"  Part="1" 
F 0 "R1102" H 3641 4354 50  0000 R CNN
F 1 "60k" H 3641 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3700 4400 50  0001 C CNN
F 3 "~" H 3700 4400 50  0001 C CNN
	1    3700 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEFF4EA
P 3700 4700
AR Path="/5DC45DA8/5DEFF4EA" Ref="R?"  Part="1" 
AR Path="/5DEECA69/5DEFF4EA" Ref="R?"  Part="1" 
AR Path="/5DECADF2/5DEFF4EA" Ref="R1103"  Part="1" 
F 0 "R1103" H 3641 4654 50  0000 R CNN
F 1 "240k" H 3641 4745 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3700 4700 50  0001 C CNN
F 3 "~" H 3700 4700 50  0001 C CNN
	1    3700 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF4F0
P 3700 4850
AR Path="/5DC45DA8/5DEFF4F0" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF4F0" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF4F0" Ref="#PWR01107"  Part="1" 
F 0 "#PWR01107" H 3700 4600 50  0001 C CNN
F 1 "GND" H 3705 4677 50  0000 C CNN
F 2 "" H 3700 4850 50  0001 C CNN
F 3 "" H 3700 4850 50  0001 C CNN
	1    3700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEFF4F6
P 4400 3950
AR Path="/5DC45DA8/5DEFF4F6" Ref="R?"  Part="1" 
AR Path="/5DEECA69/5DEFF4F6" Ref="R?"  Part="1" 
AR Path="/5DECADF2/5DEFF4F6" Ref="R1104"  Part="1" 
F 0 "R1104" V 4500 4050 50  0000 C CNN
F 1 "100k" V 4500 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4400 3950 50  0001 C CNN
F 3 "~" H 4400 3950 50  0001 C CNN
	1    4400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4000 3700 3850
Wire Wire Line
	3700 4800 3700 4850
Wire Wire Line
	3700 4600 3700 4550
Wire Wire Line
	3700 4300 3700 4250
Wire Wire Line
	4500 3950 4650 3950
Wire Wire Line
	3700 4250 4150 4250
Wire Wire Line
	4150 4250 4150 4150
Wire Wire Line
	4150 4150 4650 4150
Connection ~ 3700 4250
Wire Wire Line
	3700 4250 3700 4200
Wire Wire Line
	3700 4550 4250 4550
Wire Wire Line
	4250 4550 4250 4250
Wire Wire Line
	4250 4250 4650 4250
Connection ~ 3700 4550
Wire Wire Line
	3700 4550 3700 4500
Wire Wire Line
	4300 3950 4150 3950
Wire Wire Line
	3700 3850 4150 3850
Wire Wire Line
	4150 3950 4150 3850
Connection ~ 4150 3850
Wire Wire Line
	4150 3850 4650 3850
Wire Wire Line
	4550 3000 3700 3000
Wire Wire Line
	3700 3000 3700 3850
Connection ~ 3700 3850
Connection ~ 3700 3000
$Comp
L Device:C_Small C?
U 1 1 5DEFF516
P 3150 3450
AR Path="/5DC45DA8/5DEFF516" Ref="C?"  Part="1" 
AR Path="/5DEECA69/5DEFF516" Ref="C?"  Part="1" 
AR Path="/5DECADF2/5DEFF516" Ref="C1102"  Part="1" 
F 0 "C1102" H 3242 3496 50  0000 L CNN
F 1 "22 uF" H 3242 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3150 3450 50  0001 C CNN
F 3 "~" H 3150 3450 50  0001 C CNN
F 4 "Digi-Key" H 3150 3450 50  0001 C CNN "DIST_NAME"
F 5 "GRM21BR61A226ME51L" H 3150 3450 50  0001 C CNN "DIST_PN"
	1    3150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF51C
P 3150 3650
AR Path="/5DC45DA8/5DEFF51C" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF51C" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF51C" Ref="#PWR01106"  Part="1" 
F 0 "#PWR01106" H 3150 3400 50  0001 C CNN
F 1 "GND" H 3155 3477 50  0000 C CNN
F 2 "" H 3150 3650 50  0001 C CNN
F 3 "" H 3150 3650 50  0001 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 3150 3650
Wire Wire Line
	3150 3000 3150 3350
Wire Wire Line
	3150 3000 3700 3000
Wire Wire Line
	5100 4500 5100 4850
Wire Wire Line
	5900 4400 5900 4850
$Comp
L Device:L_Small L?
U 1 1 5DEFF529
P 6300 3000
AR Path="/5DC45DA8/5DEFF529" Ref="L?"  Part="1" 
AR Path="/5DEECA69/5DEFF529" Ref="L?"  Part="1" 
AR Path="/5DECADF2/5DEFF529" Ref="L1101"  Part="1" 
F 0 "L1101" V 6485 3000 50  0000 C CNN
F 1 "TBD" V 6394 3000 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 6300 3000 50  0001 C CNN
F 3 "~" H 6300 3000 50  0001 C CNN
F 4 "Digi-Key" H 6300 3000 50  0001 C CNN "DIST_NAME"
F 5 "BLM18EG101TN1D" H 6300 3000 50  0001 C CNN "DIST_PN"
	1    6300 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3000 6200 3000
Connection ~ 5900 3000
Wire Wire Line
	6400 3000 6750 3000
$Comp
L Device:C_Small C?
U 1 1 5DEFF534
P 6750 3250
AR Path="/5DC45DA8/5DEFF534" Ref="C?"  Part="1" 
AR Path="/5DEECA69/5DEFF534" Ref="C?"  Part="1" 
AR Path="/5DECADF2/5DEFF534" Ref="C1104"  Part="1" 
F 0 "C1104" H 6842 3296 50  0000 L CNN
F 1 "22 uF" H 6842 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6750 3250 50  0001 C CNN
F 3 "~" H 6750 3250 50  0001 C CNN
F 4 "Digi-Key" H 6750 3250 50  0001 C CNN "DIST_NAME"
F 5 "GRM21BR61A226ME51L" H 6750 3250 50  0001 C CNN "DIST_PN"
	1    6750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF53A
P 6750 3600
AR Path="/5DC45DA8/5DEFF53A" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF53A" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF53A" Ref="#PWR01112"  Part="1" 
F 0 "#PWR01112" H 6750 3350 50  0001 C CNN
F 1 "GND" H 6755 3427 50  0000 C CNN
F 2 "" H 6750 3600 50  0001 C CNN
F 3 "" H 6750 3600 50  0001 C CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3350 6750 3600
Wire Wire Line
	6750 3150 6750 3000
Connection ~ 6750 3000
Text Notes 2850 4450 0    50   ~ 0
UV trip at 3.5V\nOV trip at 4.4V
Connection ~ 3150 3000
Wire Wire Line
	3150 2750 3150 3000
$Comp
L Device:LED_Small D?
U 1 1 5DEFF546
P 5650 4200
AR Path="/5DC45DA8/5DEFF546" Ref="D?"  Part="1" 
AR Path="/5DEECA69/5DEFF546" Ref="D?"  Part="1" 
AR Path="/5DECADF2/5DEFF546" Ref="D1101"  Part="1" 
F 0 "D1101" V 5696 4132 50  0000 R CNN
F 1 "RED" V 5605 4132 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5650 4200 50  0001 C CNN
F 3 "~" V 5650 4200 50  0001 C CNN
	1    5650 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEFF54C
P 5650 4500
AR Path="/5DC45DA8/5DEFF54C" Ref="R?"  Part="1" 
AR Path="/5DEECA69/5DEFF54C" Ref="R?"  Part="1" 
AR Path="/5DECADF2/5DEFF54C" Ref="R1105"  Part="1" 
F 0 "R1105" V 5550 4650 50  0000 C CNN
F 1 "10k" V 5550 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5650 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5650 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 3950 5650 3950
Wire Wire Line
	5650 3950 5650 4100
Wire Wire Line
	5650 4300 5650 4400
$Comp
L power:VPP #PWR?
U 1 1 5DEFF55C
P 2800 5400
AR Path="/5DC45DA8/5DEFF55C" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF55C" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF55C" Ref="#PWR01104"  Part="1" 
F 0 "#PWR01104" H 2800 5250 50  0001 C CNN
F 1 "VPP" H 2815 5573 50  0000 C CNN
F 2 "" H 2800 5400 50  0001 C CNN
F 3 "" H 2800 5400 50  0001 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF562
P 2250 5450
AR Path="/5DC45DA8/5DEFF562" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF562" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF562" Ref="#PWR01101"  Part="1" 
F 0 "#PWR01101" H 2250 5200 50  0001 C CNN
F 1 "GND" H 2255 5277 50  0000 C CNN
F 2 "" H 2250 5450 50  0001 C CNN
F 3 "" H 2250 5450 50  0001 C CNN
	1    2250 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5DEFF56A
P 3000 5400
AR Path="/5DC45DA8/5DEFF56A" Ref="TP?"  Part="1" 
AR Path="/5DEECA69/5DEFF56A" Ref="TP?"  Part="1" 
AR Path="/5DECADF2/5DEFF56A" Ref="TP1102"  Part="1" 
F 0 "TP1102" H 3058 5518 50  0000 L CNN
F 1 "TestPoint" H 3058 5427 50  0000 L CNN
F 2 "vna_mm:TURRET_MILLMAX_2101" H 3200 5400 50  0001 C CNN
F 3 "~" H 3200 5400 50  0001 C CNN
F 4 "Digi-Key" H 3000 5400 50  0001 C CNN "DIST_NAME"
F 5 "ED1295-ND" H 3000 5400 50  0001 C CNN "DIST_PN"
	1    3000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5400 3000 5450
Wire Wire Line
	3000 5450 2800 5450
Wire Wire Line
	2800 5450 2800 5400
$Comp
L Connector:TestPoint TP?
U 1 1 5DEFF575
P 2250 5400
AR Path="/5DC45DA8/5DEFF575" Ref="TP?"  Part="1" 
AR Path="/5DEECA69/5DEFF575" Ref="TP?"  Part="1" 
AR Path="/5DECADF2/5DEFF575" Ref="TP1101"  Part="1" 
F 0 "TP1101" H 2308 5518 50  0000 L CNN
F 1 "TestPoint" H 2308 5427 50  0000 L CNN
F 2 "vna_mm:TURRET_MILLMAX_2101" H 2450 5400 50  0001 C CNN
F 3 "~" H 2450 5400 50  0001 C CNN
F 4 "Digi-Key" H 2250 5400 50  0001 C CNN "DIST_NAME"
F 5 "ED1295-ND" H 2250 5400 50  0001 C CNN "DIST_PN"
	1    2250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5400 2250 5450
$Comp
L Device:CP1 C?
U 1 1 5DEFF580
P 2550 3400
AR Path="/5DC45DA8/5DEFF580" Ref="C?"  Part="1" 
AR Path="/5DEECA69/5DEFF580" Ref="C?"  Part="1" 
AR Path="/5DECADF2/5DEFF580" Ref="C1101"  Part="1" 
F 0 "C1101" H 2665 3446 50  0000 L CNN
F 1 "330 uF" H 2665 3355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 2550 3400 50  0001 C CNN
F 3 "~" H 2550 3400 50  0001 C CNN
F 4 "Panasonic" H 2550 3400 50  0001 C CNN "MAN_NAME"
F 5 "6SVPC330M" H 2550 3400 50  0001 C CNN "MAN_PN"
F 6 "Digi-Key" H 2550 3400 50  0001 C CNN "DIST_NAME"
F 7 "P16611CT-ND" H 2550 3400 50  0001 C CNN "DIST_PN"
	1    2550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFF586
P 2550 3650
AR Path="/5DC45DA8/5DEFF586" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF586" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF586" Ref="#PWR01103"  Part="1" 
F 0 "#PWR01103" H 2550 3400 50  0001 C CNN
F 1 "GND" H 2555 3477 50  0000 C CNN
F 2 "" H 2550 3650 50  0001 C CNN
F 3 "" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3550 2550 3650
$Comp
L power:VPP #PWR?
U 1 1 5DEFF58D
P 2550 2750
AR Path="/5DC45DA8/5DEFF58D" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5DEFF58D" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5DEFF58D" Ref="#PWR01102"  Part="1" 
F 0 "#PWR01102" H 2550 2600 50  0001 C CNN
F 1 "VPP" H 2565 2923 50  0000 C CNN
F 2 "" H 2550 2750 50  0001 C CNN
F 3 "" H 2550 2750 50  0001 C CNN
	1    2550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2750 2550 3250
Wire Wire Line
	5450 4800 5450 4950
Wire Wire Line
	5450 4950 5650 4950
Wire Wire Line
	5650 4600 5650 4950
Text Notes 4650 1950 0    118  ~ 0
TODO: change resistors for 9V input!
$Comp
L power:+9V #PWR01111
U 1 1 5DF88C97
P 6750 2800
F 0 "#PWR01111" H 6750 2650 50  0001 C CNN
F 1 "+9V" H 6765 2973 50  0000 C CNN
F 2 "" H 6750 2800 50  0001 C CNN
F 3 "" H 6750 2800 50  0001 C CNN
	1    6750 2800
	1    0    0    -1  
$EndComp
Text Notes 4650 2200 0    118  ~ 0
TODO: CHECK CURRENT RATING ON INDUCTOR
$Comp
L power:GND #PWR?
U 1 1 5E02B91F
P 7400 3600
AR Path="/5DC45DA8/5E02B91F" Ref="#PWR?"  Part="1" 
AR Path="/5DEECA69/5E02B91F" Ref="#PWR?"  Part="1" 
AR Path="/5DECADF2/5E02B91F" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 7400 3350 50  0001 C CNN
F 1 "GND" H 7405 3427 50  0000 C CNN
F 2 "" H 7400 3600 50  0001 C CNN
F 3 "" H 7400 3600 50  0001 C CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3500 7400 3600
$Comp
L Device:CP1 C?
U 1 1 5E02B94E
P 7400 3350
AR Path="/5DC45DA8/5E02B94E" Ref="C?"  Part="1" 
AR Path="/5DEECA69/5E02B94E" Ref="C?"  Part="1" 
AR Path="/5DECADF2/5E02B94E" Ref="C1105"  Part="1" 
F 0 "C1105" H 7515 3396 50  0000 L CNN
F 1 "330 uF" H 7515 3305 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
F 4 "Panasonic" H 7400 3350 50  0001 C CNN "MAN_NAME"
F 5 "6SVPC330M" H 7400 3350 50  0001 C CNN "MAN_PN"
F 6 "Digi-Key" H 7400 3350 50  0001 C CNN "DIST_NAME"
F 7 "P16611CT-ND" H 7400 3350 50  0001 C CNN "DIST_PN"
	1    7400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2700 7400 3200
$Comp
L power:+9V #PWR0144
U 1 1 5E02D0DF
P 7400 2700
F 0 "#PWR0144" H 7400 2550 50  0001 C CNN
F 1 "+9V" H 7415 2873 50  0000 C CNN
F 2 "" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDS6890A Q?
U 2 1 5DEFF4BB
P 5350 3100
AR Path="/5DC45DA8/5DEFF4BB" Ref="Q?"  Part="2" 
AR Path="/5DEECA69/5DEFF4BB" Ref="Q?"  Part="2" 
AR Path="/5DECADF2/5DEFF4BB" Ref="Q1101"  Part="2" 
F 0 "Q1101" H 5556 3146 50  0000 L CNN
F 1 "FDS6890A" H 5556 3055 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 3025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS6890A.pdf" H 5350 3100 50  0001 L CNN
F 4 "Digi-Key" H 5350 3100 50  0001 C CNN "DIST_NAME"
F 5 "FDS6890ACT-ND" H 5350 3100 50  0001 C CNN "DIST_PN"
	2    5350 3100
	0    1    -1   0   
$EndComp
$Comp
L power:+3V8 #PWR0149
U 1 1 5E12387D
P 5450 4800
F 0 "#PWR0149" H 5450 4650 50  0001 C CNN
F 1 "+3V8" H 5465 4973 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
