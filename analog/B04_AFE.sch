v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -460 -20 -30 -20 {lab=VDD}
N -460 180 -60 180 {lab=GND}
N -60 180 -30 180 {lab=GND}
N -210 80 -180 80 {lab=Vlna}
N -760 180 -460 180 {lab=GND}
N -900 -20 -460 -20 {lab=VDD}
N -760 100 -670 100 {lab=Vin}
N -500 -20 -500 260 {lab=VDD}
N -500 320 -430 320 {lab=GND}
N -430 180 -430 320 {lab=GND}
N -370 120 -370 180 {lab=GND}
N -370 -20 -370 80 {lab=VDD}
N -250 90 -230 90 {lab=Vlna}
N -230 80 -230 90 {lab=Vlna}
N -230 80 -210 80 {lab=Vlna}
N -370 90 -310 90 {lab=#net2}
N -370 90 -370 100 {lab=#net2}
N -500 280 -470 280 {lab=VbiasP}
N -470 80 -470 280 {lab=VbiasP}
N -670 80 -470 80 {lab=VbiasP}
N -500 280 -470 280 {lab=VbiasP}
N -470 280 -470 440 {lab=VbiasP}
N -470 440 -450 440 {lab=VbiasP}
N -500 300 -480 300 {lab=VbiasN}
N -480 300 -480 460 {lab=VbiasN}
N -480 460 -450 460 {lab=VbiasN}
N -150 480 -150 510 {lab=GND}
N -500 510 -150 510 {lab=GND}
N -500 320 -500 510 {lab=GND}
N -150 -20 -150 440 {lab=VDD}
N -150 460 -100 460 {lab=VDD05}
N -100 100 -100 460 {lab=VDD05}
N -180 100 -100 100 {lab=VDD05}
N -180 140 -180 410 {lab=VbiasN}
N -480 410 -180 410 {lab=VbiasN}
N -190 120 -180 120 {lab=VbiasP}
N -190 120 -190 390 {lab=VbiasP}
N -470 390 -190 390 {lab=VbiasP}
N -250 90 -250 120 {lab=Vlna}
N -310 90 -310 310 {lab=#net2}
N -310 310 -290 310 {lab=#net2}
N -290 350 -100 350 {lab=VDD05}
N -290 330 -290 350 {lab=VDD05}
N 10 290 10 310 {lab=Vlna}
N -250 290 10 290 {lab=Vlna}
N -250 120 -250 290 {lab=Vlna}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNAv2.sym} -520 100 0 0 {name=x5}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} -650 290 0 0 {name=x3}
C {lab_pin.sym} -380 390 1 0 {name=p5 sig_type=std_logic lab=VbiasP}
C {lab_pin.sym} -350 410 1 0 {name=p6 sig_type=std_logic lab=VbiasN}
C {ipin.sym} -760 100 0 0 {name=p10 lab=Vin}
C {iopin.sym} -900 -20 2 0 {name=p2 lab=VDD}
C {iopin.sym} -760 180 2 0 {name=p11 lab=GND}
C {opin.sym} -180 80 0 0 {name=p12 lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_coupling.sym} -140 320 0 0 {name=x2}
C {ipin.sym} -150 460 0 0 {name=p7 lab=VDD05}
