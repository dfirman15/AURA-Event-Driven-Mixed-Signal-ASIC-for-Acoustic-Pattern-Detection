v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1120 40 1120 70 {lab=GND}
N 1130 -430 1130 -400 {lab=VDD}
N 1130 -370 1130 -140 {lab=Vout}
N 1120 -140 1120 10 {lab=Vout}
N 1120 -140 1130 -140 {lab=Vout}
N 1010 40 1080 40 {lab=#net1}
N 1080 -280 1130 -280 {lab=Vout}
N 960 -280 1030 -280 {lab=#net1}
N 960 -280 960 -140 {lab=#net1}
N 960 -140 960 -0 {lab=#net1}
N 960 -0 1040 -0 {lab=#net1}
N 1040 0 1040 40 {lab=#net1}
N 1090 -150 1090 -140 {lab=#net1}
N 990 -150 990 -140 {lab=Vout}
N 990 -430 1130 -430 {lab=VDD}
N 1090 -100 1120 -100 {lab=Vout}
N 960 -100 990 -100 {lab=#net1}
N 1020 -140 1040 -140 {lab=Vout}
N 1040 -170 1040 -140 {lab=Vout}
N 1040 -170 1130 -170 {lab=Vout}
N 1060 -140 1060 -70 {lab=#net1}
N 960 -70 1060 -70 {lab=#net1}
N 1120 70 1120 80 {lab=GND}
N 1130 -260 1250 -260 {lab=Vout}
N 1250 -260 1250 -250 {lab=Vout}
N 1090 -190 1090 -150 {lab=#net1}
N 990 -190 990 -150 {lab=Vout}
N 990 -140 1020 -140 {lab=Vout}
N 1060 -140 1090 -140 {lab=#net1}
C {symbols/pfet_03v3.sym} 1110 -400 0 0 {name=M1
L=4u
W=1u
nf=1
m=40
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1100 40 0 0 {name=M2
L=1u
W=40u
nf=10
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/cap_mim_2f0fF.sym} 1050 -280 1 0 {name=C1
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 980 40 1 0 {name=C2
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=20}
C {symbols/pfet_03v3.sym} 1090 -120 3 0 {name=M3
L=20u
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
C {ipin.sym} 1090 -400 0 0 {name=p1 lab=VbiasP}
C {ipin.sym} 950 40 0 0 {name=p2 lab=Vin}
C {iopin.sym} 1130 -430 3 0 {name=p3 lab=VDD}
C {iopin.sym} 1120 70 1 0 {name=p4 lab=GND}
C {opin.sym} 1130 -280 0 0 {name=p5 lab=Vout}
C {symbols/pfet_03v3.sym} 990 -120 1 1 {name=M4
L=20u
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
