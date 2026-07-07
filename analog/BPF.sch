v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -230 550 -230 {lab=#net1}
N -100 -350 -100 -90 {lab=#net2}
N -100 -350 220 -350 {lab=#net2}
N 220 -350 220 -330 {lab=#net2}
N -60 30 200 30 {lab=#net2}
N -60 -90 -60 30 {lab=#net2}
N -100 -90 -60 -90 {lab=#net2}
N 1020 -190 1110 -190 {lab=#net3}
N 550 -230 740 -230 {lab=#net1}
N 100 -270 180 -270 {lab=#net4}
N 670 -160 740 -160 {lab=#net5}
N 220 -350 1280 -350 {lab=#net2}
N 1280 -350 1280 -320 {lab=#net2}
N 1110 -190 1240 -190 {lab=#net3}
N 1150 -280 1240 -280 {lab=#net6}
N 1240 -280 1240 -260 {lab=#net6}
N 180 -200 180 -180 {lab=#net1}
N 180 -180 490 -180 {lab=#net1}
N 490 -230 490 -180 {lab=#net1}
N 1520 -420 1520 -220 {lab=#net1}
N 660 -420 1520 -420 {lab=#net1}
N 660 -420 660 -230 {lab=#net1}
N 780 -350 780 -290 {lab=#net2}
N 200 30 200 160 {lab=#net2}
N 200 20 200 30 {lab=#net2}
N 200 160 200 180 {lab=#net2}
N 200 180 1260 180 {lab=#net2}
N 760 60 760 180 {lab=#net2}
N 1260 30 1260 180 {lab=#net2}
N 2190 -230 2280 -230 {lab=v_bp}
N 1630 -350 1630 -90 {lab=#net7}
N 1630 -350 1950 -350 {lab=#net7}
N 1950 -350 1950 -330 {lab=#net7}
N 1670 30 1930 30 {lab=#net7}
N 1670 -90 1670 30 {lab=#net7}
N 1630 -90 1670 -90 {lab=#net7}
N 2750 -190 2840 -190 {lab=v_lp}
N 2280 -230 2470 -230 {lab=v_bp}
N 2400 -160 2470 -160 {lab=#net8}
N 1950 -350 3010 -350 {lab=#net7}
N 3010 -350 3010 -320 {lab=#net7}
N 2840 -190 2970 -190 {lab=v_lp}
N 2880 -280 2970 -280 {lab=#net9}
N 2970 -280 2970 -260 {lab=#net9}
N 1910 -200 1910 -180 {lab=v_bp}
N 1910 -180 2220 -180 {lab=v_bp}
N 2220 -230 2220 -180 {lab=v_bp}
N 3250 -420 3250 -220 {lab=v_bp}
N 2390 -420 3250 -420 {lab=v_bp}
N 2390 -420 2390 -230 {lab=v_bp}
N 2510 -350 2510 -290 {lab=#net7}
N 1930 30 1930 160 {lab=#net7}
N 1930 20 1930 30 {lab=#net7}
N 1930 160 1930 180 {lab=#net7}
N 1930 180 2990 180 {lab=#net7}
N 2490 60 2490 180 {lab=#net7}
N 2990 30 2990 180 {lab=#net7}
N 1520 -270 1910 -270 {lab=#net1}
C {AURA/folded_cascode_OTA.sym} 310 -230 0 0 {name=x2}
C {capa.sym} 550 -200 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -100 -60 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -100 -30 0 0 {name=l1 lab=0}
C {gnd.sym} 550 -170 0 0 {name=l2 lab=0}
C {AURA/folded_cascode_OTA.sym} 870 -190 0 0 {name=x4}
C {capa.sym} 1110 -160 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1110 -130 0 0 {name=l3 lab=0}
C {AURA/folded_cascode_OTA.sym} 1370 -220 0 0 {name=x6}
C {vsource.sym} 100 -240 0 0 {name=Vin value="dc 1.65 ac 1" savecurrent=false}
C {gnd.sym} 100 -210 0 0 {name=Vin1 lab=0
value=1.65}
C {vsource.sym} 670 -130 0 0 {name=Vcm value=1.65 savecurrent=false}
C {gnd.sym} 670 -100 0 0 {name=Vin3 lab=0
value=1.65}
C {vsource.sym} 1150 -250 0 0 {name=Vcm1 value=1.65 savecurrent=false}
C {gnd.sym} 1150 -220 0 0 {name=Vin2 lab=0
value=1.65}
C {code_shown.sym} 40 -880 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {code_shown.sym} 1670 -970 0 0 {name=s1 only_toplevel=false value="
.control
ac dec 50 10 100k
plot vdb(V_BP)

meas ac fc_peak max vdb(v_bp)
meas ac mag_peak max vdb(v_bp)

let f_left = 4000
let f_right = 6000

meas ac mag_left find vdb(v_bp) at=f_left
meas ac mag_right find vdb(v_bp) at=f_right

let atten_left = mag_peak - mag_left
let atten_right = mag_peak - mag_right
print fc_peak mag_peak atten_left atten_right
.endc
"}
C {AURA/OTA_bias_bpf_fc.sym} 830 80 3 0 {name=x3}
C {AURA/OTA_bias_bpf_fc.sym} 270 40 3 0 {name=x1}
C {AURA/OTA_bias_bpf_q.sym} 1330 50 3 0 {name=x5}
C {AURA/folded_cascode_OTA.sym} 2040 -230 0 0 {name=x7}
C {capa.sym} 2280 -200 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 1630 -60 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 1630 -30 0 0 {name=l4 lab=0}
C {gnd.sym} 2280 -170 0 0 {name=l5 lab=0}
C {AURA/folded_cascode_OTA.sym} 2600 -190 0 0 {name=x8}
C {capa.sym} 2840 -160 0 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2840 -130 0 0 {name=l6 lab=0}
C {AURA/folded_cascode_OTA.sym} 3100 -220 0 0 {name=x9}
C {vsource.sym} 2400 -130 0 0 {name=Vcm2 value=1.65 savecurrent=false}
C {gnd.sym} 2400 -100 0 0 {name=Vin6 lab=0
value=1.65}
C {vsource.sym} 2880 -250 0 0 {name=Vcm3 value=1.65 savecurrent=false}
C {gnd.sym} 2880 -220 0 0 {name=Vin7 lab=0
value=1.65}
C {lab_pin.sym} 2330 -230 1 0 {name=p3 sig_type=std_logic lab=v_bp}
C {lab_pin.sym} 2810 -190 1 0 {name=p4 sig_type=std_logic lab=v_lp}
C {AURA/OTA_bias_bpf_fc.sym} 2560 80 3 0 {name=x10}
C {AURA/OTA_bias_bpf_fc.sym} 2000 40 3 0 {name=x11}
C {AURA/OTA_bias_bpf_q.sym} 3060 50 3 0 {name=x12}
