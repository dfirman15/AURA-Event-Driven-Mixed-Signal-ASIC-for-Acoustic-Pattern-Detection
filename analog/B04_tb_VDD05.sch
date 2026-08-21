v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 430 -770 450 -770 {lab=#net1}
N 450 -770 450 -670 {lab=#net1}
N 430 -670 450 -670 {lab=#net1}
N 430 -750 440 -750 {lab=#net2}
N 440 -750 440 -650 {lab=#net2}
N 430 -650 440 -650 {lab=#net2}
N 340 -710 430 -770 {lab=#net1}
N 340 -670 430 -650 {lab=#net2}
N 190 -840 190 -750 {lab=#net3}
N 190 -840 730 -840 {lab=#net3}
N 730 -840 730 -770 {lab=#net3}
N 190 -630 190 -570 {lab=0}
N 190 -570 730 -570 {lab=0}
N 730 -630 730 -570 {lab=0}
N 640 -630 730 -630 {lab=0}
N 640 -730 640 -630 {lab=0}
N 640 -730 730 -730 {lab=0}
N 660 -770 730 -770 {lab=#net3}
N 660 -770 660 -670 {lab=#net3}
N 660 -670 730 -670 {lab=#net3}
N -0 -850 0 -720 {lab=#net3}
N 0 -850 190 -840 {lab=#net3}
N -0 -660 0 -570 {lab=0}
N 0 -570 190 -570 {lab=0}
N 730 -750 810 -760 {lab=Vout}
N 730 -570 810 -700 {lab=0}
N 730 -650 800 -640 {lab=Vout_pex}
N 730 -570 800 -580 {lab=0}
N 980 -810 1020 -810 {lab=#net1}
N 1020 -810 1020 -610 {lab=#net1}
N 980 -610 1020 -610 {lab=#net1}
N 980 -590 1030 -590 {lab=#net2}
N 1030 -790 1030 -590 {lab=#net2}
N 980 -790 1030 -790 {lab=#net2}
N 930 -710 980 -710 {lab=0}
N 930 -910 930 -710 {lab=0}
N 930 -910 980 -910 {lab=0}
N 940 -890 980 -890 {lab=0}
N 940 -890 940 -690 {lab=0}
N 940 -690 980 -690 {lab=0}
N 950 -670 980 -670 {lab=0}
N 950 -870 950 -670 {lab=0}
N 950 -870 980 -870 {lab=0}
N 960 -890 960 -870 {lab=0}
N 960 -910 960 -900 {lab=0}
N 960 -900 960 -890 {lab=0}
N 980 -870 1280 -870 {lab=0}
N 1260 -870 1260 -670 {lab=0}
N 1260 -670 1280 -670 {lab=0}
N 1280 -710 1300 -710 {lab=#net3}
N 1300 -910 1300 -710 {lab=#net3}
N 1280 -910 1300 -910 {lab=#net3}
N 730 -750 980 -830 {lab=Vout}
N 730 -650 980 -630 {lab=Vout_pex}
N 590 -570 670 -460 {lab=0}
N 670 -520 980 -650 {lab=#net4}
N 670 -520 980 -850 {lab=#net4}
N 1270 -370 1280 -670 {lab=0}
N 650 -570 1270 -370 {lab=0}
N 690 -840 1280 -910 {lab=#net3}
N 340 -670 990 -590 {lab=#net2}
N 340 -710 980 -610 {lab=#net1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_VDD05.sym} 580 -650 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} 190 -690 0 0 {name=x3 length=410u}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_VDD05.sym} 580 -750 0 0 {name=x4}
C {lab_pin.sym} 730 -750 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 730 -650 2 0 {name=p2 sig_type=std_logic lab=Vout_pex}
C {vsource.sym} 0 -690 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 300 -570 0 0 {name=l1 lab=0}
C {code_shown.sym} -330 -960 0 0 {name=include2 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {code_shown.sym} 610 -230 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white
set color1=black
set xbrushwidth=2

tran 1u 5m

plot v(Vin) v(vout) ylabel 'Voltage (V)' xlabel 'Time (s)' title 'VDD/2'
plot v(Vout) v(Vout_pex)
plot @m.x2.xm2.m0[id]

.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF4.sym} 1130 -850 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF4.sym} 1130 -650 0 0 {name=x5}
C {vsource.sym} 670 -490 0 0 {name=V2 value="DC 1.65 AC 1" savecurrent=false}
