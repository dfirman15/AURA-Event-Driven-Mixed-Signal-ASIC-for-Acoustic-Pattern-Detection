`timescale 1ns / 1ps

module tb_top;
    parameter CLK_PERIOD = 10; 
    parameter SLAVE_ADDR = 7'h50;

    reg  clk;
    reg  rst_n;
    reg  signal_in;
    
    // I2C Signals
    reg  scl;
    reg  sda_in;
    wire sda_out;
    wire sda_oe;
    
    // Output Monitoring
    wire       trigger_out;
    wire [7:0] count_reg;

    top #(
        .SLAVE_ADDR(SLAVE_ADDR)
    ) dut (
        .clk        (clk),
        .rst_n      (rst_n),
        .signal_in  (signal_in),
        .scl        (scl),
        .sda_in     (sda_in),
        .sda_out    (sda_out),
        .sda_oe     (sda_oe),
        .trigger_out(trigger_out),
        .count_reg  (count_reg)
    );

    always #(CLK_PERIOD/2) clk = ~clk;
    
    // task for sending a byte over I2C
    task i2c_write_byte(input [7:0] data);
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                scl = 0; #50;
                sda_in = data[i]; #50;
                scl = 1; #100; 
                scl = 0; #50;
            end
            // ACK Phase
            sda_in = 1; scl = 1; #100; scl = 0; #50;
        end
    endtask

    // Task for writing a complete register (START -> ADDR -> REG -> DATA -> STOP)
    task i2c_write_reg(input [7:0] reg_addr, input [7:0] data);
        begin
            $display("[%0t ns] I2C Write -> Reg 0x%h = 0x%h", $time, reg_addr, data);
            // START
            sda_in = 0; #50; scl = 0; 
            // DEVICE ADDR (0x50 << 1 | 0 = 0xA0)
            i2c_write_byte(8'hA0); 
            // REGISTER ADDR
            i2c_write_byte(reg_addr);
            // DATA BYTE
            i2c_write_byte(data);
            // STOP
            scl = 0; sda_in = 0; #50;
            scl = 1; #50; sda_in = 1; #100;
        end
    endtask

    // Task for generating pulse from outside (simulating analog comparator)
    task send_external_pulse();
        begin
            // Duration of the pulse is arbitrary, as long as it exceeds 1 clock cycle (so it's read by d1 & d2)
            signal_in = 1'b1;
            #(CLK_PERIOD * 3); 
            signal_in = 1'b0;
            #(CLK_PERIOD * 3); // Jeda setelah pulsa
        end
    endtask

// main testbench sequence
    initial begin
        // Setup GTKWave
        $dumpfile("tb_top.vcd");
        $dumpvars(0, tb_top);

        // 1. initialization
        clk = 0; rst_n = 0; signal_in = 0; 
        scl = 1; sda_in = 1;
        
        #100 rst_n = 1; #100;
        $display("\n=== Start ===\n");
        // 2. FASE KONFIGURASI (Via I2C)
        // Reg 0x00 = Threshold. Kita set ke 3.
        i2c_write_reg(8'h00, 8'h03);
        #200;
        // Reg 0x01 = Timeout. Kita set ke 20 siklus clock (0x14).
        i2c_write_reg(8'h01, 8'h14);
        #200;

        // 3. scenario 1: Test Threshold
        $display("\n=== Scenario 1: Test Threshold (Target: 3) ===");
        $display("[%0t ns] Send pulse 1", $time);
        send_external_pulse();
        
        $display("[%0t ns] Send pulse 2", $time);
        send_external_pulse();
        
        $display("[%0t ns] Send pulse 3 (trigger!)", $time);
        send_external_pulse();
        
        #5; 
        if (trigger_out) $display("SUCCESS: trigger_out turned on!");
        else $display("FAILED: trigger_out did not turn on!");
        #50;

        // 4. scenario 2: Test Timeout
        $display("\n=== Scenario 2: Test Timeout (Batas: 20 cycles = 200ns) ===");
        $display("[%0t ns] Send 1 new pulse", $time);
        send_external_pulse();
        $display("[%0t ns] Current value of count_reg: %d", $time, count_reg);
        
        $display("[%0t ns] Waiting for 300ns (Exceeding Timeout)...", $time);
        #300; // Tunggu 30 siklus clock
        
        if (count_reg == 8'h00) $display("SUCCESS: count_reg successfully reset by Timeout!");
        else $display("FAILED: count_reg failed to reset! Current value: %d", count_reg);

        // 5. SELESAI
        $display("\n=== SIMULASI SELESAI ===");
        #100;
        $finish;
    end

endmodule