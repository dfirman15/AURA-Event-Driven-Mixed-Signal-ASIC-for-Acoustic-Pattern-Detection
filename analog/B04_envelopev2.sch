v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 680 -840 960 -840 {lab=Vout}
N 730 -750 730 -660 {lab=#net1}
N 750 -750 750 -660 {lab=#net2}
N 770 -750 770 -660 {lab=#net3}
N 790 -750 790 -660 {lab=#net4}
N 960 -870 1060 -870 {lab=#net5}
N 1100 -970 1100 -900 {lab=VDD}
N 720 -970 1100 -970 {lab=VDD}
N 960 -840 1100 -840 {lab=Vout}
N 1100 -840 1370 -840 {lab=Vout}
N 1100 -870 1270 -870 {lab=GND}
N 1270 -870 1270 -750 {lab=GND}
N 1210 -750 1270 -750 {lab=GND}
N 1210 -840 1210 -780 {lab=Vout}
N 1210 -720 1370 -720 {lab=GND}
N 1370 -780 1370 -720 {lab=GND}
N 530 -570 1170 -570 {lab=VbiasN}
N 1170 -750 1170 -570 {lab=VbiasN}
N 590 -660 710 -660 {lab=GND}
N 710 -760 710 -660 {lab=GND}
N 710 -660 710 -640 {lab=GND}
N 710 -640 1370 -640 {lab=GND}
N 1370 -720 1370 -640 {lab=GND}
N 550 -970 720 -970 {lab=VDD}
N 550 -970 550 -660 {lab=VDD}
N 550 -660 570 -660 {lab=VDD}
N 1270 -750 1270 -720 {lab=GND}
N 990 -870 990 -800 {lab=#net5}
N 990 -740 990 -640 {lab=GND}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA.sym} 780 -880 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA_bias_core.sym} 670 -570 0 0 {name=x2 ratio=1}
C {symbols/nfet_03v3.sym} 1080 -870 0 0 {name=M1
L=4u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1190 -750 0 0 {name=M2
L=4u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/cap_mim_2f0fF.sym} 1370 -810 0 0 {name=C1
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=50}
C {iopin.sym} 720 -970 3 0 {name=p1 lab=VDD}
C {iopin.sym} 960 -640 1 0 {name=p2 lab=GND}
C {ipin.sym} 680 -910 0 0 {name=p3 lab=Vin}
C {ipin.sym} 530 -590 0 0 {name=p4 lab=VbiasP}
C {ipin.sym} 530 -570 0 0 {name=p5 lab=VbiasN}
C {opin.sym} 1370 -840 0 0 {name=p6 lab=Vout}
C {symbols/cap_mim_2f0fF.sym} 990 -770 0 0 {name=C2
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=10}
