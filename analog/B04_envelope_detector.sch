v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 400 -200 710 -200 {lab=Vout}
N 710 -200 930 -200 {lab=Vout}
N 660 -130 930 -130 {lab=GND}
N 930 -140 930 -130 {lab=GND}
N 400 -230 510 -230 {lab=GND}
N 510 -230 510 -130 {lab=GND}
N 650 -170 670 -170 {lab=#net1}
N 500 -620 500 -610 {lab=VDD}
N 710 -170 730 -170 {lab=GND}
N 730 -170 730 -130 {lab=GND}
N 710 -140 710 -130 {lab=GND}
N 610 -130 660 -130 {lab=GND}
N 510 -130 610 -130 {lab=GND}
N 410 -610 500 -610 {lab=VDD}
N 400 -610 400 -260 {lab=VDD}
N 400 -610 410 -610 {lab=VDD}
N 610 -360 610 -130 {lab=GND}
N 590 -360 610 -360 {lab=GND}
N 630 -390 630 -170 {lab=#net1}
N 630 -170 650 -170 {lab=#net1}
N 590 -390 590 -360 {lab=GND}
N 590 -420 630 -420 {lab=#net1}
N 630 -420 630 -380 {lab=#net1}
N 480 -610 480 -580 {lab=VDD}
N 520 -580 520 -550 {lab=#net2}
N 480 -550 520 -550 {lab=#net2}
N 480 -550 480 -520 {lab=#net2}
N 520 -520 520 -490 {lab=#net3}
N 480 -490 520 -490 {lab=#net3}
N 480 -490 480 -460 {lab=#net3}
N 520 -460 520 -430 {lab=#net4}
N 480 -430 520 -430 {lab=#net4}
N 480 -430 480 -400 {lab=#net4}
N 480 -370 520 -370 {lab=#net1}
N 520 -400 520 -370 {lab=#net1}
N 520 -420 520 -400 {lab=#net1}
N 520 -420 590 -420 {lab=#net1}
C {symbols/nfet_03v3.sym} 380 -230 0 0 {name=M1
L=1u
W=2u
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
C {symbols/nfet_03v3.sym} 690 -170 0 0 {name=M2
L=4u
W=7u
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
C {symbols/cap_mim_2f0fF.sym} 930 -170 0 0 {name=C2
W=20u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=100}
C {iopin.sym} 500 -620 2 0 {name=p1 lab=VDD}
C {iopin.sym} 610 -130 1 0 {name=p3 lab=GND}
C {ipin.sym} 360 -230 0 0 {name=p2 lab=Vin}
C {opin.sym} 930 -200 3 0 {name=p4 lab=Vout}
C {ipin.sym} 390 -60 0 0 {name=p5 lab=VbiasN}
C {symbols/nfet_03v3.sym} 610 -390 0 1 {name=M3
L=4u
W=0.5u
nf=5
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
C {symbols/pfet_03v3.sym} 500 -580 0 1 {name=M7
L=5u
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
C {symbols/pfet_03v3.sym} 500 -520 0 1 {name=M8
L=5u
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
C {symbols/pfet_03v3.sym} 500 -460 0 1 {name=M9
L=5u
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
C {symbols/pfet_03v3.sym} 500 -400 0 1 {name=M10
L=5u
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
