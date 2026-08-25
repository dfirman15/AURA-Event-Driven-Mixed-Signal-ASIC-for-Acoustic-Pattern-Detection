v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -330 100 -300 100 {lab=VDD05}
N -300 60 -300 100 {lab=VDD05}
N -360 120 -330 120 {lab=#net1}
N -360 120 -360 160 {lab=#net1}
N -330 160 -300 160 {lab=VDD05}
N -360 60 -330 60 {lab=#net1}
N -300 100 -300 160 {lab=VDD05}
N -360 60 -360 120 {lab=#net1}
N -380 120 -360 120 {lab=#net1}
N -320 -40 -300 -40 {lab=#net1}
N -300 -50 -300 -40 {lab=#net1}
N -300 -50 -280 -50 {lab=#net1}
N -380 -10 -380 120 {lab=#net1}
N -380 -10 -320 -10 {lab=#net1}
N -320 -40 -320 -10 {lab=#net1}
C {symbols/cap_mim_2f0fF.sym} -350 -40 3 0 {name=C1
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=20}
C {symbols/pfet_03v3.sym} -330 80 3 0 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -330 140 1 0 {name=M4
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
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -380 -40 0 0 {name=p1 lab=Vin}
C {ipin.sym} -300 100 2 0 {name=p2 lab=VDD05}
C {opin.sym} -280 -50 0 0 {name=p3 lab=Vout}
