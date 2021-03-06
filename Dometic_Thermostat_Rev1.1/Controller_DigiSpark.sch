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
LIBS:Thermostat
LIBS:Controller_DigiSpark-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Thermostat Controller- Digispark Micro"
Date "2017-04-25"
Rev "1.1"
Comp ""
Comment1 "Controller for Dometic RV fridge"
Comment2 "Relay controls AC heater"
Comment3 "U1 Min: 7805 Max: 7812"
Comment4 "U2 must be socketed, cannot be programmed in circuit"
$EndDescr
$Comp
L DigiSpark_rev2 U2
U 1 1 58FFB804
P 3800 2850
F 0 "U2" H 3900 3400 60  0000 C CNN
F 1 "DigiSpark_rev2" H 3900 2900 60  0000 C CNN
F 2 "COMPLIB:DIGISPARK_REV2" H 3900 2950 60  0001 C CNN
F 3 "" H 3900 2950 60  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 58FFB8F1
P 5150 2700
F 0 "RV1" H 5150 2620 50  0000 C CNN
F 1 "BIAS_POT" H 5150 2500 50  0000 C CNN
F 2 "COMPLIB:POT_3310P" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0000 C CNN
	1    5150 2700
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR01
U 1 1 58FFBA10
P 1200 1600
F 0 "#PWR01" H 1200 1450 50  0001 C CNN
F 1 "+12V" H 1200 1740 50  0000 C CNN
F 2 "" H 1200 1600 50  0000 C CNN
F 3 "" H 1200 1600 50  0000 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58FFBA2D
P 3900 3800
F 0 "#PWR02" H 3900 3550 50  0001 C CNN
F 1 "GND" H 3900 3650 50  0000 C CNN
F 2 "" H 3900 3800 50  0000 C CNN
F 3 "" H 3900 3800 50  0000 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH1
U 1 1 58FFBA6C
P 2550 3400
F 0 "TH1" V 2650 3450 50  0000 C CNN
F 1 "THERMISTOR" V 2450 3400 50  0000 C BNN
F 2 "COMPLIB:SolderWirePad_2x_1-5mmDrill-CUSTOMWIDE" H 2550 3400 50  0001 C CNN
F 3 "" H 2550 3400 50  0000 C CNN
	1    2550 3400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58FFBACF
P 4850 2900
F 0 "R2" V 4950 2900 50  0000 C CNN
F 1 "R" V 4850 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4780 2900 50  0001 C CNN
F 3 "" H 4850 2900 50  0000 C CNN
	1    4850 2900
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58FFC2C9
P 2550 2850
F 0 "R1" V 2650 2850 50  0000 C CNN
F 1 "R" V 2550 2850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2480 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0000 C CNN
	1    2550 2850
	-1   0    0    1   
$EndComp
$Comp
L 7805 U1
U 1 1 58FFC52B
P 1600 1800
F 0 "U1" H 1750 1604 50  0000 C CNN
F 1 "7805" H 1600 2000 50  0000 C CNN
F 2 "COMPLIB:TO-220_78XX_REGULATOR" H 1600 1800 50  0001 C CNN
F 3 "" H 1600 1800 50  0000 C CNN
	1    1600 1800
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58FFC6C2
P 5650 3150
F 0 "R3" V 5750 3150 50  0000 C CNN
F 1 "R" V 5650 3150 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5580 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0000 C CNN
	1    5650 3150
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BCE Q1
U 1 1 58FFC83C
P 6200 3150
F 0 "Q1" H 6500 3200 50  0000 R CNN
F 1 "Q_NPN_BCE" H 6800 3100 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-220_Horizontal" H 6400 3250 50  0001 C CNN
F 3 "" H 6200 3150 50  0000 C CNN
	1    6200 3150
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 58FFCA6B
P 5800 2050
F 0 "D2" H 5800 2150 50  0000 C CNN
F 1 "D" H 5800 1950 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_5W_P12.70mm_Horizontal" H 5800 2050 50  0001 C CNN
F 3 "" H 5800 2050 50  0000 C CNN
	1    5800 2050
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 58FFCB21
P 5000 3450
F 0 "D1" H 5000 3550 50  0000 C CNN
F 1 "LED" H 5000 3350 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0000 C CNN
	1    5000 3450
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR03
U 1 1 58FFD74D
P 6300 1200
F 0 "#PWR03" H 6300 1050 50  0001 C CNN
F 1 "+12V" H 6300 1340 50  0000 C CNN
F 2 "" H 6300 1200 50  0000 C CNN
F 3 "" H 6300 1200 50  0000 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 58FFE29F
P 4000 1350
F 0 "P1" H 4000 1500 50  0000 C CNN
F 1 "UNREG_12V_IN" V 4100 1350 50  0000 C CNN
F 2 "COMPLIB:SolderWirePad_2x_1-5mmDrill-CUSTOM" H 4000 1350 50  0001 C CNN
F 3 "" H 4000 1350 50  0000 C CNN
	1    4000 1350
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR04
U 1 1 58FFE324
P 5100 1150
F 0 "#PWR04" H 5100 1000 50  0001 C CNN
F 1 "+12V" H 5100 1290 50  0000 C CNN
F 2 "" H 5100 1150 50  0000 C CNN
F 3 "" H 5100 1150 50  0000 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58FFE365
P 5100 1550
F 0 "#PWR05" H 5100 1300 50  0001 C CNN
F 1 "GND" H 5100 1400 50  0000 C CNN
F 2 "" H 5100 1550 50  0000 C CNN
F 3 "" H 5100 1550 50  0000 C CNN
	1    5100 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 58FFE79D
P 8100 2500
F 0 "P3" H 8100 2650 50  0000 C CNN
F 1 "RELAY_SW_OUT" V 8200 2500 50  0000 C CNN
F 2 "COMPLIB:SolderWirePad_2x_1-5mmDrill-CUSTOM" H 8100 2500 50  0001 C CNN
F 3 "" H 8100 2500 50  0000 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 58FFEBFE
P 2900 2750
F 0 "P2" H 2900 2900 50  0000 C CNN
F 1 "UNUSED_MICRO_PINS" V 3000 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 2900 2750 50  0001 C CNN
F 3 "" H 2900 2750 50  0000 C CNN
	1    2900 2750
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 58FFF370
P 2050 2000
F 0 "C1" H 2075 2100 50  0000 L CNN
F 1 "C" H 2075 1900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2088 1850 50  0001 C CNN
F 3 "" H 2050 2000 50  0000 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 58FFF3EB
P 2300 2000
F 0 "C2" H 2325 2100 50  0000 L CNN
F 1 "CP1" H 2325 1900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D14.0mm_P5.00mm" H 2300 2000 50  0001 C CNN
F 3 "" H 2300 2000 50  0000 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58FFF58E
P 4500 1350
F 0 "C3" H 4525 1450 50  0000 L CNN
F 1 "C" H 4525 1250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4538 1200 50  0001 C CNN
F 3 "" H 4500 1350 50  0000 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 58FFF664
P 4800 1350
F 0 "C4" H 4825 1450 50  0000 L CNN
F 1 "CP1" H 4825 1250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D14.0mm_P5.00mm" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0000 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2700 4550 2700
Wire Wire Line
	5150 2100 5150 2550
Wire Wire Line
	4550 2900 4700 2900
Wire Wire Line
	3900 3500 3900 3800
Wire Wire Line
	2550 3000 2550 3150
Wire Wire Line
	3200 3100 2550 3100
Connection ~ 2550 3100
Wire Wire Line
	2550 3650 6300 3650
Connection ~ 3900 3650
Wire Wire Line
	2550 2700 2550 2100
Wire Wire Line
	2550 2100 5150 2100
Wire Wire Line
	4100 2100 4100 2200
Wire Wire Line
	2000 1750 3700 1750
Wire Wire Line
	3700 1750 3700 2200
Wire Wire Line
	1600 3800 3350 3800
Wire Wire Line
	3350 3800 3350 3650
Connection ~ 3350 3650
Connection ~ 4100 2100
Wire Wire Line
	5000 2900 5000 3250
Wire Wire Line
	5150 3650 5150 2850
Connection ~ 5000 3650
Wire Wire Line
	4550 3150 5500 3150
Wire Wire Line
	5800 3150 6000 3150
Wire Wire Line
	6300 3650 6300 3350
Connection ~ 5150 3650
Wire Wire Line
	5800 2200 5800 2850
Wire Wire Line
	5800 2850 6300 2850
Wire Wire Line
	6300 2700 6300 2950
Connection ~ 6300 2850
Wire Wire Line
	6300 1200 6300 1400
Wire Wire Line
	5800 1900 5800 1300
Wire Wire Line
	5800 1300 6300 1300
Connection ~ 6300 1300
Wire Wire Line
	3100 2700 3200 2700
Wire Wire Line
	3100 2800 3100 2900
Wire Wire Line
	3100 2900 3200 2900
Wire Wire Line
	4200 1550 5100 1550
Wire Wire Line
	4800 1550 4800 1500
Wire Wire Line
	4500 1550 4500 1500
Connection ~ 4800 1550
Wire Wire Line
	4200 1550 4200 1400
Connection ~ 4500 1550
Wire Wire Line
	4200 1300 4200 1150
Wire Wire Line
	4200 1150 5100 1150
Wire Wire Line
	4500 1150 4500 1200
Wire Wire Line
	4800 1150 4800 1200
Connection ~ 4500 1150
Connection ~ 4800 1150
Wire Wire Line
	2300 1750 2300 1850
Connection ~ 2300 1750
Wire Wire Line
	2050 1750 2050 1850
Connection ~ 2050 1750
Wire Wire Line
	1200 1600 1200 1750
$Comp
L Relay_SPDT T1
U 1 1 59001C1D
P 6650 2100
F 0 "T1" H 6800 2700 60  0000 C CNN
F 1 "Relay_SPDT" H 6700 2400 60  0000 C CNN
F 2 "COMPLIB:RLY_JSM1-12V-5" H 6650 2100 60  0001 C CNN
F 3 "" H 6650 2100 60  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 59001D3A
P 8050 1700
F 0 "P4" H 8050 1800 50  0000 C CNN
F 1 "RELAY_NC" V 8150 1700 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 8050 1700 50  0001 C CNN
F 3 "" H 8050 1700 50  0000 C CNN
	1    8050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2400 7900 2400
Wire Wire Line
	7900 2400 7900 2450
Wire Wire Line
	7900 2700 7900 2550
Wire Wire Line
	7700 1700 7850 1700
$Comp
L CONN_01X02 P5
U 1 1 59003029
P 7300 2900
F 0 "P5" H 7300 3050 50  0000 C CNN
F 1 "FUSE_BLOCK" V 7400 2900 50  0000 C CNN
F 2 "COMPLIB:Fuse_Block_Blade" H 7300 2900 50  0001 C CNN
F 3 "" H 7300 2900 50  0000 C CNN
	1    7300 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2700 7250 2700
Wire Wire Line
	7350 2700 7900 2700
$Comp
L CONN_01X03 P6
U 1 1 59003DCE
P 900 2250
F 0 "P6" H 900 2450 50  0000 C CNN
F 1 "AUX_VOLT_CONN" V 1000 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 900 2250 50  0001 C CNN
F 3 "" H 900 2250 50  0000 C CNN
	1    900  2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 2150 1100 1750
Wire Wire Line
	1100 1750 1200 1750
Wire Wire Line
	1100 2350 2500 2350
Wire Wire Line
	2500 2350 2500 1750
Connection ~ 2500 1750
Wire Wire Line
	1600 2050 1600 3800
Wire Wire Line
	2050 2150 2050 2250
Wire Wire Line
	2050 2250 1100 2250
Wire Wire Line
	1600 2250 2300 2250
Wire Wire Line
	2300 2250 2300 2150
Connection ~ 1600 2250
Connection ~ 2050 2250
$EndSCHEMATC
