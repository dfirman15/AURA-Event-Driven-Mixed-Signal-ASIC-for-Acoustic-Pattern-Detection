# 1. Muat aturan bawaan pabrik GF180MCU
source /foss/pdks/gf180mcuD/libs.tech/netgen/setup.tcl

# 2. Paksa algoritma graf Netgen untuk MENGUNCI semua kabel utama (Mencegah pertukaran simetri)
equate nodes B04_diff_amp VSS B04_diff_pair_sch VSS
equate nodes B04_diff_amp VDD B04_diff_pair_sch VDD
equate nodes B04_diff_amp V+ B04_diff_pair_sch V+
equate nodes B04_diff_amp V- B04_diff_pair_sch V-
equate nodes B04_diff_amp Vo B04_diff_pair_sch Vo
equate nodes B04_diff_amp Vbias B04_diff_pair_sch Vbias
