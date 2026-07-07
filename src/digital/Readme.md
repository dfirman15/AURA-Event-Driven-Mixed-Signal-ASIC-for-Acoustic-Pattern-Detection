# Digital Unit Testing (Testbench)

This folder (`src/digital/tb/`) is dedicated to the unit testing of individual RTL (Register-Transfer Level) digital modules designed to support the main sensor circuit. 

The focus here is to validate logic at the module level independently (e.g., ADC/DAC interfaces, calibration FSMs, or communication protocols) before integrating them into the top-level system. For top-level mixed-signal verification, please refer to the `cocotb/` folder in the root directory.

## 🛠️ Prerequisites

To run the simulations in this folder, ensure you have the following open-source tools installed on your system:
* **Icarus Verilog (`iverilog`)**: For compiling and simulating the RTL code.
* **GTKWave**: For viewing and analyzing the simulation waveforms.

## 📂 Verification Structure

Please keep the file organization clean and consistent:
* Place the main RTL design files (e.g., `pulse_generator.v`) in `src/digital/`
* Place the corresponding testbench files (e.g., `tb_pulse_generator.v`) in this folder (`src/digital/tb/`)

## 🚀 How to Run a Simulation

Below is the standard workflow for running a unit test using the terminal. Assuming we are testing a module named `pulse_generator`:

### 1. Compile the Design and Testbench
Use `iverilog` to compile both the RTL and testbench files into a simulation executable (typically a `.vvp` file). Run the following command from inside the `tb/` folder:

```bash
iverilog -o pulse_generator_sim.vvp ../pulse_generator.v tb_pulse_generator.v
