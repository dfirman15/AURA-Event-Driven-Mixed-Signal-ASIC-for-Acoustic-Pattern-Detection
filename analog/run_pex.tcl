# ==========================================
# Script Ekstraksi Full RC via Batch Mode
# ==========================================

# 1. Baca file GDS dari KLayout
gds read B04_VDD05.gds

# 2. Trik Flatten & Load
flatten B04_VDD05_flat
load B04_VDD05_flat

# 3. PAKSA Magic untuk fokus pada cell ini (Kunci keberhasilan batch mode)
select top cell

# 4. Ekstraksi Kapasitansi Dasar
extract no resistance
extract all

# 5. Setup Filter LVS & Memori
ext2spice lvs
ext2spice cthresh 1
ext2spice rthresh 20

# 6. Ekstraksi Resistansi
extresist simplify on
extresist all

# 7. Penulisan ke File SPICE Netlist
ext2spice extresist on
ext2spice global off
ext2spice subcircuit top on

# Eksekusi dengan menyertakan nama cell secara langsung tanpa flag -o
ext2spice B04_VDD05_flat

# 8. Tutup program
quit
