v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 570 -510 860 -510 {lab=VDD}
N 860 -510 860 -480 {lab=VDD}
N 570 -510 570 -480 {lab=VDD}
N 610 -480 820 -480 {lab=#net1}
N 570 -450 570 -370 {lab=#net1}
N 860 -450 860 -370 {lab=Vo}
N 570 -420 680 -420 {lab=#net1}
N 680 -480 680 -420 {lab=#net1}
N 570 -310 860 -310 {lab=#net2}
N 710 -310 710 -250 {lab=#net2}
N 710 -220 710 -190 {lab=GND}
N 570 -340 860 -340 {lab=GND}
N 750 -340 750 -190 {lab=GND}
N 710 -190 750 -190 {lab=GND}
N 730 -190 730 -170 {lab=GND}
C {symbols/nfet_03v3.sym} 550 -340 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 690 -220 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 880 -340 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 840 -480 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 590 -480 0 1 {name=M5
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
C {iopin.sym} 720 -510 3 0 {name=p1 lab=VDD}
C {iopin.sym} 730 -170 1 0 {name=p2 lab=VSS}
C {ipin.sym} 530 -340 0 0 {name=p3 lab=V+}
C {ipin.sym} 900 -340 2 0 {name=p4 lab=V-}
C {opin.sym} 860 -410 0 0 {name=p5 lab=Vo}
C {ipin.sym} 670 -220 0 0 {name=p6 lab=Vbias}
