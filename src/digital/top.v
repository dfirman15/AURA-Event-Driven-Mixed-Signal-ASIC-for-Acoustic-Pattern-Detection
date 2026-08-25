module top #(
    parameter SLAVE_ADDR = 7'h50
)(
    // clock signal and Global Reset
    input  wire       clk,
    input  wire       en,
    input  wire       signal_in,   
    
    // I2C Configuration Interface
    input  wire       scl,
    input  wire       sda_in,
    output wire       sda_out,
    output wire       sda_oe,
    
    // Output digital
    output wire       trigger_out, 
    output wire [7:0] count_reg,
    
    // Capacitor Control Output
    output wire [7:0] capacitor_ctrl
);


    wire       pulse_w;
    wire       timeout_rst_w;
    wire [7:0] threshold_w;
    wire [7:0] timeout_val_w;
    wire [7:0] capacitor_ctrl_w;

    // 1. Pulse Generator
    pulse_generator u_pulse_gen (
        .clk       (clk),
        .en        (en),
        .signal_in (signal_in),
        .pulse_out (pulse_w)
    );

    // 2. I2C Slave Configuration
    i2c_slave_config #(
        .SLAVE_ADDR(SLAVE_ADDR)
    ) u_i2c_config (
        .clk                (clk),
        .en                 (en),
        .scl                (scl),
        .sda_in             (sda_in),
        .sda_out            (sda_out),
        .sda_oe             (sda_oe),
        .threshold_reg      (threshold_w),
        .timeout_reg        (timeout_val_w),
        .capacitor_ctrl_reg (capacitor_ctrl_w)
    );
    
    // Connect capacitor control to output
    assign capacitor_ctrl = capacitor_ctrl_w;

    // 3. Timeout Counter
    timeout_counter u_timeout_cnt (
        .clk         (clk),
        .en          (en),
        .pulse_in    (pulse_w),
        .timeout_val (timeout_val_w),
        .timeout_rst (timeout_rst_w)
    );

    // 4. Main Event Counter
    wire trigger_internal;
    main_event_counter u_main_cnt (
        .clk         (clk),
        .en          (en),
        .pulse_in    (pulse_w),
        .timeout_rst (timeout_rst_w),
        .threshold   (threshold_w),
        .trigger_out (trigger_internal),
        .count_reg   (count_reg)
    );

    // 5. Bypass Logic
    // When en=1: bypass mode, output directly from comparator (signal_in)
    // When en=0: normal mode, output from digital processing (trigger_internal)
    assign trigger_out = en ? signal_in : trigger_internal;

endmodule