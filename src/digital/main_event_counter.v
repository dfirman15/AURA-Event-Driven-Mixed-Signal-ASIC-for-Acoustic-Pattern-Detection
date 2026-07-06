module main_event_counter (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       pulse_in,      // from pulse generator
    input  wire       timeout_rst,   // signal from timeout counter
    input  wire [7:0] threshold,     // from I2C Config
    output wire       trigger_out,   // signal successful reaching target
    output wire [7:0] count_reg      // for internal monitoring
);

    // Internal counter to keep track of the number of pulses received
    reg [7:0] current_count;
    wire auto_reset = (current_count == threshold) && (threshold != 8'h00);
    
    // Meneruskan sinyal komparator langsung ke luar sebagai output
    assign trigger_out = auto_reset;
    assign count_reg   = current_count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_count <= 8'h00;

        end else begin
            if (timeout_rst || auto_reset) begin
                current_count <= 8'h00;
            end 
            else if (pulse_in) begin
                current_count <= current_count + 1'b1;
            end
        end
    end

endmodule
