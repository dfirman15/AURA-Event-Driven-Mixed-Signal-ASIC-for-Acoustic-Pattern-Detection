v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 120 1000 120 {lab=GND}
N 1000 90 1000 120 {lab=GND}
N 1000 -10 1000 30 {lab=#net1}
N 1000 -40 1120 -40 {lab=GND}
N 1000 120 1120 120 {lab=GND}
N 780 -420 1000 -420 {lab=VDD}
N 1000 -420 1000 -390 {lab=VDD}
N 820 -390 960 -390 {lab=VbiasP}
N 900 -390 900 -350 {lab=VbiasP}
N 950 -420 950 -250 {lab=VDD}
N 850 -250 850 -240 {lab=GND}
N 820 -40 960 -40 {lab=VbiasN}
N 880 -170 880 -40 {lab=VbiasN}
N 1000 -360 1000 -70 {lab=#net2}
N 850 -240 1200 -240 {lab=GND}
N 1200 -240 1200 120 {lab=GND}
N 1120 120 1200 120 {lab=GND}
N 780 -120 880 -120 {lab=VbiasN}
N 920 -170 1000 -170 {lab=#net2}
N 570 0 880 -0 {lab=VbiasN}
N 880 -40 880 -0 {lab=VbiasN}
N 1120 -40 1120 120 {lab=GND}
N 880 0 1260 0 {lab=VbiasN}
N 900 -350 1230 -350 {lab=VbiasP}
N 630 -350 900 -350 {lab=VbiasP}
N 900 -170 900 -120 {lab=VbiasN}
N 880 -120 900 -120 {lab=VbiasN}
N 780 -10 780 120 {lab=GND}
N 780 -40 780 -10 {lab=GND}
N 500 -420 780 -420 {lab=VDD}
N 780 -420 780 -390 {lab=VDD}
N 780 -360 780 -70 {lab=VbiasN}
N 630 -120 780 -120 {lab=VbiasN}
N 630 -150 680 -150 {lab=GND}
N 680 -150 680 120 {lab=GND}
N 500 -10 500 120 {lab=GND}
N 500 -40 500 -10 {lab=GND}
N 500 -150 590 -150 {lab=#net3}
N 500 -420 500 -390 {lab=VDD}
N 540 -40 570 -40 {lab=VbiasN}
N 570 -40 570 0 {lab=VbiasN}
N 630 -350 630 -180 {lab=VbiasP}
N 540 -390 540 -340 {lab=#net4}
N 500 -340 540 -340 {lab=#net4}
N 500 -360 500 -340 {lab=#net4}
N 500 -340 500 -300 {lab=#net4}
N 380 -270 500 -270 {lab=VDD}
N 380 -420 380 -270 {lab=VDD}
N 380 -420 500 -420 {lab=VDD}
N 540 -270 540 -240 {lab=#net5}
N 500 -240 540 -240 {lab=#net5}
N 500 -150 500 -70 {lab=#net3}
N 500 -160 500 -150 {lab=#net3}
N 540 -240 540 -190 {lab=#net5}
N 500 -240 500 -220 {lab=#net5}
N 380 -190 500 -190 {lab=VDD}
N 380 -270 380 -190 {lab=VDD}
N 980 60 980 120 {lab=GND}
C {symbols/pfet_03v3.sym} 800 -390 0 1 {name=M2
L=4u
W=2u
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
C {symbols/pfet_03v3.sym} 980 -390 0 0 {name=M3
L=4u
W=2u
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
C {symbols/nfet_03v3.sym} 800 -40 0 1 {name=M6
L=4u
W=10u
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
C {symbols/nfet_03v3.sym} 980 -40 0 0 {name=M7
L=4u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {AURA/diff_amp.sym} 900 -270 1 1 {name=x1}
C {iopin.sym} 860 -420 3 0 {name=p1 lab=VDD}
C {iopin.sym} 880 120 1 0 {name=p2 lab=GND}
C {opin.sym} 1230 -350 0 0 {name=p3 lab=VbiasP}
C {opin.sym} 1260 0 0 0 {name=p4 lab=VbiasN}
C {symbols/pfet_03v3.sym} 520 -390 0 1 {name=M1
L=40u
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
C {symbols/nfet_03v3.sym} 610 -150 0 0 {name=M4
L=1u
W=1u
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
C {symbols/nfet_03v3.sym} 520 -40 0 1 {name=M5
L=10u
W=1u
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
C {symbols/pfet_03v3.sym} 520 -270 0 1 {name=M8
L=40u
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
C {symbols/pfet_03v3.sym} 520 -190 0 1 {name=M9
L=40u
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
C {symbols/ppolyf_u_2k.sym} 1000 60 0 0 {name=R2
W=2u
L=\{length\}
model=ppolyf_u_2k
spiceprefix=X
m=1}
