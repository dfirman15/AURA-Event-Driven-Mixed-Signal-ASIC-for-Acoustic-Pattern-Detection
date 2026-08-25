module i2c_slave_config #(
    parameter SLAVE_ADDR = 7'h50
)(
    input  wire       clk,
    input  wire       en,
    input  wire       scl,
    input  wire       sda_in,
    output reg        sda_out,
    output reg        sda_oe,
    output wire [7:0] threshold_reg,
    output wire [7:0] timeout_reg,
    output wire [2:0] cap_ctrl_reg
);

    // Block 1: edge detection SCL/SDA
    reg scl_d1, scl_d2, sda_d1, sda_d2;
    always @(posedge clk or posedge en) begin
        if (en) begin
            scl_d1 <= 1'b1; scl_d2 <= 1'b1;
            sda_d1 <= 1'b1; sda_d2 <= 1'b1;
        end else begin
            scl_d1 <= scl;     scl_d2 <= scl_d1;
            sda_d1 <= sda_in;  sda_d2 <= sda_d1;
        end
    end

    wire scl_rise  = scl_d1 & ~scl_d2;
    wire scl_fall  = ~scl_d1 & scl_d2;
    wire start_det = scl_d1 & scl_d2 & ~sda_d1 & sda_d2;
    wire stop_det  = scl_d1 & scl_d2 & sda_d1 & ~sda_d2;

    // Block 2: FSM
    localparam IDLE=3'd0, ADDR=3'd1, ADDR_ACK=3'd2, REGADDR=3'd3, REGADDR_ACK=3'd4, DATA=3'd5, DATA_ACK=3'd6;

    reg [2:0] state;
    reg [3:0] bit_cnt;
    reg       write_en;

    wire shift_en = (state == ADDR || state == REGADDR || state == DATA) && scl_rise;

    always @(posedge clk or posedge en) begin
        if (en) begin
            state    <= IDLE;
            bit_cnt  <= 4'd0;
            sda_out  <= 1'b1;
            sda_oe   <= 1'b0;
            write_en <= 1'b0;
        end else begin
            write_en <= 1'b0;

            if (start_det) begin
                state   <= ADDR;
                bit_cnt <= 4'd0;
                sda_oe  <= 1'b0;
            end
            else if (stop_det) begin
                state  <= IDLE;
                sda_oe <= 1'b0;
            end
            else begin
                case (state)
                    ADDR: begin
                        if (shift_en) begin
                            bit_cnt <= bit_cnt + 1'b1;
                            if (bit_cnt == 4'd7) state <= ADDR_ACK;
                        end
                    end

                    ADDR_ACK: begin
                        if (scl_fall) begin
                            if (sda_oe == 1'b0) begin
                                if (parallel_data[7:1] == SLAVE_ADDR && parallel_data[0] == 1'b0) begin
                                    sda_out <= 1'b0;
                                    sda_oe  <= 1'b1;
                                end else begin
                                    state <= IDLE;
                                end
                            end else begin
                                sda_oe  <= 1'b0;
                                state   <= REGADDR;
                                bit_cnt <= 4'd0;
                            end
                        end
                    end

                    REGADDR: begin
                        if (shift_en) begin
                            bit_cnt <= bit_cnt + 1'b1;
                            if (bit_cnt == 4'd7) state <= REGADDR_ACK;
                        end
                    end

                    REGADDR_ACK: begin
                        if (scl_fall) begin
                            if (sda_oe == 1'b0) begin
                                sda_out <= 1'b0;
                                sda_oe  <= 1'b1;
                            end else begin
                                sda_oe  <= 1'b0;
                                state   <= DATA;
                                bit_cnt <= 4'd0;
                            end
                        end
                    end

                    DATA: begin
                        if (shift_en) begin
                            bit_cnt <= bit_cnt + 1'b1;
                            if (bit_cnt == 4'd7) state <= DATA_ACK;
                        end
                    end

                    DATA_ACK: begin
                        if (scl_fall) begin
                            if (sda_oe == 1'b0) begin
                                sda_out  <= 1'b0;
                                sda_oe   <= 1'b1;
                                write_en <= 1'b1;
                            end else begin
                                sda_oe  <= 1'b0;
                                state   <= DATA;
                                bit_cnt <= 4'd0;
                            end
                        end
                    end

                    default: state <= IDLE;
                endcase
            end
        end
    end

    // Block 3: Shift register
    reg [7:0] shift_reg_internal;
    reg [1:0] reg_addr;
    wire [7:0] parallel_data = shift_reg_internal;

    always @(posedge clk or posedge en) begin
        if (en) begin
            shift_reg_internal <= 8'h00;
            reg_addr           <= 2'b00;
        end else begin
            if (shift_en)
                shift_reg_internal <= {shift_reg_internal[6:0], sda_d1};

            if (state == REGADDR_ACK && scl_fall && sda_oe == 1'b0)
                reg_addr <= shift_reg_internal[1:0];
        end
    end

    // Block 4: Registers
    // 0x00: threshold_reg   (default 0x05)
    // 0x01: timeout_reg     (default 0xA0)
    // 0x02: cap_ctrl_reg    (default 3'b000, 3-bit sahaja)
    reg [7:0] threshold_int, timeout_int;
    reg [2:0] cap_ctrl_int;
    assign threshold_reg = threshold_int;
    assign timeout_reg   = timeout_int;
    assign cap_ctrl_reg  = cap_ctrl_int;

    always @(posedge clk or posedge en) begin
        if (en) begin
            threshold_int <= 8'h05;
            timeout_int   <= 8'hA0;
            cap_ctrl_int  <= 3'b000;
        end else if (write_en) begin
            case (reg_addr)
                2'b00: threshold_int <= parallel_data;
                2'b01: timeout_int   <= parallel_data;
                2'b10: cap_ctrl_int  <= parallel_data[2:0];
                default: ; // reserved
            endcase
        end
    end
endmodule
