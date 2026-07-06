`timescale 1ns / 1ps

module tb_timeout_counter;
    reg clk;
    reg rst_n;
    reg pulse_in;
    reg [7:0] timeout_val;

    wire timeout_rst;

    // DUT instantiation
    timeout_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .pulse_in(pulse_in),
        .timeout_val(timeout_val),
        .timeout_rst(timeout_rst)
    );

    always #5 clk = ~clk; // Clock generation: 100MHz clock (10ns period)

    initial begin
        $dumpfile("tb_timeout_counter.vcd");
        $dumpvars(0, tb_timeout_counter);

        //  initialization
        clk = 0;
        rst_n = 0;
        pulse_in = 0;
        timeout_val = 8'h00;

        // releasing reset after a few clock cycles
        #20;
        rst_n = 1;
        #10;

        // test 1: Normal timeout counting with timeout_val = 5
        $display("[%0t] test 1: Normal timeout counting", $time);
        timeout_val = 8'd5;
        #70; 

        //test 2: pulse_in arrives before timeout, should reset timer_count to 0
        $display("[%0t] test 2: pulse_in arrives before timeout", $time);
        timeout_val = 8'd8;
        #30; 
        
        @(posedge clk);
        pulse_in = 1; // simulate a pulse arriving
        @(posedge clk);
        pulse_in = 0;
        #50; // timer_count should reset to 0 and start counting again

        // TEST 3: Edge Case (timeout_val = 0) 
        $display("[%0t] test 3: Timeout disabled (Threshold 0)", $time);
        timeout_val = 8'h00;
        #50; // timer_count should never reach timeout_val, so timeout_rst should remain low

        // TEST 4: Edge Case (pulse_in stuck at 1) 
        $display("[%0t] test 4: pulse_in stuck at 1", $time);
        timeout_val = 8'd4;
        pulse_in = 1;
        #50; // timer_count should reset to 0 continuously due to pulse_in being high, so timeout_rst should never go high
        pulse_in = 0;

        #30;
        $display("[%0t] Simulasi Selesai.", $time);
        $finish;
    end


    initial begin
        $monitor("Time=%0t | rst_n=%b | pulse_in=%b | timeout_val=%d || timer_count=%d | timeout_rst=%b", 
        $time, rst_n, pulse_in, timeout_val, uut.timer_count, timeout_rst);
    end

endmodule