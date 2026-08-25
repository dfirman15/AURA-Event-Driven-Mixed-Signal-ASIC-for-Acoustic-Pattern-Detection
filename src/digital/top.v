module B04_TOP (
    inout  wire       GND,
    inout  wire       VDD,
    inout  wire       Vin,
    inout  wire       Vbpf,
    inout  wire       Venvelope,
    inout  wire       Vthreshold,
    inout  wire       Vtrigger,
    inout  wire       sda,
    input  wire       scl,
    input  wire       en
);

    wire clk_int;
    wire comp_out_w;
    wire [2:0] cap_ctrl_w;
    wire trigger_w;

    B04_AFE_top u_afe (
        .VDD        (VDD),
        .GND        (GND),
        .Vin        (Vin),
        .Vbpf       (Vbpf),
        .Venvelope  (Venvelope),
        .Vthreshold (Vthreshold),
        .Vout       (comp_out_w),
        .Cap0       (cap_ctrl_w[0]),
        .Cap1       (cap_ctrl_w[1]),
        .Cap2       (cap_ctrl_w[2])
    );

    B04_clock u_clock (
        .VDD (VDD),
        .GND (GND),
        .en  (en),
        .clk (clk_int)
    );

    digital_top #(
        .SLAVE_ADDR(7'h50)
    ) u_digital (
        .clk         (clk_int),
        .comp_out    (comp_out_w),
        .en          (en),
        .scl         (scl),
        .sda         (sda),
        .trigger_out (trigger_w),
        .cap_ctrl    (cap_ctrl_w)
    );

    assign Vtrigger = trigger_w;

endmodule
