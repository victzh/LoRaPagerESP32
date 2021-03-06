EESchema Schematic File Version 4
LIBS:LoRaPagerESP32-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 5BEA6630
P 1650 2350
AR Path="/5BEA6630" Ref="J?"  Part="1" 
AR Path="/5BEA1EED/5BEA6630" Ref="J1"  Part="1" 
F 0 "J1" H 1755 3217 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1755 3126 50  0000 C CNN
F 2 "modules:USB_C_Receptacle_GT-USB-7010" H 1800 2350 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1800 2350 50  0001 C CNN
	1    1650 2350
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2104 U?
U 1 1 5BEA6637
P 4850 2450
AR Path="/5BEA6637" Ref="U?"  Part="1" 
AR Path="/5BEA1EED/5BEA6637" Ref="U6"  Part="1" 
F 0 "U6" H 4250 3450 50  0000 L CNN
F 1 "CP2104" H 4250 3350 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 5000 1500 50  0001 L CNN
F 3 "https://www.silabs.com/Support%20Documents/TechnicalDocs/cp2104.pdf" H 4300 3700 50  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2250 2250 2350
Wire Wire Line
	2250 2350 4150 2350
Wire Wire Line
	2250 2550 2250 2450
Wire Wire Line
	2250 2450 4150 2450
Text Label 2600 2350 0    50   ~ 0
D_N
Text Label 2600 2450 0    50   ~ 0
D_P
$Comp
L power:VBUS #PWR?
U 1 1 5BEA6646
P 2400 1350
AR Path="/5BEA6646" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6646" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2400 1200 50  0001 C CNN
F 1 "VBUS" H 2415 1523 50  0000 C CNN
F 2 "" H 2400 1350 50  0001 C CNN
F 3 "" H 2400 1350 50  0001 C CNN
	1    2400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1750 2400 1750
Wire Wire Line
	2400 1750 2400 1350
$Comp
L power:GND #PWR?
U 1 1 5BEA664E
P 1650 3350
AR Path="/5BEA664E" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA664E" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1650 3100 50  0001 C CNN
F 1 "GND" H 1655 3177 50  0000 C CNN
F 2 "" H 1650 3350 50  0001 C CNN
F 3 "" H 1650 3350 50  0001 C CNN
	1    1650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3250 1650 3300
$Comp
L power:GND #PWR?
U 1 1 5BEA6655
P 4850 3750
AR Path="/5BEA6655" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6655" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 4850 3500 50  0001 C CNN
F 1 "GND" H 4855 3577 50  0000 C CNN
F 2 "" H 4850 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0001 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3750 4850 3450
Wire Wire Line
	4850 3450 4950 3450
Connection ~ 4850 3450
Wire Wire Line
	5550 2350 5800 2350
Wire Wire Line
	5550 2450 5800 2450
Text Label 5800 2450 2    50   ~ 0
RXD
Text Label 5800 2350 2    50   ~ 0
TXD
$Comp
L power:VBUS #PWR?
U 1 1 5BEA6662
P 3650 1200
AR Path="/5BEA6662" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6662" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3650 1050 50  0001 C CNN
F 1 "VBUS" H 3665 1373 50  0000 C CNN
F 2 "" H 3650 1200 50  0001 C CNN
F 3 "" H 3650 1200 50  0001 C CNN
	1    3650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1400 3650 1600
Connection ~ 3650 1400
$Comp
L device:C C?
U 1 1 5BEA666D
P 3400 1400
AR Path="/5BEA666D" Ref="C?"  Part="1" 
AR Path="/5BEA1EED/5BEA666D" Ref="C5"  Part="1" 
F 0 "C5" V 3652 1400 50  0000 C CNN
F 1 "1uF" V 3561 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3438 1250 50  0001 C CNN
F 3 "~" H 3400 1400 50  0001 C CNN
	1    3400 1400
	0    -1   -1   0   
$EndComp
$Comp
L device:C C?
U 1 1 5BEA6674
P 3250 1600
AR Path="/5BEA6674" Ref="C?"  Part="1" 
AR Path="/5BEA1EED/5BEA6674" Ref="C4"  Part="1" 
F 0 "C4" V 3502 1600 50  0000 C CNN
F 1 "0.1uF" V 3411 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 1450 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BEA667B
P 3050 2100
AR Path="/5BEA667B" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA667B" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3050 1850 50  0001 C CNN
F 1 "GND" H 3055 1927 50  0000 C CNN
F 2 "" H 3050 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1400 3650 1400
Wire Wire Line
	3400 1600 3650 1600
Wire Wire Line
	3250 1400 3050 1400
Wire Wire Line
	3100 1600 3050 1600
Wire Wire Line
	3050 1600 3050 1400
$Comp
L device:C C?
U 1 1 5BEA6689
P 5150 1300
AR Path="/5BEA6689" Ref="C?"  Part="1" 
AR Path="/5BEA1EED/5BEA6689" Ref="C6"  Part="1" 
F 0 "C6" V 5402 1300 50  0000 C CNN
F 1 "1uF" V 5311 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 1150 50  0001 C CNN
F 3 "~" H 5150 1300 50  0001 C CNN
	1    5150 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BEA6690
P 5400 1300
AR Path="/5BEA6690" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6690" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 5400 1050 50  0001 C CNN
F 1 "GND" V 5405 1172 50  0000 R CNN
F 2 "" H 5400 1300 50  0001 C CNN
F 3 "" H 5400 1300 50  0001 C CNN
	1    5400 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 1550 4850 1300
Wire Wire Line
	4850 1300 5000 1300
Wire Wire Line
	5300 1300 5400 1300
Wire Wire Line
	5550 2650 5800 2650
Wire Wire Line
	5550 2050 5800 2050
Text Label 5800 2050 2    50   ~ 0
DTR
Text Label 5800 2650 2    50   ~ 0
RTS
Text HLabel 1500 4500 0    50   BiDi ~ 0
GND
$Comp
L power:GND #PWR?
U 1 1 5BEA6965
P 1650 4600
AR Path="/5BEA6965" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6965" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1650 4350 50  0001 C CNN
F 1 "GND" H 1655 4427 50  0000 C CNN
F 2 "" H 1650 4600 50  0001 C CNN
F 3 "" H 1650 4600 50  0001 C CNN
	1    1650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4500 1650 4500
Wire Wire Line
	1650 4500 1650 4600
$Comp
L power:VBUS #PWR?
U 1 1 5BEA6CAF
P 1650 4300
AR Path="/5BEA6CAF" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5BEA6CAF" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1650 4150 50  0001 C CNN
F 1 "VBUS" H 1665 4473 50  0000 C CNN
F 2 "" H 1650 4300 50  0001 C CNN
F 3 "" H 1650 4300 50  0001 C CNN
	1    1650 4300
	1    0    0    -1  
$EndComp
Text HLabel 1500 4400 0    50   Output ~ 0
VBUS
Wire Wire Line
	1500 4400 1650 4400
Wire Wire Line
	1650 4400 1650 4300
Text HLabel 5800 2050 2    50   Output ~ 0
DTR
Text HLabel 5800 2350 2    50   Output ~ 0
TXD
Text HLabel 5800 2450 2    50   Input ~ 0
RXD
Text HLabel 5800 2650 2    50   Output ~ 0
RTS
Wire Wire Line
	1350 3250 1350 3300
Wire Wire Line
	1350 3300 1650 3300
Connection ~ 1650 3300
Wire Wire Line
	1650 3300 1650 3350
NoConn ~ 2250 2850
NoConn ~ 2250 2950
Wire Wire Line
	4650 1550 4650 1300
Wire Wire Line
	4650 1300 4850 1300
Connection ~ 4850 1300
NoConn ~ 5550 1850
NoConn ~ 5550 1950
NoConn ~ 5550 2150
NoConn ~ 5550 2750
NoConn ~ 5550 3050
NoConn ~ 5550 3150
NoConn ~ 4150 2650
NoConn ~ 4150 2750
NoConn ~ 4150 2850
NoConn ~ 4150 2950
NoConn ~ 2250 1950
NoConn ~ 2250 2050
NoConn ~ 5050 1550
$Comp
L device:R R9
U 1 1 5C09DC5A
P 6600 2650
F 0 "R9" H 6670 2696 50  0000 L CNN
F 1 "10k" H 6670 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6530 2650 50  0001 C CNN
F 3 "~" H 6600 2650 50  0001 C CNN
	1    6600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2500 6600 2400
Wire Wire Line
	6600 2800 6600 2950
Wire Wire Line
	5550 2950 6600 2950
$Comp
L device:C C22
U 1 1 5C0A15C5
P 3950 3400
F 0 "C22" H 4065 3446 50  0000 L CNN
F 1 "4.7uF" H 4065 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3988 3250 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0A1BA2
P 3950 3650
AR Path="/5C0A1BA2" Ref="#PWR?"  Part="1" 
AR Path="/5BEA1EED/5C0A1BA2" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 3950 3400 50  0001 C CNN
F 1 "GND" H 3955 3477 50  0000 C CNN
F 2 "" H 3950 3650 50  0001 C CNN
F 3 "" H 3950 3650 50  0001 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3250
Wire Wire Line
	3950 3550 3950 3650
Wire Wire Line
	3650 1400 3650 1200
Wire Wire Line
	4650 1200 4650 1300
Connection ~ 4650 1300
$Comp
L device:R R25
U 1 1 5C40EF7E
P 3650 1850
F 0 "R25" H 3720 1896 50  0000 L CNN
F 1 "22.1k" H 3720 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3580 1850 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L device:R R24
U 1 1 5C40F636
P 3350 2050
F 0 "R24" H 3420 2096 50  0000 L CNN
F 1 "47.5k" H 3420 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3280 2050 50  0001 C CNN
F 3 "~" H 3350 2050 50  0001 C CNN
	1    3350 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1600 3050 2050
Connection ~ 3050 1600
Wire Wire Line
	3050 2050 3200 2050
Connection ~ 3050 2050
Wire Wire Line
	3050 2050 3050 2100
Wire Wire Line
	3500 2050 3650 2050
Wire Wire Line
	3650 2050 3650 2000
Wire Wire Line
	3650 2050 4150 2050
Connection ~ 3650 2050
Wire Wire Line
	3650 1700 3650 1600
Connection ~ 3650 1600
Wire Wire Line
	3650 1600 4000 1600
Wire Wire Line
	4000 1600 4000 1850
Wire Wire Line
	4000 1850 4150 1850
Connection ~ 2250 2350
Connection ~ 2250 2450
Text Notes 3100 4250 0    50   ~ 0
For CP2104 place 0Ohm as R25, don't place R24, place 4.7uF as C22\nFor CP2102N QFN24 place 22.1k as R25, place 47.5k as R24, don't place C22
$Comp
L power:VDD #PWR0128
U 1 1 5C41928F
P 6600 2400
F 0 "#PWR0128" H 6600 2250 50  0001 C CNN
F 1 "VDD" H 6617 2573 50  0000 C CNN
F 2 "" H 6600 2400 50  0001 C CNN
F 3 "" H 6600 2400 50  0001 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0148
U 1 1 5C419A85
P 4650 1200
F 0 "#PWR0148" H 4650 1050 50  0001 C CNN
F 1 "VDD" H 4667 1373 50  0000 C CNN
F 2 "" H 4650 1200 50  0001 C CNN
F 3 "" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5C41B7C1
P 4350 1200
F 0 "#FLG0105" H 4350 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 1373 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "~" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1200 4350 1300
Wire Wire Line
	4350 1300 4650 1300
$EndSCHEMATC
