v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -230 490 -230 {lab=#net1}
N 810 -150 960 -150 {lab=GND}
N 460 -150 810 -150 {lab=GND}
N 460 -170 460 -150 {lab=GND}
N 540 -180 540 -150 {lab=GND}
N 810 -250 810 -210 {lab=#net2}
N 960 -250 960 -210 {lab=Vout}
N 810 -180 810 -150 {lab=GND}
N 960 -180 960 -150 {lab=GND}
N 960 -310 960 -280 {lab=VDD}
N 810 -310 810 -280 {lab=VDD}
N 810 -310 960 -310 {lab=VDD}
N 540 -310 810 -310 {lab=VDD}
N 540 -310 540 -280 {lab=VDD}
N 920 -280 920 -180 {lab=#net2}
N 810 -230 920 -230 {lab=#net2}
N 770 -280 770 -180 {lab=#net3}
N 680 -230 770 -230 {lab=#net3}
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
N 1060 -510 1060 -230 {lab=Vout}
N 960 -230 1060 -230 {lab=Vout}
N 360 -620 690 -620 {lab=GND}
N 360 -620 360 -150 {lab=GND}
N 360 -150 460 -150 {lab=GND}
N 690 -580 690 -480 {lab=VDD}
N 630 -480 690 -480 {lab=VDD}
N 630 -480 630 -310 {lab=VDD}
N 720 -470 720 -410 {lab=GND}
N 710 -470 720 -470 {lab=GND}
N 710 -560 710 -470 {lab=GND}
N 710 -560 750 -560 {lab=GND}
N 750 -620 750 -560 {lab=GND}
N 690 -620 750 -620 {lab=GND}
C {symbols/pfet_03v3.sym} 790 -280 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 790 -180 0 0 {name=M2
L=1u
W=0.22u
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
C {symbols/pfet_03v3.sym} 940 -280 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 940 -180 0 0 {name=M4
L=1u
W=0.22u
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
C {symbols/pfet_03v3.sym} 690 -600 1 0 {name=M5
L=5u
W=0.25u
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
L=25u
W=0.25u
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
C {symbols/cap_mim_2f0fF.sym} 460 -200 0 1 {name=C2
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=10}
C {iopin.sym} 700 -150 1 0 {name=p1 lab=GND}
C {iopin.sym} 690 -310 3 0 {name=p2 lab=VDD}
C {opin.sym} 1060 -230 0 0 {name=p3 lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_schmitt_trigger.sym} 550 -230 0 0 {name=x1}
