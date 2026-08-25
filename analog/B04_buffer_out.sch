v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 840 -120 880 {lab=#net1}
N -100 840 -100 880 {lab=#net2}
N -80 840 -80 880 {lab=#net3}
N -60 840 -60 880 {lab=#net4}
N -120 570 -120 840 {lab=#net1}
N -100 570 -100 840 {lab=#net2}
N -80 570 -80 840 {lab=#net3}
N -60 570 -60 840 {lab=#net4}
N -140 830 -140 870 {lab=#net5}
N -260 870 -140 870 {lab=#net5}
N -260 870 -260 880 {lab=#net5}
N -140 560 -140 830 {lab=#net5}
N -130 350 -130 620 {lab=#net6}
N -130 350 -130 370 {lab=#net6}
N -280 340 -280 880 {lab=#net6}
N -280 340 -130 340 {lab=#net6}
N -130 340 -130 350 {lab=#net6}
N -530 340 -280 340 {lab=#net6}
N -530 860 -250 870 {lab=#net5}
N -170 480 110 480 {lab=Vbpf}
N 110 450 110 480 {lab=Vbpf}
N -170 750 110 750 {lab=Venvelope}
N 110 720 110 750 {lab=Venvelope}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA_bias_ratio_5.sym} -160 960 0 0 {name=x8}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA.sym} -70 710 0 0 {name=x9}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA.sym} -70 440 0 0 {name=x10}
C {opin.sym} 110 450 0 0 {name=p8 lab=Vbpf}
C {opin.sym} 110 720 0 0 {name=p9 lab=Venvelope}
C {ipin.sym} -170 410 0 0 {name=p1 lab=Vinbpf}
C {ipin.sym} -170 680 0 0 {name=p2 lab=Vinenvelope}
C {ipin.sym} -320 950 0 0 {name=p3 lab=VbiasP}
C {ipin.sym} -320 970 0 0 {name=p4 lab=VbiasN}
C {iopin.sym} -530 860 2 0 {name=p5 lab=GND}
C {iopin.sym} -530 340 2 0 {name=p6 lab=VDD}
