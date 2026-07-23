v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -1070 200 -870 {lab=#net1}
N 690 -960 750 -960 {lab=Vout}
N 750 -960 750 -950 {lab=Vout}
N 270 -990 270 -870 {lab=Vinp}
N 270 -990 410 -990 {lab=Vinp}
N 200 -1070 460 -1070 {lab=#net1}
N 460 -1070 460 -1060 {lab=#net1}
N 100 -810 200 -810 {lab=0}
N 100 -1100 100 -870 {lab=#net2}
N 100 -1100 540 -1100 {lab=#net2}
N 540 -1100 540 -1030 {lab=#net2}
N 200 -810 270 -810 {lab=0}
N 270 -810 460 -810 {lab=0}
N 460 -860 460 -810 {lab=0}
N 510 -830 510 -590 {lab=#net3}
N 390 -930 390 -870 {lab=#net4}
N 390 -930 410 -930 {lab=#net4}
N 440 -590 510 -590 {lab=#net3}
N 440 -590 440 -580 {lab=#net3}
N 440 -540 530 -540 {lab=#net5}
N 530 -830 530 -540 {lab=#net5}
N 240 -620 290 -620 {lab=#net1}
N 240 -910 240 -620 {lab=#net1}
N 200 -910 240 -910 {lab=#net1}
N 140 -500 290 -500 {lab=0}
N 140 -810 140 -500 {lab=0}
N 710 -900 710 -810 {lab=0}
N 460 -810 710 -810 {lab=0}
C {vsource.sym} 200 -840 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -810 0 0 {name=l1 lab=0}
C {vsource.sym} 390 -840 0 0 {name=Vplus value="DC 1.65 AC 1" savecurrent=false}
C {code_shown.sym} 1000 -910 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white  ;
set color1=black  ; 
op
print @m.x2.x1.xm2.m0[gm]
print @m.x2.x1.xm2.m0[id]
print @m.x2.x1.xm2.m0[vgs]
print @m.x2.x1.xm2.m0[vth]
.endc
.control
op
ac dec 20 1 1meg
meas ac gain_6kHz find vdb(vout) at=6000
plot db(vout) ylabel 'Gain (dB)' xlabel 'Frequency (Hz)' title 'LNA Gain - 5x Ib'
plot phase(vout)

noise v(vout) Vplus dec 20 1000 8000
setplot noise3
print onoise_total inoise_total
setplot noise2
plot inoise_spectrum
.endc
"}
C {lab_pin.sym} 750 -960 1 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 270 -990 1 0 {name=p2 sig_type=std_logic lab=Vinp}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA.sym} 520 -960 0 0 {name=x2}
C {vsource.sym} 100 -840 0 0 {name=VDD/2 value=1.65 savecurrent=false}
C {vsource.sym} 270 -840 0 0 {name=VDD/1 value=1.65 savecurrent=false}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} 290 -560 0 0 {name=x1 length=410u}
C {code_shown.sym} -30 -1210 0 0 {name=include2 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {capa.sym} 710 -930 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
