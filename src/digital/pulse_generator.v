module pulse_generator (
    input wire clk,
    input wire rst_n,
    input wire signal_in, // input signal from comparator
    output wire pulse_out // output pulse
);
    reg signal_d1;
    reg signal_d2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            signal_d1 <= 1'b0;
            signal_d2 <= 1'b0;  
        end else begin
            signal_d1 <= signal_in; 
            signal_d2 <= signal_d1; 
        end
    end

    assign pulse_out = signal_d1 & ~signal_d2; // pulse in transition high low
endmodule