v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -490 -520 -420 -520 {lab=#net1}
N -420 -520 -420 -360 {lab=#net1}
N -420 -360 -410 -360 {lab=#net1}
N -490 -500 -430 -500 {lab=#net2}
N -430 -500 -430 -340 {lab=#net2}
N -430 -340 -410 -340 {lab=#net2}
N -410 -360 -250 -360 {lab=#net1}
N -250 -410 -250 -360 {lab=#net1}
N -410 -340 -230 -340 {lab=#net2}
N -230 -410 -230 -340 {lab=#net2}
N -70 -540 50 -540 {lab=#net3}
N -50 -520 50 -520 {lab=#net4}
N -50 -520 -50 -340 {lab=#net4}
N -110 -340 -50 -340 {lab=#net4}
N -350 -570 -350 -530 {lab=#net4}
N -350 -530 -120 -530 {lab=#net4}
N -120 -530 -120 -490 {lab=#net4}
N -120 -490 -50 -490 {lab=#net4}
N -220 -610 -220 -530 {lab=#net4}
N -250 -450 -250 -410 {lab=#net1}
N -250 -450 -20 -450 {lab=#net1}
N -20 -500 -20 -450 {lab=#net1}
N -20 -500 50 -500 {lab=#net1}
N -230 -410 0 -410 {lab=#net2}
N 0 -480 0 -410 {lab=#net2}
N 0 -480 50 -480 {lab=#net2}
N 350 -520 410 -520 {lab=#net5}
N -490 -720 -490 -540 {lab=VDD}
N -490 -720 710 -720 {lab=VDD}
N 710 -720 710 -520 {lab=VDD}
N 350 -720 350 -540 {lab=VDD}
N -300 -720 -300 -640 {lab=VDD}
N -110 -720 -110 -360 {lab=VDD}
N -490 -480 -490 -290 {lab=GND}
N -490 -290 720 -290 {lab=GND}
N 720 -490 720 -290 {lab=GND}
N 710 -490 720 -490 {lab=GND}
N 710 -490 710 -480 {lab=GND}
N -110 -320 -110 -290 {lab=GND}
N -490 -440 -300 -440 {lab=GND}
N 350 -500 350 -290 {lab=GND}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF4.sym} 200 -510 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} -640 -510 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_VDD05.sym} -260 -340 0 0 {name=x3}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA.sym} -240 -540 0 0 {name=x4}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope.sym} 560 -500 0 0 {name=x5}
C {ipin.sym} -350 -510 0 0 {name=p1 lab=Vin}
C {iopin.sym} -20 -720 3 0 {name=p2 lab=VDD}
C {iopin.sym} 0 -290 1 0 {name=p3 lab=GND}
C {opin.sym} 710 -500 0 0 {name=p4 lab=Vout}
