module digital_top #(
    parameter SLAVE_ADDR = 7'h50
)(
    inout  wire       VDD,
    inout  wire       VSS,

    input  wire       clk,
    input  wire       comp_out,

    input  wire       en,

    input  wire       scl,
    inout  wire        sda,

    output wire       trigger_out,

    output wire [2:0] cap_ctrl
);

    wire pulse_w;
    wire timeout_rst_w;
    wire [7:0] threshold_w;
    wire [7:0] timeout_val_w;
    wire       trigger_internal;

    // resolve tri-state sda
    wire sda_in_w  = sda;
    wire sda_out_w;
    wire sda_oe_w;
    assign sda = sda_oe_w ? sda_out_w : 1'bz;

    // Pulse generator dari output comparator
    pulse_generator u_pulse_gen (
        .clk       (clk),
        .en        (en),
        .signal_in (comp_out),
        .pulse_out (pulse_w)
    );

    // I2C slave config
    i2c_slave_config #(
        .SLAVE_ADDR(SLAVE_ADDR)
    ) u_i2c_config (
        .clk           (clk),
        .en            (en),
        .scl           (scl),
        .sda_in        (sda_in_w),
        .sda_out       (sda_out_w),
        .sda_oe        (sda_oe_w),
        .threshold_reg (threshold_w),
        .timeout_reg   (timeout_val_w),
        .cap_ctrl_reg  (cap_ctrl)
    );

    // Timeout counter
    timeout_counter u_timeout_cnt (
        .clk         (clk),
        .en          (en),
        .pulse_in    (pulse_w),
        .timeout_val (timeout_val_w),
        .timeout_rst (timeout_rst_w)
    );

    // Main event counter
    main_event_counter u_main_cnt (
        .clk         (clk),
        .en          (en),
        .pulse_in    (pulse_w),
        .timeout_rst (timeout_rst_w),
        .threshold   (threshold_w),
        .trigger_out (trigger_internal),
        .count_reg   ()            //floating (debug only)
    );

    // Bypass logic

    assign trigger_out = en ? comp_out : trigger_internal;

endmodule
