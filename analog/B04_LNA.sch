v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 570 -400 690 -400 {lab=GND}
N 570 -400 570 -330 {lab=GND}
N 570 -710 660 -710 {lab=#net1}
N 480 -710 570 -710 {lab=#net1}
N 630 -710 630 -560 {lab=#net1}
N 630 -560 830 -560 {lab=#net1}
N 890 -560 950 -560 {lab=Vout}
N 860 -410 880 -410 {lab=#net2}
N 830 -370 910 -370 {lab=#net2}
N 940 -560 940 -410 {lab=Vout}
N 800 -560 800 -410 {lab=#net1}
N 950 -740 950 -560 {lab=Vout}
N 550 -390 550 -330 {lab=VDD}
N 870 -410 870 -370 {lab=#net2}
N 610 -780 660 -780 {lab=#net3}
N 530 -780 610 -780 {lab=#net3}
N 530 -820 530 -780 {lab=#net3}
N 380 -780 530 -780 {lab=#net3}
N 380 -790 380 -780 {lab=#net3}
N 380 -880 380 -850 {lab=#net4}
N 340 -910 340 -820 {lab=#net4}
N 340 -870 380 -870 {lab=#net4}
N 380 -940 530 -940 {lab=VDD/2}
N 530 -940 530 -880 {lab=VDD/2}
N 550 -850 550 -390 {lab=VDD}
N 550 -870 550 -850 {lab=VDD}
N 550 -870 700 -870 {lab=VDD}
N 560 -910 560 -870 {lab=VDD}
N 330 -780 380 -780 {lab=#net3}
N 330 -710 480 -710 {lab=#net1}
N 560 -980 560 -910 {lab=VDD}
N 530 -980 530 -940 {lab=VDD/2}
N 450 -400 570 -400 {lab=GND}
N 380 -940 380 -910 {lab=VDD/2}
N 380 -820 380 -780 {lab=#net3}
N 800 -410 830 -410 {lab=#net1}
N 910 -410 940 -410 {lab=Vout}
N 700 -870 700 -840 {lab=VDD}
N 940 -740 950 -740 {lab=Vout}
N 690 -630 690 -400 {lab=GND}
N 710 -620 710 -330 {lab=#net5}
N 730 -620 730 -330 {lab=#net6}
N 750 -620 750 -330 {lab=#net7}
N 770 -620 770 -330 {lab=#net8}
N 890 -610 950 -610 {lab=Vout}
N 690 -610 830 -610 {lab=GND}
C {capa.sym} 860 -560 1 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 300 -710 1 0 {name=C3
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 530 -850 2 0 {name=C5
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {symbols/pfet_03v3.sym} 830 -390 3 0 {name=M1
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 910 -390 1 1 {name=M2
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 360 -910 0 0 {name=M3
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 360 -820 2 1 {name=M4
L=4u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {capa.sym} 300 -780 1 0 {name=C6
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 560 -980 0 0 {name=p1 lab=VDD}
C {iopin.sym} 530 -980 0 1 {name=p2 lab=VDD/2}
C {iopin.sym} 450 -400 2 0 {name=p3 lab=GND}
C {ipin.sym} 270 -780 0 0 {name=p4 lab=Vin+}
C {ipin.sym} 270 -710 0 0 {name=p5 lab=Vin-}
C {ipin.sym} 510 -260 0 0 {name=p6 lab=VbiasP}
C {opin.sym} 950 -740 0 0 {name=p8 lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA_OTA.sym} 760 -730 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA_bias_core.sym} 650 -240 0 0 {name=x2 ratio=8}
C {ipin.sym} 510 -240 0 0 {name=p7 lab=VbiasN}
C {capa.sym} 860 -610 1 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
