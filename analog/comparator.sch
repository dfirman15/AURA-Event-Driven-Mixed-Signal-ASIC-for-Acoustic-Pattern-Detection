v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -170 40 -90 {lab=IB}
N 10 -60 40 -60 {lab=GND}
N 10 -60 10 -0 {lab=GND}
N 10 -0 490 -0 {lab=GND}
N 490 -30 490 0 {lab=GND}
N 40 -30 40 -0 {lab=GND}
N 80 -60 450 -60 {lab=IB}
N 40 -110 110 -110 {lab=IB}
N 110 -110 110 -60 {lab=IB}
N 140 -120 140 -0 {lab=GND}
N 120 -150 140 -150 {lab=GND}
N 120 -150 120 0 {lab=GND}
N 140 -270 140 -180 {lab=#net1}
N 140 -210 230 -210 {lab=#net1}
N 230 -210 230 -150 {lab=#net1}
N 400 -240 400 -200 {lab=#net2}
N 400 -200 650 -200 {lab=#net2}
N 650 -240 650 -200 {lab=#net2}
N 490 -200 490 -90 {lab=#net2}
N 490 -60 540 -60 {lab=GND}
N 540 -60 540 -0 {lab=GND}
N 490 -0 540 0 {lab=GND}
N 440 -0 490 -0 {lab=GND}
N 440 -0 440 40 {lab=GND}
N 930 -120 930 -90 {lab=GND}
N 930 -150 980 -150 {lab=GND}
N 980 -150 980 -90 {lab=GND}
N 270 -150 890 -150 {lab=#net1}
N 180 -150 270 -150 {lab=#net1}
N 930 -90 930 -0 {lab=GND}
N 540 -0 930 0 {lab=GND}
N 930 -0 980 -0 {lab=GND}
N 980 -90 980 -0 {lab=GND}
N 140 -380 140 -270 {lab=#net1}
N 180 -410 230 -410 {lab=#net3}
N 200 -410 200 -350 {lab=#net3}
N 200 -350 270 -350 {lab=#net3}
N 270 -380 270 -350 {lab=#net3}
N 270 -350 400 -350 {lab=#net3}
N 400 -350 400 -300 {lab=#net3}
N 930 -380 930 -180 {lab=Q_bar}
N 650 -350 650 -300 {lab=#net4}
N 590 -350 650 -350 {lab=#net4}
N 590 -380 590 -350 {lab=#net4}
N 650 -350 790 -350 {lab=#net4}
N 790 -380 790 -350 {lab=#net4}
N 830 -410 890 -410 {lab=#net4}
N 850 -410 850 -350 {lab=#net4}
N 790 -350 850 -350 {lab=#net4}
N 510 -410 540 -350 {lab=#net4}
N 540 -350 590 -350 {lab=#net4}
N 520 -350 550 -410 {lab=#net3}
N 470 -380 470 -350 {lab=#net3}
N 400 -350 470 -350 {lab=#net3}
N 470 -350 520 -350 {lab=#net3}
N 110 -410 140 -410 {lab=VDD}
N 110 -440 110 -410 {lab=VDD}
N 110 -440 970 -440 {lab=VDD}
N 970 -440 970 -410 {lab=VDD}
N 930 -410 970 -410 {lab=VDD}
N 770 -410 790 -410 {lab=VDD}
N 770 -440 770 -410 {lab=VDD}
N 590 -410 610 -410 {lab=VDD}
N 610 -440 610 -410 {lab=VDD}
N 450 -410 470 -410 {lab=VDD}
N 450 -440 450 -410 {lab=VDD}
N 270 -410 300 -410 {lab=VDD}
N 300 -440 300 -410 {lab=VDD}
N 530 -480 530 -440 {lab=VDD}
N 320 -270 360 -270 {lab=inn}
N 690 -270 720 -270 {lab=inp}
N 400 -270 650 -270 {lab=GND}
N 540 -270 540 -60 {lab=GND}
N 930 -300 1010 -300 {lab=Q_bar}
C {symbols/nfet_03v3.sym} 470 -60 0 0 {name=M1
L=0.56u
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
C {symbols/nfet_03v3.sym} 60 -60 0 1 {name=M2
L=0.56u
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
C {symbols/nfet_03v3.sym} 160 -150 0 1 {name=M3
L=0.56u
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
C {symbols/nfet_03v3.sym} 380 -270 0 0 {name=qqq
L=0.28u
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
C {symbols/nfet_03v3.sym} 670 -270 0 1 {name=qqq1
L=0.28u
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
C {symbols/nfet_03v3.sym} 910 -150 0 0 {name=M6
L=0.56u
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
C {symbols/pfet_03v3.sym} 250 -410 0 0 {name=q
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} 160 -410 0 1 {name=q1
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} 490 -410 0 1 {name=q4
L=0.28u
W=2.2u
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
C {symbols/pfet_03v3.sym} 570 -410 0 0 {name=q5
L=0.28u
W=2.2u
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
C {symbols/pfet_03v3.sym} 810 -410 0 1 {name=q2
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} 910 -410 0 0 {name=q3
L=0.28u
W=1.5u
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
C {iopin.sym} 530 -480 0 0 {name=p1 lab=VDD
}
C {iopin.sym} 440 40 0 0 {name=p2 lab=GND}
C {ipin.sym} 320 -270 0 0 {name=p3 lab=inn}
C {ipin.sym} 720 -270 2 0 {name=p4 lab=inp}
C {iopin.sym} 40 -170 0 0 {name=p5 lab=IB}
C {opin.sym} 1000 -300 0 0 {name=p6 lab=Q_bar}
