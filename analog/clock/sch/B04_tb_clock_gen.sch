v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 730 -480 730 -460 {lab=#net1}
N 730 -480 890 -480 {lab=#net1}
N 730 -380 890 -380 {lab=0}
N 730 -400 730 -380 {lab=0}
N 890 -480 910 -480 {lab=#net1}
N 910 -480 980 -480 {lab=#net1}
N 980 -480 980 -450 {lab=#net1}
N 980 -410 980 -380 {lab=0}
N 890 -380 980 -380 {lab=0}
N 610 -450 680 -450 {lab=en}
N 610 -390 610 -380 {lab=0}
N 610 -380 730 -380 {lab=0}
N 980 -430 990 -430 {lab=vout}
N 990 -430 1000 -430 {lab=vout}
N 980 -430 1000 -430 {lab=vout}
N 1000 -470 1000 -430 {lab=vout}
N 620 -520 620 -450 {lab=en}
C {code_shown.sym} 370 -800 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
"
}
C {vsource.sym} 730 -430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 800 -380 0 0 {name=l1 lab=0}
C {lab_pin.sym} 1000 -470 2 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 1150 -460 0 0 {name=s1 only_toplevel=false value="
.control
tran 10n 0.5m
plot v(vout)
plot v(en)
meas tran I_avg AVG I(V1) FROM=0.21m TO=0.5m
meas tran period trig v(vout) val=1.65 rise=2 targ v(vout) val=1.65 rise=3
.endc"}
C {B04_clock_gen.sym} 830 -430 0 0 {name=x1}
C {vsource.sym} 610 -420 0 0 {name=V2 value=pulse(0,3.3,10u,1n,1n,200u,1000u) savecurrent=false}
C {lab_pin.sym} 620 -520 2 0 {name=p2 sig_type=std_logic lab=en
}
