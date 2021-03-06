EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x07_Male J1
U 1 1 5F2F8B52
P 8100 4550
F 0 "J1" H 8072 4574 50  0000 R CNN
F 1 "Conn_01x07_Male" H 8072 4483 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Horizontal" H 8100 4550 50  0001 C CNN
F 3 "~" H 8100 4550 50  0001 C CNN
	1    8100 4550
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5F2F74EA
P 6950 2500
F 0 "JP3" H 6950 2613 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6950 2614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6950 2500 50  0001 C CNN
F 3 "~" H 6950 2500 50  0001 C CNN
	1    6950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6400 2800
Wire Wire Line
	6750 2900 7050 2900
Wire Wire Line
	7500 3100 7500 3350
Wire Wire Line
	7500 3000 7500 3100
Wire Wire Line
	3800 3200 4050 3200
Wire Wire Line
	3800 3850 3800 4000
Wire Wire Line
	4050 3200 4650 3200
Text Notes 7500 2850 0    60   ~ 0
No pop when using the \nAmber back light.
Connection ~ 6400 2500
Wire Wire Line
	6400 2350 6100 2350
Connection ~ 6750 2900
Wire Wire Line
	6750 2800 6750 2900
Wire Wire Line
	7350 2800 6750 2800
Wire Wire Line
	7350 2500 7350 2800
Wire Wire Line
	7100 2500 7350 2500
Wire Wire Line
	6400 2500 6800 2500
Wire Wire Line
	6400 2350 6400 2500
$Comp
L power:GND #PWR04
U 1 1 59F77332
P 7500 3350
F 0 "#PWR04" H 7500 3100 50  0001 C CNN
F 1 "GND" H 7500 3200 50  0000 C CNN
F 2 "" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
Connection ~ 7500 3100
Wire Wire Line
	6650 3100 7500 3100
Connection ~ 7500 3000
Wire Wire Line
	6950 3000 7500 3000
Wire Wire Line
	7500 2900 7500 3000
Wire Wire Line
	7350 2900 7500 2900
$Comp
L Device:R R3
U 1 1 59F7720F
P 7200 2900
F 0 "R3" V 7150 3050 50  0000 C CNN
F 1 "10Ω" V 7200 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 59F771B5
P 6500 3100
F 0 "R1" V 6550 3250 50  0000 C CNN
F 1 "7Ω" V 6500 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 3100 50  0001 C CNN
F 3 "" H 6500 3100 50  0001 C CNN
	1    6500 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 59F7715F
P 6800 3000
F 0 "R2" V 6850 3150 50  0000 C CNN
F 1 "27Ω" V 6800 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6730 3000 50  0001 C CNN
F 3 "" H 6800 3000 50  0001 C CNN
F 4 "Value" H 6800 3000 60  0001 C CNN "Link"
	1    6800 3000
	0    1    1    0   
$EndComp
Text Label 6100 2350 0    60   ~ 0
Vdd
Wire Wire Line
	6050 3000 6650 3000
Wire Wire Line
	6050 2900 6750 2900
Wire Wire Line
	6050 3100 6350 3100
Wire Wire Line
	6400 2800 6050 2800
$Comp
L DisplayAdapter_DOGS104_symbols:EA_DOGS104x-A U1
U 1 1 59F76C38
P 5450 3100
F 0 "U1" H 4900 3700 60  0000 C CNN
F 1 "EA_DOGS104x-A" H 5350 3550 60  0000 C CNN
F 2 "DisplayAdapter_DOGS104_Footprints:EA_DOGS104x-A" H 5500 3000 60  0001 C CNN
F 3 "" H 5500 3000 60  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Text Label 6350 3300 2    60   ~ 0
~RESET
Text Label 6100 4300 2    60   ~ 0
~CS
Text Label 6100 4200 2    60   ~ 0
CLK
Text Label 6100 4000 2    60   ~ 0
MISO
Text Label 6100 4100 2    60   ~ 0
MOSI
Wire Wire Line
	6050 3300 6350 3300
Wire Wire Line
	5250 4300 6100 4300
Wire Wire Line
	5250 3850 5250 4300
Wire Wire Line
	5400 4200 6100 4200
Wire Wire Line
	5400 3850 5400 4200
Wire Wire Line
	5550 4100 6100 4100
Wire Wire Line
	5550 3850 5550 4100
Wire Wire Line
	5700 4000 6100 4000
Wire Wire Line
	5700 3850 5700 4000
Text Label 7500 4850 0    60   ~ 0
~RESET
Wire Wire Line
	7900 4850 7500 4850
Wire Wire Line
	7900 4750 7500 4750
Wire Wire Line
	7900 4650 7500 4650
Wire Wire Line
	7900 4550 7500 4550
Wire Wire Line
	7900 4450 7500 4450
Wire Wire Line
	7900 4350 7500 4350
Wire Wire Line
	7900 4250 7500 4250
Wire Wire Line
	5100 3850 5100 4000
Text Label 7500 4650 0    60   ~ 0
~CS
Text Label 7500 4550 0    60   ~ 0
CLK
Text Label 7500 4350 0    60   ~ 0
MISO
Text Label 7500 4450 0    60   ~ 0
MOSI
Text Label 7500 4750 0    60   ~ 0
GND
Text Label 3600 3200 0    60   ~ 0
GND
Connection ~ 3800 3200
Text Label 7500 4250 0    60   ~ 0
Vdd
Text Label 3600 2800 0    60   ~ 0
Vdd
Connection ~ 4050 2800
Connection ~ 3800 3850
Wire Wire Line
	4300 3850 3800 3850
Wire Wire Line
	4300 3800 4300 3850
Wire Wire Line
	4300 3400 4300 3500
Wire Wire Line
	4650 3400 4300 3400
$Comp
L Device:C C2
U 1 1 59F72CDF
P 4300 3650
F 0 "C2" H 4325 3750 50  0000 L CNN
F 1 "1μF 16V" H 4325 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4338 3500 50  0001 C CNN
F 3 "" H 4300 3650 50  0001 C CNN
F 4 "Value" H 4300 3650 60  0001 C CNN "Link"
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 59F72CC7
P 3800 4000
F 0 "#PWR03" H 3800 3750 50  0001 C CNN
F 1 "GND" H 3800 3850 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
Connection ~ 4050 3200
Wire Wire Line
	3800 3200 3800 3850
Wire Wire Line
	3600 3200 3800 3200
Wire Wire Line
	4050 3200 4050 3150
Wire Wire Line
	4050 2800 4050 2850
$Comp
L Device:C C1
U 1 1 59F72C5B
P 4050 3000
F 0 "C1" H 4075 3100 50  0000 L CNN
F 1 "1μF 16V" H 4075 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 2850 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
F 4 "Value" H 4050 3000 60  0001 C CNN "Link"
	1    4050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3000 4650 3000
Wire Wire Line
	3600 2800 4050 2800
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5F8E3EEB
P 2850 2850
F 0 "JP1" V 2902 2917 50  0000 L CNN
F 1 "SPI/~IIC" V 2804 2917 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2850 2850 50  0001 C CNN
F 3 "~" H 2850 2850 50  0001 C CNN
	1    2850 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 2800 4650 2800
Text Label 4450 3000 0    50   ~ 0
MODE
Wire Wire Line
	3000 2850 3250 2850
Text Label 3250 2850 2    50   ~ 0
MODE
$Comp
L power:GND #PWR01
U 1 1 5F8EB1C8
P 2850 3200
F 0 "#PWR01" H 2850 2950 50  0001 C CNN
F 1 "GND" H 2850 3050 50  0000 C CNN
F 2 "" H 2850 3200 50  0001 C CNN
F 3 "" H 2850 3200 50  0001 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3050 2850 3200
Wire Wire Line
	2850 2650 2850 2450
Wire Wire Line
	2850 2450 2550 2450
Text Label 2550 2450 0    50   ~ 0
Vdd
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5F901FB3
P 2850 4400
F 0 "JP2" V 2902 4467 50  0000 L CNN
F 1 "SPI/~IIC" V 2804 4467 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2850 4400 50  0001 C CNN
F 3 "~" H 2850 4400 50  0001 C CNN
	1    2850 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 4400 3250 4400
$Comp
L power:GND #PWR02
U 1 1 5F901FBF
P 2850 4750
F 0 "#PWR02" H 2850 4500 50  0001 C CNN
F 1 "GND" H 2850 4600 50  0000 C CNN
F 2 "" H 2850 4750 50  0001 C CNN
F 3 "" H 2850 4750 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4600 2850 4750
Wire Wire Line
	2850 4200 2850 4000
Wire Wire Line
	2850 4000 2550 4000
Text Label 2550 4000 0    50   ~ 0
Vdd
Wire Wire Line
	5100 4000 4850 4000
Text Label 4850 4000 0    50   ~ 0
SA0
Text Label 3250 4400 2    50   ~ 0
SA0
Text Notes 2900 4050 0    50   ~ 0
0x7A
Text Notes 2900 4750 0    50   ~ 0
0x78
$EndSCHEMATC
