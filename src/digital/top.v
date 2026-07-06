module top #(
    parameter SLAVE_ADDR = 7'h50
)(
    // clock signal and Global Reset
    input  wire       clk,
    input  wire       rst_n,
    input  wire       signal_in,   
    
    // I2C Configuration Interface
    input  wire       scl,
    input  wire       sda_in,
    output wire       sda_out,
    output wire       sda_oe,
    
    // Output digital
    output wire       trigger_out, 
    output wire [7:0] count_reg    
);


    wire       pulse_w;
    wire       timeout_rst_w;
    wire [7:0] threshold_w;
    wire [7:0] timeout_val_w;

    // 1. Pulse Generator
    pulse_generator u_pulse_gen (
        .clk       (clk),
        .rst_n     (rst_n),
        .signal_in (signal_in),
        .pulse_out (pulse_w)
    );

    // 2. I2C Slave Configuration
    i2c_slave_config #(
        .SLAVE_ADDR(SLAVE_ADDR)
    ) u_i2c_config (
        .clk           (clk),
        .rst_n         (rst_n),
        .scl           (scl),
        .sda_in        (sda_in),
        .sda_out       (sda_out),
        .sda_oe        (sda_oe),
        .threshold_reg (threshold_w),
        .timeout_reg   (timeout_val_w)
    );

    // 3. Timeout Counter
    timeout_counter u_timeout_cnt (
        .clk         (clk),
        .rst_n       (rst_n),
        .pulse_in    (pulse_w),
        .timeout_val (timeout_val_w),
        .timeout_rst (timeout_rst_w)
    );

    // 4. Main Event Counter
    main_event_counter u_main_cnt (
        .clk         (clk),
        .rst_n       (rst_n),
        .pulse_in    (pulse_w),
        .timeout_rst (timeout_rst_w),
        .threshold   (threshold_w),
        .trigger_out (trigger_out),
        .count_reg   (count_reg)
    );

endmodule