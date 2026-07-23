v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 480 -580 480 -540 {lab=#net1}
N 480 -640 480 -610 {lab=VDD}
N 480 -510 480 -480 {lab=GND}
N 440 -610 440 -510 {lab=dig_i}
N 480 -570 660 -570 {lab=#net1}
N 660 -630 660 -570 {lab=#net1}
N 440 -560 660 -560 {lab=dig_i}
N 660 -560 660 -500 {lab=dig_i}
N 480 -740 480 -640 {lab=VDD}
N 480 -740 660 -740 {lab=VDD}
N 480 -480 480 -380 {lab=GND}
N 480 -380 660 -380 {lab=GND}
N 630 -670 630 -460 {lab=sw_i}
N 690 -670 690 -460 {lab=sw_o}
N 420 -460 630 -460 {lab=sw_i}
N 800 -490 920 -490 {lab=sw_o}
N 690 -490 800 -490 {lab=sw_o}
N 660 -460 660 -380 {lab=GND}
N 660 -740 660 -670 {lab=VDD}
C {symbols/pfet_03v3.sym} 660 -650 3 0 {name=M1
L=0.28u
W=0.88u
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
C {symbols/nfet_03v3.sym} 660 -480 3 1 {name=M2
L=0.28u
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
C {symbols/pfet_03v3.sym} 460 -610 0 0 {name=M3
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 460 -510 0 0 {name=M4
L=0.28u
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
C {iopin.sym} 560 -740 3 0 {name=p1 lab=VDD}
C {iopin.sym} 570 -380 1 0 {name=p2 lab=GND}
C {ipin.sym} 420 -460 0 0 {name=p3 lab=sw_i}
C {opin.sym} 920 -490 0 0 {name=p4 lab=sw_o}
C {ipin.sym} 440 -560 0 0 {name=p5 lab=dig_i}
