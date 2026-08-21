v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 710 -200 930 -200 {lab=Vout}
N 660 -130 930 -130 {lab=GND}
N 930 -140 930 -130 {lab=GND}
N 400 -230 510 -230 {lab=GND}
N 510 -230 510 -130 {lab=GND}
N 640 -260 660 -260 {lab=VbiasN}
N 500 -620 500 -610 {lab=VDD}
N 710 -170 730 -170 {lab=GND}
N 730 -170 730 -130 {lab=GND}
N 710 -140 710 -130 {lab=GND}
N 610 -130 660 -130 {lab=GND}
N 510 -130 610 -130 {lab=GND}
N 410 -610 500 -610 {lab=VDD}
N 400 -610 400 -260 {lab=VDD}
N 400 -610 410 -610 {lab=VDD}
N 620 -260 640 -260 {lab=VbiasN}
N 710 -290 710 -200 {lab=Vout}
N 400 -200 490 -200 {lab=Vout}
N 490 -290 490 -200 {lab=Vout}
N 700 -260 730 -260 {lab=GND}
N 730 -260 730 -170 {lab=GND}
N 700 -140 710 -140 {lab=GND}
N 700 -170 710 -170 {lab=GND}
N 700 -230 700 -200 {lab=#net1}
N 640 -320 660 -320 {lab=VbiasN}
N 640 -320 640 -260 {lab=VbiasN}
N 640 -260 640 -170 {lab=VbiasN}
N 640 -170 660 -170 {lab=VbiasN}
N 640 -380 640 -320 {lab=VbiasN}
N 640 -380 660 -380 {lab=VbiasN}
N 640 -440 640 -380 {lab=VbiasN}
N 640 -440 660 -440 {lab=VbiasN}
N 490 -480 490 -290 {lab=Vout}
N 490 -480 700 -480 {lab=Vout}
N 700 -480 700 -470 {lab=Vout}
N 700 -470 710 -470 {lab=Vout}
N 710 -470 710 -290 {lab=Vout}
N 700 -320 730 -320 {lab=GND}
N 730 -320 730 -260 {lab=GND}
N 700 -380 730 -380 {lab=GND}
N 730 -380 730 -320 {lab=GND}
N 700 -440 730 -440 {lab=GND}
N 730 -440 730 -380 {lab=GND}
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
C {symbols/nfet_03v3.sym} 680 -260 0 0 {name=M2
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
C {symbols/cap_mim_2f0fF.sym} 930 -170 2 0 {name=C2
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=100}
C {iopin.sym} 500 -620 2 0 {name=p1 lab=VDD}
C {iopin.sym} 610 -130 1 0 {name=p3 lab=GND}
C {ipin.sym} 360 -230 0 0 {name=p2 lab=Vin}
C {opin.sym} 930 -200 3 0 {name=p4 lab=Vout}
C {ipin.sym} 620 -260 0 0 {name=p5 lab=VbiasN}
C {symbols/nfet_03v3.sym} 680 -170 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 680 -320 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 680 -380 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 680 -440 0 0 {name=M6
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
