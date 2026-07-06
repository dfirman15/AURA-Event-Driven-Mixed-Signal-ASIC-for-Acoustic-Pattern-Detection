module timeout_counter (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       pulse_in,      // from pulse generator
    input  wire [7:0] timeout_val,   // timeout value from I2C Config
    output wire       timeout_rst    // signal to reset main_event_counter when timeout occurs
);

    reg [7:0] timer_count; //8-bit state register for counting clock cycles
    wire auto_reset = (timer_count >= timeout_val) && (timeout_val != 8'h00); // comparator block to check if timer_count has reached timeout_val
    assign timeout_rst = auto_reset;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer_count <= 8'h00;
        end else begin
            // reset if pulse_in is high or auto_reset is high (priority 1)
            if (pulse_in || auto_reset) begin
                timer_count <= 8'h00;
            end 
            // increment timer_count if no reset conditions are met (priority 2)
            else begin
                timer_count <= timer_count + 1'b1;
            end
        end
    end

endmodule