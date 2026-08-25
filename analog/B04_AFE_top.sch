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
N -210 80 -180 80 {lab=#net1}
N -760 180 -460 180 {lab=GND}
N -900 -20 -460 -20 {lab=VDD}
N -760 100 -670 100 {lab=Vin}
N -500 -20 -500 260 {lab=VDD}
N -500 320 -430 320 {lab=GND}
N -430 180 -430 320 {lab=GND}
N -370 120 -370 180 {lab=GND}
N -370 -20 -370 80 {lab=VDD}
N -250 90 -230 90 {lab=#net1}
N -230 80 -230 90 {lab=#net1}
N -230 80 -210 80 {lab=#net1}
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
N -150 460 -100 460 {lab=#net3}
N -100 100 -100 460 {lab=#net3}
N -180 100 -100 100 {lab=#net3}
N -180 140 -180 410 {lab=VbiasN}
N -480 410 -180 410 {lab=VbiasN}
N -190 120 -180 120 {lab=VbiasP}
N -190 120 -190 390 {lab=VbiasP}
N -470 390 -190 390 {lab=VbiasP}
N -250 90 -250 120 {lab=#net1}
N -310 90 -310 310 {lab=#net2}
N -310 310 -290 310 {lab=#net2}
N -290 350 -100 350 {lab=#net3}
N -290 330 -290 350 {lab=#net3}
N 10 290 10 310 {lab=#net1}
N -250 290 10 290 {lab=#net1}
N -250 120 -250 290 {lab=#net1}
N -30 -20 120 -20 {lab=VDD}
N 120 -20 120 20 {lab=VDD}
N 120 60 120 180 {lab=GND}
N -30 180 120 180 {lab=GND}
N 120 40 160 40 {lab=#net4}
N -180 410 180 410 {lab=VbiasN}
N 170 60 180 410 {lab=VbiasN}
N 160 60 170 60 {lab=VbiasN}
N 460 -30 460 40 {lab=VDD}
N 120 -20 460 -30 {lab=VDD}
N 460 80 460 180 {lab=GND}
N 120 180 460 180 {lab=GND}
N 460 60 550 60 {lab=#net5}
N -190 390 550 390 {lab=VbiasP}
N 550 80 550 390 {lab=VbiasP}
N 460 -30 850 -30 {lab=VDD}
N 850 -30 850 40 {lab=VDD}
N 850 80 850 170 {lab=GND}
N 460 170 850 170 {lab=GND}
N -150 510 -150 950 {lab=GND}
N -390 440 -390 1040 {lab=VbiasP}
N -450 440 -390 440 {lab=VbiasP}
N -450 460 -450 1060 {lab=VbiasN}
N 130 40 130 530 {lab=#net4}
N 130 530 260 540 {lab=#net4}
N 490 60 490 560 {lab=#net5}
N 260 560 490 560 {lab=#net5}
N -390 580 260 580 {lab=VbiasP}
N -450 600 260 600 {lab=VbiasN}
N 560 600 560 630 {lab=GND}
N -150 630 560 630 {lab=GND}
N 560 440 560 540 {lab=VDD}
N -150 440 560 440 {lab=VDD}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNAv2.sym} -520 100 0 0 {name=x5}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} -650 290 0 0 {name=x3}
C {lab_pin.sym} -380 390 1 0 {name=p5 sig_type=std_logic lab=VbiasP}
C {lab_pin.sym} -350 410 1 0 {name=p6 sig_type=std_logic lab=VbiasN}
C {ipin.sym} -760 100 0 0 {name=p10 lab=Vin}
C {iopin.sym} -900 -20 2 0 {name=p2 lab=VDD}
C {iopin.sym} -760 180 2 0 {name=p11 lab=GND}
C {opin.sym} 850 60 0 0 {name=p12 lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_coupling.sym} -140 320 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_VDD05.sym} -300 460 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF4.sym} -30 80 0 0 {name=x4}
C {ipin.sym} -180 20 0 0 {name=p1 lab=Cap0}
C {ipin.sym} -180 40 0 0 {name=p3 lab=Cap1}
C {ipin.sym} -180 60 0 0 {name=p4 lab=Cap2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope.sym} 310 60 0 0 {name=x6}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_comparator.sym} 700 60 0 0 {name=x7}
C {ipin.sym} 550 40 0 0 {name=p7 lab=Vthreshold}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_buffer_out.sym} 410 570 0 0 {name=x8}
C {opin.sym} 560 560 0 0 {name=p8 lab=Vbpf}
C {opin.sym} 560 580 0 0 {name=p9 lab=Venvelope}
