# Panduan Testbench AURA Project

Panduan lengkap untuk menjalankan testbench pada project AURA Event-Driven Mixed-Signal ASIC.

## Instalasi Tools

### Opsi 1: Menggunakan Package Manager (Recommended)

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install iverilog gtkwave
```

**Fedora/RHEL:**
```bash
sudo dnf install iverilog gtkwave
```

**Arch Linux:**
```bash
sudo pacman -S iverilog gtkwave
```

### Opsi 2: Menggunakan Nix (Sudah ada di project)

Project ini sudah memiliki `flake.nix` dan `shell.nix`. Jika Nix sudah terinstall:

```bash
nix-shell  # atau nix develop
```

## Struktur Testbench

```
src/digital/
├── pulse_generator.v          # Modul desain
├── i2c_slave_config.v
├── timeout_counter.v
├── main_event_counter.v
├── top.v
└── tb/                        # Direktori testbench
    ├── tb_pulse_generator.v
    ├── tb_i2c_slave_config.v
    ├── tb_timeout_counter.v
    ├── tb_main_event_counter.v
    └── tb_top.v
```

## Cara Menjalankan Testbench

### Menggunakan Makefile (Recommended)

Makefile sudah dibuat di `src/digital/Makefile` dengan berbagai target:

```bash
cd src/digital

# Lihat bantuan
make help

# Cek apakah tools sudah terinstall
make check-tools

# Setup direktori yang diperlukan
make setup

# Jalankan testbench individual
make sim-pulse      # Test pulse_generator
make sim-i2c        # Test i2c_slave_config
make sim-timeout    # Test timeout_counter
make sim-main       # Test main_event_counter
make sim-top        # Test top module (full system)

# Lihat waveform hasil simulasi
make wave-pulse
make wave-main
make wave-top

# Jalankan semua testbench sekaligus
make test-all

# Bersihkan file hasil simulasi
make clean
```

### Manual (Tanpa Makefile)

**1. Compile Testbench:**
```bash
cd src/digital

# Test pulse_generator
iverilog -o tb/pulse_gen.out pulse_generator.v tb/tb_pulse_generator.v

# Test main_event_counter
iverilog -o tb/main_cnt.out main_event_counter.v tb/tb_main_event_counter.v

# Test top module (butuh semua dependencies)
iverilog -o tb/top.out \
    pulse_generator.v \
    i2c_slave_config.v \
    timeout_counter.v \
    main_event_counter.v \
    top.v \
    tb/tb_top.v
```

**2. Jalankan Simulasi:**
```bash
vvp tb/pulse_gen.out    # Output: gelombang_pulse.vcd
vvp tb/main_cnt.out     # Output: tb_main_event_counter.vcd
vvp tb/top.out          # Output: tb/vcd_file/tb_top.vcd
```

**3. Lihat Waveform:**
```bash
gtkwave gelombang_pulse.vcd
gtkwave tb_main_event_counter.vcd
gtkwave tb/vcd_file/tb_top.vcd
```

## Struktur Testbench yang Baik

Berdasarkan testbench yang sudah ada, struktur standar adalah:

```verilog
`timescale 1ns / 1ps

module tb_nama_modul;
    // 1. Deklarasi sinyal
    reg clk, reset;
    reg [7:0] input_data;
    wire output_signal;

    // 2. Instantiasi DUT (Device Under Test)
    nama_modul uut (
        .clk(clk),
        .reset(reset),
        .input_data(input_data),
        .output_signal(output_signal)
    );

    // 3. Clock generator
    always #5 clk = ~clk;  // Periode 10ns = 100 MHz

    // 4. Task untuk operasi berulang
    task send_pulse;
        begin
            @(posedge clk);
            input_data = 8'hFF;
            @(posedge clk);
            input_data = 8'h00;
        end
    endtask

    // 5. Stimulus dan test scenarios
    initial begin
        // Dump waveform
        $dumpfile("output.vcd");
        $dumpvars(0, tb_nama_modul);

        // Inisialisasi
        clk = 0;
        reset = 1;
        input_data = 0;
        #20 reset = 0;

        // Test Case 1: Normal operation
        $display("Test 1: Normal operation");
        send_pulse();
        #100;

        // Test Case 2: Edge case
        $display("Test 2: Edge case");
        // ...

        // Selesai
        $display("Simulation complete!");
        $finish;
    end

    // 6. Monitoring (opsional)
    initial begin
        $monitor("Time=%0t | input=%h | output=%b", 
                 $time, input_data, output_signal);
    end
endmodule
```

## Komponen Penting Testbench

### 1. Timescale
```verilog
`timescale 1ns / 1ps  // unit_time / precision
```

### 2. Clock Generator
```verilog
always #10 clk = ~clk;  // Toggle setiap 10ns (periode 20ns = 50 MHz)
```

### 3. Task untuk Reusability
```verilog
task send_pulse;
    begin
        @(posedge clk);  // Sinkron dengan clock
        signal = 1;
        @(posedge clk);
        signal = 0;
    end
endtask
```

### 4. Timing Control
- `#delay` - Absolute delay dalam time units
- `@(posedge clk)` - Wait for rising edge
- `@(negedge clk)` - Wait for falling edge
- `@(signal)` - Wait for any change

### 5. System Tasks
- `$dumpfile("file.vcd")` - Buat file VCD
- `$dumpvars(0, module)` - Dump semua variabel
- `$display("text")` - Print sekali
- `$monitor("text")` - Auto-print saat sinyal berubah
- `$finish` - Stop simulasi

## Contoh Test Scenarios

### Test 1: Normal Operation
```verilog
$display("Test 1: Normal counting");
threshold = 8'd3;
send_pulse();  // count = 1
send_pulse();  // count = 2
send_pulse();  // count = 3 -> trigger!
#20;
```

### Test 2: Edge Cases
```verilog
$display("Test 2: Threshold = 0");
threshold = 8'd0;
send_pulse();
// Trigger seharusnya tidak aktif
```

### Test 3: Timeout/Reset
```verilog
$display("Test 3: Timeout reset");
send_pulse();
send_pulse();
#300;  // Wait untuk timeout
// Counter seharusnya reset
```

## Tips Debugging

1. **Gunakan $display untuk checkpoint:**
   ```verilog
   $display("[%0t] Starting Test 1", $time);
   ```

2. **Monitor sinyal penting:**
   ```verilog
   $monitor("Time=%0t | count=%d | trigger=%b", $time, count, trigger);
   ```

3. **Verifikasi hasil:**
   ```verilog
   if (trigger_out) $display("PASS: Trigger activated");
   else $display("FAIL: Trigger should be active");
   ```

4. **Gunakan GTKWave untuk analisis visual:**
   - Zoom in/out: Ctrl + scroll
   - Measure time: klik kanan > Set marker
   - Add signals: klik signal di SST panel

## Troubleshooting

### Error: "Unknown module type"
**Penyebab:** File modul dependency tidak di-include saat compile.

**Solusi:**
```bash
# Include semua file yang dibutuhkan
iverilog -o output.out module1.v module2.v testbench.v
```

### Warning: "task has empty port declaration"
**Penyebab:** Task tanpa parameter ditulis dengan `()`.

**Solusi:**
```verilog
// Gunakan ini:
task send_pulse;
    // ...
endtask

// Bukan ini:
task send_pulse();  // <- warning
```

### File VCD tidak dibuat
**Penyebab:** Direktori output tidak ada.

**Solusi:**
```bash
mkdir -p tb/vcd_file
```

## Resources

- **Icarus Verilog Documentation:** http://iverilog.icarus.com/
- **GTKWave Documentation:** http://gtkwave.sourceforge.net/
- **Verilog Tutorial:** https://www.chipverify.com/verilog/verilog-tutorial

## Contoh Output Simulasi

```
=== Compiling pulse_generator testbench ===
=== Running simulation ===
VCD info: dumpfile gelombang_pulse.vcd opened for output.
-->performing Scenario 1: Normal Transition
-->performing Scenario 2: Transition with Glitch
--> Simulasi Selesai.
Time=0 | en=0 | signal_in=0 | pulse_out=0
Time=25 | en=1 | signal_in=0 | pulse_out=0
...
=== Simulation complete! ===
```

---

Untuk pertanyaan lebih lanjut, lihat testbench examples di `src/digital/tb/`.
