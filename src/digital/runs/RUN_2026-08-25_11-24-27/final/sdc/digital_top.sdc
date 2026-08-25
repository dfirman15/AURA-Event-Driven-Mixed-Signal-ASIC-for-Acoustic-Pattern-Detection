###############################################################################
# Created by write_sdc
###############################################################################
current_design digital_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 33333.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {comp_out}]
set_input_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {en}]
set_input_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {scl}]
set_input_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sda}]
set_output_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cap_ctrl[0]}]
set_output_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cap_ctrl[1]}]
set_output_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cap_ctrl[2]}]
set_output_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sda}]
set_output_delay 6666.0000 -clock [get_clocks {clk}] -add_delay [get_ports {trigger_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {sda}]
set_load -pin_load 0.0729 [get_ports {trigger_out}]
set_load -pin_load 0.0729 [get_ports {cap_ctrl[2]}]
set_load -pin_load 0.0729 [get_ports {cap_ctrl[1]}]
set_load -pin_load 0.0729 [get_ports {cap_ctrl[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {comp_out}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {en}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {scl}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sda}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
