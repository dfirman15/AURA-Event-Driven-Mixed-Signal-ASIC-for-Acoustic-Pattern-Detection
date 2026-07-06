

`timescale 1ns / 1ps

module tb_main_event_counter;

  //signal declaration
    reg clk;
    reg rst_n;
    reg pulse_in;
    reg timeout_rst;
    reg [7:0] threshold;

    wire trigger_out;
    wire [7:0] count_reg;

//dut instantiation
    main_event_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .pulse_in(pulse_in),
        .timeout_rst(timeout_rst),
        .threshold(threshold),
        .trigger_out(trigger_out),
        .count_reg(count_reg)
    );

    always #5 clk = ~clk;

    //task for sending a pulse to the main_event_counter
    task send_pulse;
        begin
            @(posedge clk);
            pulse_in = 1;
            @(posedge clk);
            pulse_in = 0;
        end
    endtask

    //main simulation block
    initial begin
        $dumpfile("tb_main_event_counter.vcd");
        $dumpvars(0, tb_main_event_counter);

        clk = 0;
        rst_n = 0; // hold reset active
        pulse_in = 0;
        timeout_rst = 0;
        threshold = 8'h00;

        // wait for a few clock cycles before releasing reset
        #20;
        rst_n = 1; 
        #10;

// test1: Normal counting to threshold
        $display("[%0t] Test 1: Threshold = 3", $time);
        threshold = 8'd3;
        send_pulse(); //  1
        #10;
        send_pulse(); //  2
        #10;
        send_pulse(); //  3 -> trigger_out should go high
        #20;          // counter should reset to 0 after reaching threshold

//test 2: Timeout reset
        $display("[%0t] Test 2: Timeout interrupt", $time);
        threshold = 8'd5;
        send_pulse(); // 1
        send_pulse(); // 2
        // Now simulate a timeout reset
        @(posedge clk);
        timeout_rst = 1;
        @(posedge clk);
        timeout_rst = 0;
        #20; // counter should reset to 0, trigger_out should be low

        // --- TEST 3: Edge Case Threshold = 0 ---
        $display("[%0t] Test 3: Edge Case Threshold = 0", $time);
        threshold = 8'h00;
        send_pulse(); //  1
        send_pulse(); //  2
        // Since threshold is 0, trigger_out should never go high regardless of pulses
        #20;

        // --- TEST 4: Continuous Pulses ---
        $display("[%0t]   Test 4: Continuous Pulses (Threshold = 2)", $time);
        threshold = 8'd2;
        #20;
        @(posedge clk);
        pulse_in = 1; // Tahan tombol pulse high!
        #50;
        pulse_in = 0;

        // Selesai
        #30;
        $display("[%0t] Simulasi Selesai.", $time);
        $finish;
    end

    // Opsional: Monitor perubahan nilai di konsol secara real-time
    initial begin
        $monitor("Time=%0t | rst=%b | threshold=%d | count=%d | trigger_out=%b | timeout=%b", 
                 $time, rst_n, threshold, count_reg, trigger_out, timeout_rst);
    end

endmodule