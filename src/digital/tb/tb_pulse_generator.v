`timescale 1ns / 1ps // Skala waktu simulasi: 1 tick = 1 nanodetik

module tb_pulse_generator;

    reg clk;
    reg rst_n;
    reg signal_in;
    wire pulse_out;

    pulse_generator u_pulse_gen (
        .clk(clk),
        .rst_n(rst_n),
        .signal_in(signal_in),
        .pulse_out(pulse_out)
    );

   // create a clock signal with a period of 20ns (50 MHz)
    always #10 clk = ~clk;


//scenario simulation
    initial begin
        $dumpfile("gelombang_pulse.vcd");
        $dumpvars(0, tb_pulse_generator);

        // intialization
        clk = 0;
        rst_n = 0;
        signal_in = 0;
        #25 rst_n = 1;
        #15; 

        // scenario 1: normal transition
        $display("-->performing Scenario 1: Normal Transition");
        #12 signal_in = 1; 
        #60 signal_in = 0; 
        #40; 

        // -- scenario 2: transition with glitch
        $display("-->performing Scenario 2: Transition with Glitch");
        #13 signal_in = 1; // high
        #5  signal_in = 0; // low sesaat (glitch / noise)
        #8  signal_in = 1; // high 
        #50 signal_in = 0;

        #50;
        $display("--> Simulasi Selesai.");
        $finish;
    end

    initial begin
        $monitor("Time=%0t | rst_n=%b | signal_in=%b | pulse_out=%b", 
        $time, rst_n, signal_in, pulse_out);
    end

endmodule