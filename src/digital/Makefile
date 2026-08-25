# Makefile for Digital Testbench
# Verilog simulator (iverilog atau verilator)
IVERILOG = iverilog
VVP = vvp
GTKWAVE = gtkwave

# Direktori
TB_DIR = tb
VCD_DIR = $(TB_DIR)/vcd_file
SIM_DIR = $(TB_DIR)/sim_output

# Source files
SRC_FILES = pulse_generator.v \
            i2c_slave_config.v \
            timeout_counter.v \
            main_event_counter.v

# Testbench files
TB_PULSE = $(TB_DIR)/tb_pulse_generator.v
TB_I2C = $(TB_DIR)/tb_i2c_slave_config.v
TB_TIMEOUT = $(TB_DIR)/tb_timeout_counter.v
TB_MAIN = $(TB_DIR)/tb_main_event_counter.v
TB_TOP = $(TB_DIR)/tb_top.v

# Output files
OUT_PULSE = $(TB_DIR)/pulse_generator.out
OUT_I2C = $(TB_DIR)/i2c_slave_config.out
OUT_TIMEOUT = $(TB_DIR)/timeout_counter.out
OUT_MAIN = $(TB_DIR)/main_event_counter.out
OUT_TOP = $(TB_DIR)/top.out

# VCD files
VCD_PULSE = gelombang_pulse.vcd
VCD_I2C = tb_i2c_slave_config.vcd
VCD_TIMEOUT = tb_timeout_counter.vcd
VCD_MAIN = tb_main_event_counter.vcd
VCD_TOP = $(VCD_DIR)/tb_top.vcd

.PHONY: all help clean setup check-tools
.PHONY: sim-pulse sim-i2c sim-timeout sim-main sim-top
.PHONY: wave-pulse wave-i2c wave-timeout wave-main wave-top
.PHONY: test-all

# Default target
all: help

help: ## Show this help message
	@echo "================================================"
	@echo "  Digital Testbench Makefile - AURA Project"
	@echo "================================================"
	@echo ""
	@echo "Setup:"
	@echo "  make check-tools    - Check if required tools are installed"
	@echo "  make setup          - Create required directories"
	@echo ""
	@echo "Individual Module Tests:"
	@echo "  make sim-pulse      - Run pulse_generator testbench"
	@echo "  make sim-i2c        - Run i2c_slave_config testbench"
	@echo "  make sim-timeout    - Run timeout_counter testbench"
	@echo "  make sim-main       - Run main_event_counter testbench"
	@echo "  make sim-top        - Run top module testbench"
	@echo ""
	@echo "View Waveforms:"
	@echo "  make wave-pulse     - View pulse_generator waveform"
	@echo "  make wave-i2c       - View i2c_slave_config waveform"
	@echo "  make wave-timeout   - View timeout_counter waveform"
	@echo "  make wave-main      - View main_event_counter waveform"
	@echo "  make wave-top       - View top module waveform"
	@echo ""
	@echo "All Tests:"
	@echo "  make test-all       - Run all testbenches"
	@echo ""
	@echo "Utilities:"
	@echo "  make clean          - Remove generated files"
	@echo ""

check-tools: ## Check if required tools are installed
	@echo "Checking for required tools..."
	@command -v $(IVERILOG) >/dev/null 2>&1 || { echo "ERROR: iverilog not found. Please install Icarus Verilog."; exit 1; }
	@command -v $(VVP) >/dev/null 2>&1 || { echo "ERROR: vvp not found."; exit 1; }
	@command -v $(GTKWAVE) >/dev/null 2>&1 || { echo "WARNING: gtkwave not found. Waveform viewing will not work."; }
	@echo "All required tools are installed!"

setup: ## Create required directories
	@mkdir -p $(VCD_DIR)
	@mkdir -p $(SIM_DIR)
	@echo "Directories created successfully!"

# Pulse Generator Testbench
sim-pulse: check-tools setup ## Compile and run pulse_generator testbench
	@echo "=== Compiling pulse_generator testbench ==="
	$(IVERILOG) -o $(OUT_PULSE) pulse_generator.v $(TB_PULSE)
	@echo "=== Running simulation ==="
	$(VVP) $(OUT_PULSE)
	@echo "=== Simulation complete! VCD file: $(VCD_PULSE) ==="
	@echo "=== Opening GTKWave ==="
	$(GTKWAVE) $(VCD_PULSE) &

wave-pulse: ## View pulse_generator waveform
	$(GTKWAVE) $(VCD_PULSE) &

# I2C Slave Config Testbench
sim-i2c: check-tools setup ## Compile and run i2c_slave_config testbench
	@echo "=== Compiling i2c_slave_config testbench ==="
	$(IVERILOG) -o $(OUT_I2C) i2c_slave_config.v $(TB_I2C)
	@echo "=== Running simulation ==="
	$(VVP) $(OUT_I2C)
	@echo "=== Simulation complete! VCD file: $(VCD_I2C) ==="
	@echo "=== Opening GTKWave ==="
	$(GTKWAVE) $(VCD_I2C) &

wave-i2c: ## View i2c_slave_config waveform
	$(GTKWAVE) $(VCD_I2C) &

# Timeout Counter Testbench
sim-timeout: check-tools setup ## Compile and run timeout_counter testbench
	@echo "=== Compiling timeout_counter testbench ==="
	$(IVERILOG) -o $(OUT_TIMEOUT) timeout_counter.v $(TB_TIMEOUT)
	@echo "=== Running simulation ==="
	$(VVP) $(OUT_TIMEOUT)
	@echo "=== Simulation complete! VCD file: $(VCD_TIMEOUT) ==="
	@echo "=== Opening GTKWave ==="
	$(GTKWAVE) $(VCD_TIMEOUT) &

wave-timeout: ## View timeout_counter waveform
	$(GTKWAVE) $(VCD_TIMEOUT) &

# Main Event Counter Testbench
sim-main: check-tools setup ## Compile and run main_event_counter testbench
	@echo "=== Compiling main_event_counter testbench ==="
	$(IVERILOG) -o $(OUT_MAIN) main_event_counter.v $(TB_MAIN)
	@echo "=== Running simulation ==="
	$(VVP) $(OUT_MAIN)
	@echo "=== Simulation complete! VCD file: $(VCD_MAIN) ==="
	@echo "=== Opening GTKWave ==="
	$(GTKWAVE) $(VCD_MAIN) &

wave-main: ## View main_event_counter waveform
	$(GTKWAVE) $(VCD_MAIN) &

# Top Module Testbench (includes all dependencies)
sim-top: check-tools setup ## Compile and run top module testbench
	@echo "=== Compiling top module testbench ==="
	$(IVERILOG) -o $(OUT_TOP) \
		pulse_generator.v \
		i2c_slave_config.v \
		timeout_counter.v \
		main_event_counter.v \
		top.v \
		$(TB_TOP)
	@echo "=== Running simulation ==="
	$(VVP) $(OUT_TOP)
	@echo "=== Simulation complete! VCD file: $(VCD_TOP) ==="
	@echo "=== Opening GTKWave ==="
	$(GTKWAVE) $(VCD_TOP) &

wave-top: ## View top module waveform
	$(GTKWAVE) $(VCD_TOP) &

# Run all testbenches
test-all: sim-pulse sim-i2c sim-timeout sim-main sim-top ## Run all testbenches
	@echo ""
	@echo "========================================"
	@echo "  All testbenches completed!"
	@echo "========================================"

clean: ## Remove generated files
	@echo "Cleaning up..."
	@rm -f $(TB_DIR)/*.out
	@rm -f *.vcd
	@rm -f $(VCD_DIR)/*.vcd
	@rm -rf $(SIM_DIR)
	@echo "Clean complete!"
