EESchema Schematic File Version 4
LIBS:LoRaPagerESP32-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L hiroseQ10:Keyboard_BBQ10KBD KBD?
U 1 1 5BF09D9E
P 8300 2750
AR Path="/5BF09D9E" Ref="KBD?"  Part="1" 
AR Path="/5BF09D55/5BF09D9E" Ref="KBD1"  Part="1" 
F 0 "KBD1" H 8300 3637 60  0000 C CNN
F 1 "Keyboard_BBQ10KBD" H 8300 3531 60  0000 C CNN
F 2 "modules:BBQ10KBD" H 8300 2400 60  0001 C CNN
F 3 "" H 8300 2400 60  0001 C CNN
	1    8300 2750
	1    0    0    -1  
$EndComp
$Comp
L 5w_sw:5W_SW SW?
U 1 1 5BF09DA5
P 8000 4500
AR Path="/5BF09DA5" Ref="SW?"  Part="1" 
AR Path="/5BF09D55/5BF09DA5" Ref="SW1"  Part="1" 
F 0 "SW1" H 8300 5287 60  0000 C CNN
F 1 "5W_SW" H 8300 5181 60  0000 C CNN
F 2 "modules:5WAY_sw" H 8000 4500 60  0001 C CNN
F 3 "" H 8000 4500 60  0001 C CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:TCA9555PWR U?
U 1 1 5BF09DAC
P 2150 2950
AR Path="/5BF09DAC" Ref="U?"  Part="1" 
AR Path="/5BF09D55/5BF09DAC" Ref="U1"  Part="1" 
F 0 "U1" H 2150 2950 50  0000 C CNN
F 1 "PCA9555PW,118" H 2200 3900 50  0000 L BNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 3200 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9555.pdf" H 1650 3850 50  0001 C CNN
	1    2150 2950
	1    0    0    -1  
$EndComp
NoConn ~ 1450 2350
$Comp
L power:GND #PWR?
U 1 1 5BF09DB4
P 2150 4150
AR Path="/5BF09DB4" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF09DB4" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 2150 3900 50  0001 C CNN
F 1 "GND" H 2155 3977 50  0000 C CNN
F 2 "" H 2150 4150 50  0001 C CNN
F 3 "" H 2150 4150 50  0001 C CNN
	1    2150 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF09DBA
P 1400 3900
AR Path="/5BF09DBA" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF09DBA" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1400 3650 50  0001 C CNN
F 1 "GND" H 1405 3727 50  0000 C CNN
F 2 "" H 1400 3900 50  0001 C CNN
F 3 "" H 1400 3900 50  0001 C CNN
	1    1400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3900 1400 3750
Wire Wire Line
	1400 3750 1450 3750
Wire Wire Line
	1400 3750 1400 3650
Wire Wire Line
	1400 3650 1450 3650
Connection ~ 1400 3750
Wire Wire Line
	2150 4050 2150 4150
$Comp
L power:GND #PWR?
U 1 1 5BF09DC9
P 7400 3300
AR Path="/5BF09DC9" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF09DC9" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 7400 3050 50  0001 C CNN
F 1 "GND" H 7405 3127 50  0000 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3350 7700 3350
Wire Wire Line
	7650 3350 7650 3250
Wire Wire Line
	7650 3250 7700 3250
Wire Wire Line
	1450 2150 1350 2150
Wire Wire Line
	1450 2250 1350 2250
Text Label 1350 2150 2    50   ~ 0
SDA
Text Label 1350 2250 2    50   ~ 0
SCL
$Comp
L power:+3V3 #PWR?
U 1 1 5BF09DD6
P 2150 1300
AR Path="/5BF09DD6" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF09DD6" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 2150 1150 50  0001 C CNN
F 1 "+3V3" H 2165 1473 50  0000 C CNN
F 2 "" H 2150 1300 50  0001 C CNN
F 3 "" H 2150 1300 50  0001 C CNN
	1    2150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1850 2150 1350
Wire Wire Line
	7400 3300 7400 3250
Wire Wire Line
	7400 3250 7650 3250
Connection ~ 7650 3250
Wire Wire Line
	8900 2150 9050 2150
Text Label 9050 2150 0    50   ~ 0
KB_COL1
Wire Wire Line
	8900 2250 9050 2250
Wire Wire Line
	8900 2350 9050 2350
Wire Wire Line
	8900 2450 9050 2450
Wire Wire Line
	8900 2550 9050 2550
Wire Wire Line
	8900 2750 9050 2750
Text Label 9050 2250 0    50   ~ 0
KB_COL2
Text Label 9050 2350 0    50   ~ 0
KB_COL3
Text Label 9050 2450 0    50   ~ 0
KB_COL4
Text Label 9050 2550 0    50   ~ 0
KB_COL5
Text Label 9050 2750 0    50   ~ 0
KB_ROW1
Wire Wire Line
	8900 2850 9050 2850
Text Label 9050 2850 0    50   ~ 0
KB_ROW2
Wire Wire Line
	8900 2950 9050 2950
Text Label 9050 2950 0    50   ~ 0
KB_ROW3
Wire Wire Line
	8900 3050 9050 3050
Text Label 9050 3050 0    50   ~ 0
KB_ROW4
Wire Wire Line
	8900 3150 9050 3150
Text Label 9050 3150 0    50   ~ 0
KB_ROW5
Wire Wire Line
	8900 3250 9050 3250
Text Label 9050 3250 0    50   ~ 0
KB_ROW6
Wire Wire Line
	8900 3350 9050 3350
Text Label 9050 3350 0    50   ~ 0
KB_ROW7
Wire Wire Line
	7800 4000 7650 4000
Text Label 7650 4000 2    50   ~ 0
KB_COL1
Wire Wire Line
	7800 4200 7650 4200
Text Label 7650 4200 2    50   ~ 0
KB_COL2
Wire Wire Line
	7800 4400 7650 4400
Text Label 7650 4400 2    50   ~ 0
KB_COL3
Wire Wire Line
	8800 4000 8950 4000
Text Label 8950 4000 0    50   ~ 0
KB_COL4
Wire Wire Line
	8800 4400 8950 4400
Text Label 8950 4400 0    50   ~ 0
KB_COL5
Wire Wire Line
	8800 4200 8950 4200
Text Label 8950 4200 0    50   ~ 0
KB_ROW8
Text HLabel 1300 5300 0    50   Input ~ 0
+3V3
Text HLabel 1300 5400 0    50   BiDi ~ 0
GND
Text HLabel 1300 5850 0    50   BiDi ~ 0
SDA
Text HLabel 1300 5950 0    50   Input ~ 0
SCL
$Comp
L device:Q_NMOS_GSD Q2
U 1 1 5BF1059A
P 6800 2950
F 0 "Q2" H 7005 2996 50  0000 L CNN
F 1 "BSS138" H 7005 2905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7000 3050 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3250 6900 3250
Wire Wire Line
	6900 3250 6900 3150
Connection ~ 7400 3250
$Comp
L device:R R3
U 1 1 5BF10D37
P 6500 3200
F 0 "R3" H 6570 3246 50  0000 L CNN
F 1 "10k" H 6570 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 3200 50  0001 C CNN
F 3 "~" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2950 6500 2950
Wire Wire Line
	6500 2950 6500 3050
Connection ~ 6500 2950
Text Label 6150 2950 2    50   ~ 0
KB_LIGHT
Wire Wire Line
	6900 2750 6900 2650
Wire Wire Line
	6900 2650 7600 2650
Wire Wire Line
	7700 2550 7600 2550
Wire Wire Line
	7600 2550 7600 2650
Connection ~ 7600 2650
Wire Wire Line
	7600 2650 7700 2650
Wire Wire Line
	7700 2450 7600 2450
Wire Wire Line
	7600 2450 7600 2350
Connection ~ 7600 2350
Wire Wire Line
	7600 2350 7700 2350
$Comp
L power:GND #PWR?
U 1 1 5BF13C7F
P 6500 3450
AR Path="/5BF13C7F" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF13C7F" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 6500 3200 50  0001 C CNN
F 1 "GND" H 6505 3277 50  0000 C CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3450 6500 3350
Wire Wire Line
	7700 2850 7600 2850
Text Label 7600 2850 2    50   ~ 0
MIC
$Comp
L power:GND #PWR?
U 1 1 5BF157FB
P 1450 5500
AR Path="/5BF157FB" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF157FB" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 1450 5250 50  0001 C CNN
F 1 "GND" H 1455 5327 50  0000 C CNN
F 2 "" H 1450 5500 50  0001 C CNN
F 3 "" H 1450 5500 50  0001 C CNN
	1    1450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5850 1450 5850
Text Label 1450 5850 0    50   ~ 0
SDA
Wire Wire Line
	1300 5950 1450 5950
Text Label 1450 5950 0    50   ~ 0
SCL
Wire Wire Line
	1450 5400 1450 5500
$Comp
L power:+3V3 #PWR?
U 1 1 5BF1A7BA
P 1450 5200
AR Path="/5BF1A7BA" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF1A7BA" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 1450 5050 50  0001 C CNN
F 1 "+3V3" H 1465 5373 50  0000 C CNN
F 2 "" H 1450 5200 50  0001 C CNN
F 3 "" H 1450 5200 50  0001 C CNN
	1    1450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5300 1450 5300
Wire Wire Line
	1450 5300 1450 5200
Wire Wire Line
	1300 5400 1450 5400
Text HLabel 1300 6150 0    50   Output ~ 0
MIC
Wire Wire Line
	1300 6150 1450 6150
Text Label 1450 6150 0    50   ~ 0
MIC
Text HLabel 1300 6300 0    50   Input ~ 0
LIGHT
Wire Wire Line
	1300 6300 1450 6300
Text Label 1450 6300 0    50   ~ 0
KB_LIGHT
$Comp
L device:Q_PMOS_GSD Q1
U 1 1 5BF2048C
P 6200 2250
F 0 "Q1" V 6543 2250 50  0000 C CNN
F 1 "BSS84" V 6452 2250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 2350 50  0001 C CNN
F 3 "~" H 6200 2250 50  0001 C CNN
	1    6200 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	7400 2350 7600 2350
$Comp
L device:R R2
U 1 1 5BF25038
P 5800 2400
F 0 "R2" H 5870 2446 50  0000 L CNN
F 1 "10k" H 5870 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 2400 50  0001 C CNN
F 3 "~" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BF2507A
P 5450 2050
AR Path="/5BF2507A" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF2507A" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 5450 1900 50  0001 C CNN
F 1 "+3V3" H 5465 2223 50  0000 C CNN
F 2 "" H 5450 2050 50  0001 C CNN
F 3 "" H 5450 2050 50  0001 C CNN
	1    5450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2050 5450 2150
Wire Wire Line
	5800 2550 5800 2650
Text Label 7400 2350 2    50   ~ 0
+3V3
Wire Wire Line
	5800 2650 5300 2650
Connection ~ 5800 2650
Text Label 5300 2650 2    50   ~ 0
MIC_POWER
Wire Wire Line
	6150 2950 6500 2950
$Comp
L device:C C?
U 1 1 5BF508A3
P 1800 1550
AR Path="/5BF508A3" Ref="C?"  Part="1" 
AR Path="/5BEA1EED/5BF508A3" Ref="C?"  Part="1" 
AR Path="/5BF09D55/5BF508A3" Ref="C8"  Part="1" 
F 0 "C8" V 2052 1550 50  0000 C CNN
F 1 "0.1uF" V 1961 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1838 1400 50  0001 C CNN
F 3 "~" H 1800 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF5535F
P 1800 1750
AR Path="/5BF5535F" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF5535F" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1800 1500 50  0001 C CNN
F 1 "GND" H 1805 1577 50  0000 C CNN
F 2 "" H 1800 1750 50  0001 C CNN
F 3 "" H 1800 1750 50  0001 C CNN
	1    1800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1700 1800 1750
Wire Wire Line
	1800 1400 1800 1350
Wire Wire Line
	1800 1350 2150 1350
Connection ~ 2150 1350
Wire Wire Line
	2150 1350 2150 1300
Wire Notes Line
	5700 1800 5700 2600
Wire Notes Line
	5700 2600 6450 2600
Wire Notes Line
	6450 2600 6450 1800
Wire Notes Line
	6450 1800 5700 1800
Text Notes 5750 1950 0    50   ~ 0
DNI
Wire Wire Line
	6400 2150 6700 2150
Wire Wire Line
	6700 2150 6700 2250
Connection ~ 6700 2150
$Comp
L device:Jumper_NC_Small JP2
U 1 1 5BF965A4
P 1250 3650
F 0 "JP2" V 1204 3724 50  0000 L CNN
F 1 "Jumper_NC_Small" V 1295 3724 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 1250 3650 50  0001 C CNN
F 3 "~" H 1250 3650 50  0001 C CNN
	1    1250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3750 1400 3750
Wire Wire Line
	1250 3550 1450 3550
Connection ~ 1250 3550
$Comp
L device:R R6
U 1 1 5BF9C206
P 1250 3050
F 0 "R6" H 1320 3096 50  0000 L CNN
F 1 "10k" H 1320 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1180 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BF9C250
P 1250 2850
AR Path="/5BF9C250" Ref="#PWR?"  Part="1" 
AR Path="/5BF09D55/5BF9C250" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 1250 2700 50  0001 C CNN
F 1 "+3V3" H 1265 3023 50  0000 C CNN
F 2 "" H 1250 2850 50  0001 C CNN
F 3 "" H 1250 2850 50  0001 C CNN
	1    1250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2850 1250 2900
$Comp
L device:Jumper_NC_Small JP1
U 1 1 5BFA0BCA
P 6700 2350
F 0 "JP1" V 6654 2424 50  0000 L CNN
F 1 "Jumper_NC_Small" V 6745 2424 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 6700 2350 50  0001 C CNN
F 3 "~" H 6700 2350 50  0001 C CNN
	1    6700 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2150 5800 2150
Wire Wire Line
	5800 2650 6200 2650
Wire Wire Line
	5800 2150 5800 2250
Connection ~ 5800 2150
Wire Wire Line
	5800 2150 6000 2150
Wire Wire Line
	6200 2450 6200 2650
Connection ~ 6200 2650
Wire Wire Line
	6200 2650 6700 2650
Wire Wire Line
	6700 2450 6700 2650
Wire Notes Line
	650  2850 1500 2850
Wire Notes Line
	1500 2850 1500 3200
Wire Notes Line
	1500 3200 650  3200
Wire Notes Line
	650  3200 650  2850
Text Notes 700  2950 0    50   ~ 0
DNI
Text Notes 700  3150 0    50   ~ 0
for alt\nPCA9539a
Wire Wire Line
	1250 3200 1250 3550
Wire Wire Line
	2850 2150 3000 2150
Text Label 3000 2150 0    50   ~ 0
KB_ROW1
Wire Wire Line
	2850 2250 3000 2250
Wire Wire Line
	2850 2350 3000 2350
Wire Wire Line
	2850 2450 3000 2450
Wire Wire Line
	2850 2550 3000 2550
Wire Wire Line
	2850 2650 3000 2650
Wire Wire Line
	2850 2750 3000 2750
Wire Wire Line
	2850 2850 3000 2850
Text Label 3000 2250 0    50   ~ 0
KB_ROW2
Text Label 3000 2350 0    50   ~ 0
KB_ROW3
Text Label 3000 2450 0    50   ~ 0
KB_ROW4
Text Label 3000 2550 0    50   ~ 0
KB_ROW5
Text Label 3000 2650 0    50   ~ 0
KB_ROW6
Text Label 3000 2750 0    50   ~ 0
KB_ROW7
Text Label 3000 2850 0    50   ~ 0
KB_ROW8
Wire Wire Line
	2850 3750 3000 3750
Text Label 3000 3750 0    50   ~ 0
MIC_POWER
Wire Wire Line
	2850 3050 3000 3050
Wire Wire Line
	3000 3150 2850 3150
Wire Wire Line
	3000 3250 2850 3250
Wire Wire Line
	3000 3350 2850 3350
Wire Wire Line
	3000 3450 2850 3450
Text Label 3000 3050 0    50   ~ 0
KB_COL1
Text Label 3000 3150 0    50   ~ 0
KB_COL2
Text Label 3000 3250 0    50   ~ 0
KB_COL3
Text Label 3000 3350 0    50   ~ 0
KB_COL4
Text Label 3000 3450 0    50   ~ 0
KB_COL5
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C2B5068
P 7400 2050
F 0 "#FLG0102" H 7400 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 2223 50  0000 C CNN
F 2 "" H 7400 2050 50  0001 C CNN
F 3 "~" H 7400 2050 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2150 7400 2050
Wire Wire Line
	6700 2150 7400 2150
Connection ~ 7400 2150
Wire Wire Line
	7400 2150 7700 2150
NoConn ~ 2850 3650
$Comp
L Switch:SW_Push SW3
U 1 1 5C3848A7
P 8300 5250
F 0 "SW3" H 8300 5535 50  0000 C CNN
F 1 "SW_Push" H 8300 5444 50  0000 C CNN
F 2 "modules:1TS009" H 8300 5450 50  0001 C CNN
F 3 "" H 8300 5450 50  0001 C CNN
	1    8300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5250 7950 5250
Text Label 7950 5250 2    50   ~ 0
KB_COL6
Wire Wire Line
	8500 5250 8600 5250
Text Label 8600 5250 0    50   ~ 0
KB_ROW8
Wire Wire Line
	2850 3550 3000 3550
Text Label 3000 3550 0    50   ~ 0
KB_COL6
$EndSCHEMATC
