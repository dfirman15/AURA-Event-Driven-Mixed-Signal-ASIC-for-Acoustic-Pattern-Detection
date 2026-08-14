v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -180 300 -180 {lab=VDD}
N 170 -550 170 -180 {lab=VDD}
N 170 -570 170 -550 {lab=VDD}
N 170 -570 320 -570 {lab=VDD}
N 320 -570 320 -540 {lab=VDD}
N 430 -180 430 -60 {lab=GND}
N 260 -60 430 -60 {lab=GND}
N 260 -300 260 -60 {lab=GND}
N 260 -300 310 -300 {lab=GND}
N 310 -330 310 -300 {lab=GND}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/OTA_bias.sym} 370 -170 3 0 {name=x1 length=\{R_length\}}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/folded_cascode_OTA.sym} 410 -440 0 0 {name=x2}
C {iopin.sym} 320 -570 3 0 {name=p1 lab=VDD}
C {iopin.sym} 320 -60 1 0 {name=p2 lab=GND}
C {ipin.sym} 280 -480 0 0 {name=p3 lab=Vin+}
C {ipin.sym} 280 -410 0 0 {name=p4 lab=Vin-}
C {opin.sym} 560 -440 0 0 {name=p5 lab=Vout}
