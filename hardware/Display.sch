EESchema Schematic File Version 4
LIBS:LoRaPagerESP32-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L JD-T1800:JD-T1800 LCD?
U 1 1 5BF5CD50
P 3900 1900
AR Path="/5BF5CD50" Ref="LCD?"  Part="1" 
AR Path="/5BF5CD2B/5BF5CD50" Ref="LCD2"  Part="1" 
F 0 "LCD2" H 3900 1900 50  0001 L BNN
F 1 "JD-T1800" H 3900 1900 50  0001 L BNN
F 2 "modules:JD-T1800" H 3900 1900 50  0001 L BNN
F 3 "" H 3900 1900 50  0001 C CNN
	1    3900 1900
	1    0    0    -1  
$EndComp
$Comp
L LoRaPagerESP32-rescue:Z240IT010-Z240IT010 LCD?
U 1 1 5BF5CD56
P 3550 4150
AR Path="/5BF5CD56" Ref="LCD?"  Part="1" 
AR Path="/5BF5CD2B/5BF5CD56" Ref="LCD1"  Part="1" 
F 0 "LCD1" H 3928 4146 50  0000 L CNN
F 1 "Z240IT010" H 3928 4055 50  0000 L CNN
F 2 "modules:Z240IT010" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Text Label 2150 2000 2    50   ~ 0
SCK
Wire Wire Line
	3100 3550 2550 3550
Wire Wire Line
	2550 3550 2550 3100
Connection ~ 2550 2000
Text Label 2150 1900 2    50   ~ 0
MOSI
Text Label 2150 1800 2    50   ~ 0
DC
Wire Wire Line
	2500 1800 2500 2700
Wire Wire Line
	2500 3650 3100 3650
Connection ~ 2500 1800
Text Label 2150 2300 2    50   ~ 0
CS
Wire Wire Line
	2450 2300 2450 2600
Wire Wire Line
	2450 3750 3100 3750
Connection ~ 2450 2300
$Comp
L power:+3V3 #PWR0135
U 1 1 5BFE2FB8
P 2750 1200
F 0 "#PWR0135" H 2750 1050 50  0001 C CNN
F 1 "+3V3" H 2765 1373 50  0000 C CNN
F 2 "" H 2750 1200 50  0001 C CNN
F 3 "" H 2750 1200 50  0001 C CNN
	1    2750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2750 1500
Wire Wire Line
	2750 1500 2750 2100
Connection ~ 2750 1500
$Comp
L power:GND #PWR0136
U 1 1 5BFE340A
P 2950 1050
F 0 "#PWR0136" H 2950 800 50  0001 C CNN
F 1 "GND" H 2955 877 50  0000 C CNN
F 2 "" H 2950 1050 50  0001 C CNN
F 3 "" H 2950 1050 50  0001 C CNN
	1    2950 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 1500 3000 1500
Wire Wire Line
	2500 1800 3000 1800
Wire Wire Line
	2550 2000 3000 2000
Wire Wire Line
	2750 2100 3000 2100
Wire Wire Line
	3000 2200 3000 2100
Connection ~ 3000 2100
Wire Wire Line
	2450 2300 3000 2300
Wire Wire Line
	3000 1300 2950 1300
Wire Wire Line
	2950 1300 2950 1600
Wire Wire Line
	2950 1600 3000 1600
Wire Wire Line
	2950 1600 2950 2400
Wire Wire Line
	2950 2400 3000 2400
Connection ~ 2950 1600
Wire Wire Line
	2950 3350 3100 3350
Connection ~ 2950 2400
Wire Wire Line
	2950 3350 2950 4050
Wire Wire Line
	2950 4050 3100 4050
Connection ~ 2950 3350
Wire Wire Line
	2750 2100 2750 2850
Wire Wire Line
	2750 4150 3050 4150
Connection ~ 2750 2100
Wire Wire Line
	3050 4150 3050 4250
Wire Wire Line
	3050 4250 3100 4250
Connection ~ 3050 4150
Wire Wire Line
	3050 4150 3100 4150
Wire Wire Line
	2400 1900 2400 3150
Wire Wire Line
	2400 3850 3100 3850
Connection ~ 2400 1900
Wire Wire Line
	2400 1900 3000 1900
Wire Wire Line
	3000 1700 2600 1700
Text Label 2150 1700 2    50   ~ 0
RESET
Wire Wire Line
	3100 3450 2600 3450
Wire Wire Line
	2600 3450 2600 2650
Connection ~ 2600 1700
Wire Wire Line
	3000 1400 2850 1400
Wire Wire Line
	2850 1400 2850 2950
Wire Wire Line
	2850 4350 3050 4350
Wire Wire Line
	3050 4350 3050 4450
Wire Wire Line
	3050 4450 3100 4450
Connection ~ 3050 4350
Wire Wire Line
	3050 4350 3100 4350
Wire Wire Line
	3050 4450 3050 4550
Wire Wire Line
	3050 4550 3100 4550
Connection ~ 3050 4450
Wire Wire Line
	3050 4550 3050 4650
Wire Wire Line
	3050 4650 3100 4650
Connection ~ 3050 4550
$Comp
L device:Q_NMOS_GSD Q5
U 1 1 5BFEC434
P 2750 5600
F 0 "Q5" H 2955 5646 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 2955 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2950 5700 50  0001 C CNN
F 3 "~" H 2750 5600 50  0001 C CNN
	1    2750 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5BFEC45C
P 2850 6150
F 0 "#PWR0137" H 2850 5900 50  0001 C CNN
F 1 "GND" H 2855 5977 50  0000 C CNN
F 2 "" H 2850 6150 50  0001 C CNN
F 3 "" H 2850 6150 50  0001 C CNN
	1    2850 6150
	1    0    0    -1  
$EndComp
$Comp
L device:R R7
U 1 1 5BFEC48F
P 2450 5850
F 0 "R7" H 2520 5896 50  0000 L CNN
F 1 "10k" H 2520 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2380 5850 50  0001 C CNN
F 3 "~" H 2450 5850 50  0001 C CNN
	1    2450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5800 2850 6100
Wire Wire Line
	2450 6000 2450 6100
Wire Wire Line
	2450 6100 2850 6100
Connection ~ 2850 6100
Wire Wire Line
	2850 6100 2850 6150
Wire Wire Line
	2550 5600 2450 5600
Wire Wire Line
	2450 5600 2450 5700
$Comp
L device:R R8
U 1 1 5BFEF7BA
P 2850 5150
F 0 "R8" H 2920 5196 50  0000 L CNN
F 1 "22R" H 2920 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 5150 50  0001 C CNN
F 3 "~" H 2850 5150 50  0001 C CNN
	1    2850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4350 2850 5000
Connection ~ 2850 4350
Wire Wire Line
	2850 5300 2850 5400
Wire Wire Line
	3100 3950 2350 3950
Wire Wire Line
	2350 3950 2350 2400
Text Label 2150 2400 2    50   ~ 0
MISO
Wire Wire Line
	2450 5600 2450 4050
Wire Wire Line
	2450 4050 2300 4050
Wire Wire Line
	2300 4050 2300 2500
Connection ~ 2450 5600
Text Label 2150 2500 2    50   ~ 0
LED
Text HLabel 900  1600 0    50   Input ~ 0
+3V3
Text HLabel 900  1700 0    50   Input ~ 0
RESET
Text HLabel 900  1800 0    50   Input ~ 0
DC
Text HLabel 900  1900 0    50   Input ~ 0
MOSI
Text HLabel 900  2000 0    50   Input ~ 0
SCK
Text HLabel 900  2100 0    50   Input ~ 0
CS
Text HLabel 900  2200 0    50   Output ~ 0
MISO
Text HLabel 900  2300 0    50   Input ~ 0
LED
Text HLabel 900  2400 0    50   BiDi ~ 0
GND
Wire Wire Line
	900  1700 2600 1700
Wire Wire Line
	900  1800 2500 1800
Wire Wire Line
	900  1900 2400 1900
Wire Wire Line
	900  2000 2550 2000
Wire Wire Line
	900  2100 1500 2100
Wire Wire Line
	1500 2100 1500 2300
Wire Wire Line
	1500 2300 2450 2300
Wire Wire Line
	1400 2400 1400 2200
Wire Wire Line
	1400 2200 900  2200
Wire Wire Line
	1400 2400 2350 2400
Wire Wire Line
	900  2300 1300 2300
Wire Wire Line
	1300 2300 1300 2500
Wire Wire Line
	1300 2500 2300 2500
$Comp
L power:GND #PWR0138
U 1 1 5BFFE5E2
P 1000 2450
F 0 "#PWR0138" H 1000 2200 50  0001 C CNN
F 1 "GND" H 1005 2277 50  0000 C CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "" H 1000 2450 50  0001 C CNN
	1    1000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2400 1000 2400
Wire Wire Line
	1000 2400 1000 2450
$Comp
L power:+3V3 #PWR0139
U 1 1 5C0000DA
P 1000 1500
F 0 "#PWR0139" H 1000 1350 50  0001 C CNN
F 1 "+3V3" H 1015 1673 50  0000 C CNN
F 2 "" H 1000 1500 50  0001 C CNN
F 3 "" H 1000 1500 50  0001 C CNN
	1    1000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1600 1000 1600
Wire Wire Line
	1000 1600 1000 1500
$Comp
L ERC12864FS-12.1:ERC12864FS-12.1 LCD3
U 1 1 5C0727BE
P 6050 3150
F 0 "LCD3" H 6050 4215 50  0000 C CNN
F 1 "ERC12864FS-12.1" H 6050 4124 50  0000 C CNN
F 2 "modules:ERC12864-12.1" H 6050 3150 50  0001 C CNN
F 3 "" H 6050 3150 50  0001 C CNN
	1    6050 3150
	-1   0    0    -1  
$EndComp
$Comp
L device:C C12
U 1 1 5C076516
P 6700 2100
F 0 "C12" H 6585 2054 50  0000 R CNN
F 1 "1uF" H 6585 2145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6738 1950 50  0001 C CNN
F 3 "~" H 6700 2100 50  0001 C CNN
	1    6700 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 2250 6700 2350
Wire Wire Line
	6700 2350 6500 2350
$Comp
L power:GND #PWR0141
U 1 1 5C078314
P 6700 1800
F 0 "#PWR0141" H 6700 1550 50  0001 C CNN
F 1 "GND" H 6705 1627 50  0000 C CNN
F 2 "" H 6700 1800 50  0001 C CNN
F 3 "" H 6700 1800 50  0001 C CNN
	1    6700 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 1800 6700 1950
$Comp
L device:C C14
U 1 1 5C07A147
P 6950 2450
F 0 "C14" V 7000 2600 50  0000 C CNN
F 1 "1uF" V 7000 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6988 2300 50  0001 C CNN
F 3 "~" H 6950 2450 50  0001 C CNN
	1    6950 2450
	0    -1   -1   0   
$EndComp
$Comp
L device:C C18
U 1 1 5C07A1C5
P 7300 2650
F 0 "C18" V 7552 2650 50  0000 C CNN
F 1 "1uF" V 7461 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7338 2500 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
	1    7300 2650
	0    -1   -1   0   
$EndComp
$Comp
L device:C C13
U 1 1 5C07A1F7
P 6900 2850
F 0 "C13" V 6850 3000 50  0000 C CNN
F 1 "1uF" V 6850 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6938 2700 50  0001 C CNN
F 3 "~" H 6900 2850 50  0001 C CNN
	1    6900 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2450 6800 2450
Wire Wire Line
	7150 2650 6500 2650
Wire Wire Line
	7500 2550 7500 2650
Wire Wire Line
	7500 2650 7450 2650
Wire Wire Line
	6500 2550 7500 2550
Wire Wire Line
	7100 2450 7500 2450
Wire Wire Line
	7500 2450 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	6500 2850 6750 2850
Wire Wire Line
	6500 2750 7100 2750
Wire Wire Line
	7100 2750 7100 2850
Wire Wire Line
	7100 2850 7050 2850
$Comp
L device:C C15
U 1 1 5C088A6A
P 7250 2950
F 0 "C15" V 7300 2850 50  0000 C CNN
F 1 "1uF" V 7200 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7288 2800 50  0001 C CNN
F 3 "~" H 7250 2950 50  0001 C CNN
	1    7250 2950
	0    -1   -1   0   
$EndComp
$Comp
L device:C C19
U 1 1 5C088A9A
P 7550 3050
F 0 "C19" V 7600 2950 50  0000 C CNN
F 1 "1uF" V 7500 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 2900 50  0001 C CNN
F 3 "~" H 7550 3050 50  0001 C CNN
	1    7550 3050
	0    -1   -1   0   
$EndComp
$Comp
L device:C C16
U 1 1 5C088AD6
P 7250 3150
F 0 "C16" V 7300 3050 50  0000 C CNN
F 1 "1uF" V 7200 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7288 3000 50  0001 C CNN
F 3 "~" H 7250 3150 50  0001 C CNN
	1    7250 3150
	0    -1   -1   0   
$EndComp
$Comp
L device:C C20
U 1 1 5C088B08
P 7550 3250
F 0 "C20" V 7600 3150 50  0000 C CNN
F 1 "1uF" V 7500 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 3100 50  0001 C CNN
F 3 "~" H 7550 3250 50  0001 C CNN
	1    7550 3250
	0    -1   -1   0   
$EndComp
$Comp
L device:C C17
U 1 1 5C088B3C
P 7250 3350
F 0 "C17" V 7300 3250 50  0000 C CNN
F 1 "1uF" V 7200 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7288 3200 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7250 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2950 7100 2950
Wire Wire Line
	6500 3050 7400 3050
Wire Wire Line
	6500 3150 7100 3150
Wire Wire Line
	6500 3250 7400 3250
Wire Wire Line
	6500 3350 7100 3350
Wire Wire Line
	7400 2950 7850 2950
Wire Wire Line
	7850 2950 7850 3050
Wire Wire Line
	7850 3350 7400 3350
Wire Wire Line
	7700 3250 7850 3250
Connection ~ 7850 3250
Wire Wire Line
	7850 3250 7850 3350
Wire Wire Line
	7400 3150 7850 3150
Connection ~ 7850 3150
Wire Wire Line
	7850 3150 7850 3250
Wire Wire Line
	7700 3050 7850 3050
Connection ~ 7850 3050
Wire Wire Line
	7850 3050 7850 3150
$Comp
L power:+3V3 #PWR0142
U 1 1 5C09F858
P 7850 2850
F 0 "#PWR0142" H 7850 2700 50  0001 C CNN
F 1 "+3V3" H 7865 3023 50  0000 C CNN
F 2 "" H 7850 2850 50  0001 C CNN
F 3 "" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2850 7850 2950
Connection ~ 7850 2950
$Comp
L power:GND #PWR0143
U 1 1 5C0A25C6
P 6850 3750
F 0 "#PWR0143" H 6850 3500 50  0001 C CNN
F 1 "GND" H 6855 3577 50  0000 C CNN
F 2 "" H 6850 3750 50  0001 C CNN
F 3 "" H 6850 3750 50  0001 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3650 6850 3650
Wire Wire Line
	6850 3650 6850 3750
Wire Wire Line
	6500 3550 6850 3550
Wire Wire Line
	6850 3550 6850 3650
Connection ~ 6850 3650
$Comp
L device:C C11
U 1 1 5C0A8561
P 5200 3950
F 0 "C11" H 5150 3850 50  0000 R CNN
F 1 "0.1uF" H 5150 4050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 3800 50  0001 C CNN
F 3 "~" H 5200 3950 50  0001 C CNN
	1    5200 3950
	-1   0    0    1   
$EndComp
$Comp
L device:C C10
U 1 1 5C0A8620
P 4900 3950
F 0 "C10" H 4850 3850 50  0000 R CNN
F 1 "10uF" H 4850 4050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 3800 50  0001 C CNN
F 3 "~" H 4900 3950 50  0001 C CNN
	1    4900 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 3800 4900 3750
Wire Wire Line
	4900 3750 5200 3750
Wire Wire Line
	5200 3800 5200 3750
Connection ~ 5200 3750
Wire Wire Line
	5200 3750 5600 3750
$Comp
L power:GND #PWR0144
U 1 1 5C0B1CCB
P 5550 4000
F 0 "#PWR0144" H 5550 3750 50  0001 C CNN
F 1 "GND" H 5555 3827 50  0000 C CNN
F 2 "" H 5550 4000 50  0001 C CNN
F 3 "" H 5550 4000 50  0001 C CNN
	1    5550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4000 5550 3850
Wire Wire Line
	5550 3850 5600 3850
$Comp
L power:GND #PWR0145
U 1 1 5C0B5247
P 4900 4200
F 0 "#PWR0145" H 4900 3950 50  0001 C CNN
F 1 "GND" H 4905 4027 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4200 4900 4150
Wire Wire Line
	4900 4150 5200 4150
Wire Wire Line
	5200 4150 5200 4100
Connection ~ 4900 4150
Wire Wire Line
	4900 4150 4900 4100
NoConn ~ 6500 3850
NoConn ~ 5600 2350
$Comp
L power:+3V3 #PWR0146
U 1 1 5C0C31B3
P 4900 3650
F 0 "#PWR0146" H 4900 3500 50  0001 C CNN
F 1 "+3V3" H 4915 3823 50  0000 C CNN
F 2 "" H 4900 3650 50  0001 C CNN
F 3 "" H 4900 3650 50  0001 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3650 4900 3750
Connection ~ 4900 3750
Wire Wire Line
	2950 2400 2950 3350
Wire Wire Line
	2950 1050 2950 1300
Connection ~ 2950 1300
Wire Wire Line
	5600 2450 4750 2450
Wire Wire Line
	4750 2450 4750 2600
Wire Wire Line
	4750 2600 2450 2600
Connection ~ 2450 2600
Wire Wire Line
	2450 2600 2450 3750
Wire Wire Line
	5600 2550 4850 2550
Wire Wire Line
	4850 2550 4850 2650
Wire Wire Line
	4850 2650 2600 2650
Connection ~ 2600 2650
Wire Wire Line
	2600 2650 2600 1700
Wire Wire Line
	2500 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2650
Wire Wire Line
	4950 2650 5600 2650
Connection ~ 2500 2700
Wire Wire Line
	2500 2700 2500 3650
Wire Wire Line
	5600 2750 5550 2750
Wire Wire Line
	5550 2750 5550 2850
Wire Wire Line
	5550 2850 5600 2850
$Comp
L power:+3V3 #PWR0147
U 1 1 5C0DAA08
P 5450 2850
F 0 "#PWR0147" H 5450 2700 50  0001 C CNN
F 1 "+3V3" V 5465 2978 50  0000 L CNN
F 2 "" H 5450 2850 50  0001 C CNN
F 3 "" H 5450 2850 50  0001 C CNN
	1    5450 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2850 5550 2850
Connection ~ 5550 2850
Wire Wire Line
	5600 3650 5200 3650
Wire Wire Line
	5200 3650 5200 3150
Wire Wire Line
	5200 3150 2400 3150
Connection ~ 2400 3150
Wire Wire Line
	2400 3150 2400 3850
Wire Wire Line
	2550 3100 5300 3100
Wire Wire Line
	5300 3100 5300 3550
Wire Wire Line
	5300 3550 5600 3550
Connection ~ 2550 3100
Wire Wire Line
	2550 3100 2550 2000
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C0E9756
P 4400 2850
F 0 "J5" H 4480 2842 50  0000 L CNN
F 1 "Conn_01x02" H 4480 2751 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 4400 2850 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2950 2850 2950
Connection ~ 2850 2950
Wire Wire Line
	2850 2950 2850 4350
Wire Wire Line
	4200 2850 2750 2850
Connection ~ 2750 2850
Wire Wire Line
	2750 2850 2750 4150
NoConn ~ 5600 2950
NoConn ~ 5600 3050
NoConn ~ 5600 3150
NoConn ~ 5600 3250
NoConn ~ 5600 3350
NoConn ~ 5600 3450
NoConn ~ 3100 4750
NoConn ~ 3100 4850
NoConn ~ 3100 4950
NoConn ~ 3100 5050
Text Label 2850 4600 2    50   ~ 0
LEDK
$EndSCHEMATC
