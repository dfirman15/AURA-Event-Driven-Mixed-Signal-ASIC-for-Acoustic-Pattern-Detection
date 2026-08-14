v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 170 -10 170 {lab=#net1}
N -10 120 -10 170 {lab=#net1}
N -70 210 10 210 {lab=#net2}
N 10 120 10 210 {lab=#net2}
N -220 -160 -220 130 {lab=#net3}
N -220 -160 -60 -160 {lab=#net3}
N -60 -160 -60 -110 {lab=#net3}
N -230 250 -50 250 {lab=#net4}
N -50 90 -50 250 {lab=#net4}
N -60 90 -50 90 {lab=#net4}
N 470 30 470 240 {lab=#net4}
N -50 240 470 240 {lab=#net4}
N 470 -160 470 -10 {lab=#net3}
N -60 -160 470 -160 {lab=#net3}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA.sym} 0 -10 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} -220 190 0 0 {name=x2 length=410u}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope_detector.sym} 320 10 0 0 {name=x3}
C {ipin.sym} -110 -40 0 0 {name=p1 lab=Vin+}
C {ipin.sym} -110 20 0 0 {name=p2 lab=Vin-}
C {opin.sym} 470 10 0 0 {name=p3 lab=Vout}
C {iopin.sym} 0 -160 3 0 {name=p4 lab=VDD}
C {iopin.sym} 80 240 1 0 {name=p5 lab=GND}
