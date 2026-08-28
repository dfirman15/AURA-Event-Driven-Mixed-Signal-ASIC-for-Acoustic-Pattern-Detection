v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -230 490 -230 {lab=#net1}
N 540 -170 540 -140 {lab=GND}
N 810 -310 960 -310 {lab=VDD}
N 540 -310 810 -310 {lab=VDD}
N 540 -310 540 -280 {lab=VDD}
N 690 -450 690 -410 {lab=#net1}
N 660 -450 690 -450 {lab=#net1}
N 660 -580 660 -450 {lab=#net1}
N 750 -480 750 -410 {lab=Vout}
N 720 -480 750 -480 {lab=Vout}
N 720 -580 720 -480 {lab=Vout}
N 720 -370 720 -310 {lab=VDD}
N 460 -500 460 -230 {lab=#net1}
N 460 -500 660 -500 {lab=#net1}
N 720 -510 1060 -510 {lab=Vout}
N 360 -620 690 -620 {lab=GND}
N 360 -620 360 -150 {lab=GND}
N 690 -580 690 -480 {lab=VDD}
N 630 -480 690 -480 {lab=VDD}
N 630 -480 630 -310 {lab=VDD}
N 720 -470 720 -410 {lab=GND}
N 710 -470 720 -470 {lab=GND}
N 710 -560 710 -470 {lab=GND}
N 710 -560 750 -560 {lab=GND}
N 750 -620 750 -560 {lab=GND}
N 690 -620 750 -620 {lab=GND}
N 540 -180 540 -170 {lab=GND}
N 680 -230 740 -230 {lab=#net2}
N 780 -200 780 -180 {lab=#net3}
N 780 -260 780 -230 {lab=VDD}
N 730 30 730 60 {lab=GND}
N 730 30 730 70 {lab=GND}
N 670 -30 690 -30 {lab=en}
N 360 120 680 120 {lab=GND}
N 360 70 360 120 {lab=GND}
N 680 120 1060 120 {lab=GND}
N 870 -60 870 0 {lab=#net4}
N 870 30 870 120 {lab=GND}
N 360 -150 360 70 {lab=GND}
N 540 -140 540 120 {lab=GND}
N 460 -40 460 110 {lab=GND}
N 460 110 460 120 {lab=GND}
N 730 70 730 120 {lab=GND}
N 730 -30 730 -0 {lab=#net4}
N 730 -30 830 -30 {lab=#net4}
N 940 -220 940 -110 {lab=#net4}
N 980 -70 980 -30 {lab=GND}
N 980 -110 980 -80 {lab=GND}
N 980 -110 980 -70 {lab=GND}
N 980 -190 980 -180 {lab=Vout}
N 980 -310 980 -250 {lab=VDD}
N 980 -180 980 -170 {lab=Vout}
N 980 -170 980 -140 {lab=Vout}
N 980 -30 980 120 {lab=GND}
N 980 -240 980 -220 {lab=VDD}
N 980 -250 980 -220 {lab=VDD}
N 780 30 830 30 {lab=#net2}
N 830 -30 870 -30 {lab=#net4}
N 780 -120 780 -30 {lab=#net4}
N 750 30 780 30 {lab=#net2}
N 780 -180 780 -150 {lab=#net3}
N 690 -230 690 -80 {lab=#net2}
N 690 -30 690 30 {lab=en}
N 690 -30 710 -30 {lab=en}
N 710 -150 710 -30 {lab=en}
N 710 -150 740 -150 {lab=en}
N 750 -80 750 30 {lab=#net2}
N 690 -80 750 -80 {lab=#net2}
N 910 -170 920 -170 {lab=#net4}
N 1130 -220 1130 -110 {lab=Vout}
N 1170 -110 1170 -80 {lab=GND}
N 1170 -100 1170 -60 {lab=GND}
N 1170 -190 1170 -180 {lab=Vout}
N 1170 -180 1170 -170 {lab=Vout}
N 1170 -170 1170 -140 {lab=Vout}
N 1170 -240 1170 -220 {lab=VDD}
N 1170 -250 1170 -220 {lab=VDD}
N 1170 -160 1250 -160 {lab=Vout}
N 1170 -310 1170 -240 {lab=VDD}
N 1060 120 1170 120 {lab=GND}
N 1170 -60 1170 120 {lab=GND}
N 1060 -170 1130 -170 {lab=Vout}
N 1010 -170 1060 -170 {lab=Vout}
N 870 -170 870 -60 {lab=#net4}
N 870 -170 910 -170 {lab=#net4}
N 980 -170 1010 -170 {lab=Vout}
N 920 -170 940 -170 {lab=#net4}
N 1060 -510 1060 -170 {lab=Vout}
N 960 -310 1170 -310 {lab=VDD}
N 460 -60 460 -40 {lab=GND}
N 460 -230 460 -120 {lab=#net1}
N 780 -310 780 -260 {lab=VDD}
N 680 -310 680 -250 {lab=VDD}
N 680 -210 680 -180 {lab=GND}
N 540 -180 680 -180 {lab=GND}
N 380 -250 460 -250 {lab=#net1}
C {symbols/pfet_03v3.sym} 760 -230 0 0 {name=M1
>>>>>>> 7a112fb (update enable clock)
L=1u
W=0.5u
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
C {symbols/pfet_03v3.sym} 690 -600 1 0 {name=M5
L=10u
W=0.5u
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
C {symbols/nfet_03v3.sym} 720 -390 1 1 {name=M6
L=20u
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
C {symbols/cap_mim_2f0fF.sym} 460 -90 0 1 {name=C2
W=10u
L=20u
model=cap_mim_2f0fF
spiceprefix=X
m=12
}
C {iopin.sym} 680 120 1 0 {name=p1 lab=GND}
C {iopin.sym} 690 -310 3 0 {name=p2 lab=VDD}
C {opin.sym} 1250 -160 0 0 {name=p3 lab=Vout}
C {symbols/nfet_03v3.sym} 850 30 0 0 {name=M4
L=1u
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
C {ipin.sym} 670 -30 0 0 {name=p4 lab=en}
C {symbols/pfet_03v3.sym} 760 -150 0 0 {name=M2
L=1u
W=0.5u
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
C {symbols/nfet_03v3.sym} 710 30 0 0 {name=M3
L=1u
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
C {symbols/pfet_03v3.sym} 960 -220 0 0 {name=M7
L=1u
W=0.5u
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
C {symbols/nfet_03v3.sym} 960 -110 0 0 {name=M8
L=1u
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
C {symbols/pfet_03v3.sym} 1150 -220 0 0 {name=M9
L=1u
W=0.5u
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
C {symbols/nfet_03v3.sym} 1150 -110 0 0 {name=M10
L=1u
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
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/clock/sch/B04_schmitt_trigger.sym} 530 -230 0 0 {name=x1}
