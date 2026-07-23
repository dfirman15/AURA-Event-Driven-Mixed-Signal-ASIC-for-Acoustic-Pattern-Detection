v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -970 330 -940 {lab=in_env}
N 370 -940 370 -910 {lab=0}
N 330 -970 370 -970 {lab=in_env}
N 300 -940 330 -940 {lab=in_env}
N 370 -1020 370 -970 {lab=in_env}
N 370 -1020 420 -1020 {lab=in_env}
N 480 -1020 530 -1020 {lab=#net1}
N 530 -1020 530 -970 {lab=#net1}
N 370 -910 530 -910 {lab=0}
N 480 -910 480 -860 {lab=0}
C {code.sym} 40 -1200 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {symbols/nfet_03v3.sym} 350 -940 0 0 {name=M1
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
C {ipin.sym} 300 -940 0 0 {name=p1 lab=in_env
}
C {gnd.sym} 480 -860 0 0 {name=l1 lab=0}
C {symbols/rm1.sym} 450 -1020 1 1 {name=R1
W=0.6e-6
L=0.6e-6
model=rm1
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 530 -940 0 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
