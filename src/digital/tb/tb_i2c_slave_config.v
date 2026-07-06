`timescale 1ns / 1ps

module tb_i2c_slave_config;

    // Parameter
    parameter CLK_PERIOD = 10; // 100MHz system clock

    // Inputs
    reg clk;
    reg rst_n;
    reg scl;
    reg sda_in;

    // Outputs
    wire sda_out;
    wire sda_oe;
    wire [7:0] threshold_reg;
    wire [7:0] timeout_reg;

    // DUT Instantiation
    i2c_slave_config #(.SLAVE_ADDR(7'h50)) u_i2c (
        .clk(clk),
        .rst_n(rst_n),
        .scl(scl),
        .sda_in(sda_in),
        .sda_out(sda_out),
        .sda_oe(sda_oe),
        .threshold_reg(threshold_reg),
        .timeout_reg(timeout_reg)
    );

    // Clock Generation
    always #(CLK_PERIOD/2) clk = ~clk;

    // task for sending a byte over I2C
    task i2c_write_byte;
        input [7:0] data;
        integer i;
        begin
            // Fase Data (8 Bit)
            for (i = 7; i >= 0; i = i - 1) begin
                scl = 0; #50;
                sda_in = data[i]; #50;
                scl = 1; #100; // SCL High pulse
                scl = 0; #50;
            end
            
            //  Fase ACK/NACK
            sda_in = 1; // master releases SDA for ACK/NACK
            scl = 1; #50; // SCL High
            
            // evaluation response from Slave in mid SCL High
            if (sda_oe == 1'b1 && sda_out == 1'b0) begin
                $display("[%0t ns] ACK Received for byte: 0x%h", $time, data);
            end else begin
                $display("[%0t ns] ERROR: NACK! Slave did not respond to byte: 0x%h", $time, data);
            end
            
            #50; scl = 0; #50; // Complete SCL Low
        end
    endtask

    initial begin
        $dumpfile("i2c_sim.vcd");
        $dumpvars(0, tb_i2c_slave_config);

        // Init
        clk = 0; rst_n = 0; scl = 1; sda_in = 1;
        #100 rst_n = 1; #100;

        $display("=== START SIMULATION I2C WRITE ===");

        // 1. START CONDITION
        sda_in = 0; #50; scl = 0; 

        // 2. send Address (0x50 << 1 | WriteBit 0 = 0xA0)
        i2c_write_byte(8'hA0); 

        // 3. send Register Address (0x00 untuk Threshold)
        i2c_write_byte(8'h00);

        // 4. send Data Threshold (Misal: 0x0A)
        i2c_write_byte(8'h0A);

        // 5. STOP CONDITION
        scl = 0; sda_in = 0; #50;
        scl = 1; #50;
        sda_in = 1; #100;

        #200;
        // check if the threshold register has been updated correctly
        if (threshold_reg == 8'h0A) 
            $display("SUCCESS: Threshold successfully updated to 0x0A");
        else 
            $display("FAILED: Threshold not updated correctly. Expected 0x0A, got %h", threshold_reg);

        $display("\n=== START SIMULATION I2C WRITE (TIMEOUT REG) ===");

        // 1. START CONDITION
        sda_in = 0; #50; scl = 0; 

        // 2. send Address (0x50 << 1 | WriteBit 0 = 0xA0)
        i2c_write_byte(8'hA0); 

        // 3. send Register Address (0x01 untuk Timeout)
        i2c_write_byte(8'h01);

        // 4. send Data Timeout (Misal: 0xFF)
        i2c_write_byte(8'hFF);

        // 5. STOP CONDITION
        scl = 0; sda_in = 0; #50;
        scl = 1; #50;
        sda_in = 1; #100;

        #200;
        // Cek hasil akhir di register timeout
        if (timeout_reg == 8'hFF) 
            $display("SUCCESS: timeout register successfully updated to 0xFF");
        else 
            $display("FAILED: Timeout salah. Diharapkan 0xFF, terbaca %h", timeout_reg);
        $display("=== simulation complete ===");
        $finish;
    end
endmodule