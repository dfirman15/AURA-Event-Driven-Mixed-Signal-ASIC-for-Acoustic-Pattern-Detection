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
N 710 -220 710 -190 {lab=VSS}
N 570 -340 860 -340 {lab=VSS}
N 750 -340 750 -190 {lab=VSS}
N 710 -190 750 -190 {lab=VSS}
N 730 -190 730 -170 {lab=VSS}
N 430 -480 430 -450 {lab=VDD}
N 430 -480 470 -480 {lab=VDD}
N 470 -510 470 -480 {lab=VDD}
N 430 -510 470 -510 {lab=VDD}
N 430 -510 570 -510 {lab=VDD}
N 860 -510 990 -510 {lab=VDD}
N 950 -510 950 -480 {lab=VDD}
N 990 -510 990 -480 {lab=VDD}
N 990 -490 990 -450 {lab=VDD}
N 440 -370 440 -340 {lab=VSS}
N 400 -340 440 -340 {lab=VSS}
N 400 -340 440 -340 {lab=VSS}
N 440 -340 440 -310 {lab=VSS}
N 440 -310 440 -190 {lab=VSS}
N 440 -190 710 -190 {lab=VSS}
N 990 -370 990 -340 {lab=VSS}
N 990 -340 1030 -340 {lab=VSS}
N 990 -340 990 -310 {lab=VSS}
N 990 -310 990 -190 {lab=VSS}
N 750 -190 990 -190 {lab=VSS}
C {symbols/nfet_03v3.sym} 550 -340 0 0 {name=M1
L=4u
W=0.55u
nf=1
m=2
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
L=4u
W=2.2u
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
L=4u
W=0.55u
nf=1
m=2
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
L=4u
W=6.5u
nf=1
m=2
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
L=4u
W=6.5u
nf=1
m=2
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
C {symbols/pfet_03v3.sym} 970 -480 0 0 {name=MDummy
L=4u
W=6.5u
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
C {symbols/pfet_03v3.sym} 450 -480 0 1 {name=MDummy1
L=4u
W=6.5u
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
C {symbols/nfet_03v3.sym} 1010 -340 0 1 {name=Mdummy2
L=4u
W=0.55u
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
C {symbols/nfet_03v3.sym} 420 -340 0 0 {name=Mdummy3
L=4u
W=0.55u
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
