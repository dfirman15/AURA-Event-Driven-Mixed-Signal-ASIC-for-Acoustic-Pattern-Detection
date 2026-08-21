v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -540 -220 -520 {lab=Vout}
N -220 -520 60 -520 {lab=Vout}
N -180 -1210 -180 -670 {lab=VDD}
N -170 -450 -170 -0 {lab=#net1}
N -130 -450 -130 -0 {lab=#net2}
N -110 -450 -110 -0 {lab=#net3}
N -630 -110 -90 -110 {lab=VDD}
N -600 -90 -80 -90 {lab=GND}
N -330 -110 -330 -0 {lab=VDD}
N -310 -90 -310 -0 {lab=GND}
N -630 -1210 -630 -110 {lab=VDD}
N -630 -1210 -180 -1210 {lab=VDD}
N -630 -840 -420 -840 {lab=VDD}
N -420 -840 -420 -770 {lab=VDD}
N -420 -710 -420 -520 {lab=#net4}
N -420 -460 -420 -90 {lab=GND}
N -190 -460 -190 -90 {lab=GND}
N -420 -610 -220 -610 {lab=#net4}
N -150 -450 -150 -0 {lab=#net5}
N -440 -740 -440 -490 {lab=GND}
N -440 -490 -440 -90 {lab=GND}
N 60 -570 60 -520 {lab=Vout}
N -630 -260 -610 -260 {lab=VDD}
N -630 -320 -610 -320 {lab=VDD}
N -570 -30 -550 -30 {lab=GND}
N -570 -60 -570 -30 {lab=GND}
N -570 -90 -570 -60 {lab=GND}
C {ipin.sym} -370 70 0 0 {name=p1 lab=VbiasP}
C {ipin.sym} -370 90 0 0 {name=p2 lab=VbiasN}
C {iopin.sym} -600 -90 2 0 {name=p3 lab=GND}
C {iopin.sym} -410 -1210 3 0 {name=p4 lab=VDD}
C {opin.sym} 60 -570 0 0 {name=p5 lab=Vout}
C {symbols/ppolyf_u_1k.sym} -420 -740 0 0 {name=R1
W=2u
L=600u
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -420 -490 0 0 {name=R2
W=2u
L=600u
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -550 -60 0 0 {name=R3
W=8u
L=30u
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA.sym} -120 -580 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA_bias_ratio_5.sym} -210 80 0 0 {name=x2}
