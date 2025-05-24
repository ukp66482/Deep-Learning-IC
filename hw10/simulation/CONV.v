`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 02:57:19 PM
// Design Name: 
// Module Name: CONV
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define KERNEL_0 32'sh0000A89E
`define KERNEL_1 32'sh000092D5
`define KERNEL_2 32'sh00006D43
`define KERNEL_3 32'sh00001004
`define KERNEL_4 32'shFFFF8F71
`define KERNEL_5 32'shFFFF6E54
`define KERNEL_6 32'shFFFFA6D7
`define KERNEL_7 32'shFFFFC834
`define KERNEL_8 32'shFFFFAC19

module CONV (
    input clk,
    input reset,
    input ready,
    input signed [31:0] data_r,
    output reg busy,
    output reg done,
    output crd,
    output reg [9:0] addr_r,
    output reg [9:0] addr_w,
    output reg [31:0] data_w,
    output reg [3:0] BYTE_WRITE
);

parameter 
IDLE = 3'd0,
INPUT_CONV = 3'd1,
DELAY = 3'd2,
MUL = 3'd3,
ACC = 3'd4,
OUTPUT = 3'd5,
DONE = 4'd6;

reg [2:0] state;
reg [2:0] next_state;

reg signed [31:0] acc;
reg signed [63:0] mul_result;

reg [3:0] cnt;

reg [4:0] x;
reg [4:0] y;

wire [4:0] x_dec_1;
wire [4:0] y_dec_1;
wire [4:0] x_inc_1;
wire [4:0] y_inc_1;

assign x_inc_1 = x + 5'd1;
assign y_inc_1 = y + 5'd1;
assign x_dec_1 = x - 5'd1;
assign y_dec_1 = y - 5'd1;

always @(posedge clk or posedge reset) begin //state
    if(reset) state <= IDLE;
    else state <= next_state;
end

always @(*) begin //next_state
    case(state)
        IDLE:begin
            if(ready) next_state = INPUT_CONV;
            else next_state = IDLE;
        end
        INPUT_CONV: next_state = DELAY;
        DELAY: next_state = MUL;
        MUL: next_state = ACC;
        ACC:begin
            if(cnt == 4'd8) next_state = OUTPUT;
            else next_state = MUL;
        end
        OUTPUT:begin
            if(addr_w == 10'd675) next_state = DONE;
            else next_state = INPUT_CONV;
        end
        DONE: next_state = DONE;
        default: next_state = IDLE;
    endcase
end

always @(posedge clk) begin //cnt
    case(state)
        IDLE: cnt <= 4'd0;
        ACC: cnt <= cnt + 4'd1;
        OUTPUT: cnt <= 4'd0;
    endcase
end

assign crd = 1'd1; //crd

always @(posedge clk) begin
    case(state)
        IDLE: begin
            x <= 5'd1;
            y <= 5'd1;
        end
        OUTPUT:begin
            if(x == 26)begin
                x <= 5'd1;
                y <= y + 5'd1;
            end else x <= x + 5'd1;
        end
    endcase
end

always @(posedge clk) begin //addr_r
    case(state)
        IDLE: addr_r <= y_dec_1 * 10'd28 + x_dec_1;
        INPUT_CONV: addr_r <= y_dec_1 * 10'd28 + x_dec_1;
        DELAY: addr_r <= y_dec_1 * 10'd28 + x;
        ACC:begin
            case(cnt)
                4'd0: addr_r <= y_dec_1 * 10'd28 + x_inc_1;
                4'd1: addr_r <= y * 10'd28 + x_dec_1;
                4'd2: addr_r <= y * 10'd28 + x;
                4'd3: addr_r <= y * 10'd28 + x_inc_1;
                4'd4: addr_r <= y_inc_1 * 10'd28 + x_dec_1;
                4'd5: addr_r <= y_inc_1 * 10'd28 + x;
                4'd6: addr_r <= y_inc_1 * 10'd28 + x_inc_1;
            endcase
        end
    endcase
end

always @(posedge clk) begin //addr_w
    case(state)
        IDLE: addr_w <= 10'd1023;
        INPUT_CONV: addr_w <= addr_w + 10'd1;
    endcase
end

always @(posedge clk) begin //mul_result
    case(cnt)
        4'd0: mul_result <= data_r * `KERNEL_0;
        4'd1: mul_result <= data_r * `KERNEL_1;
        4'd2: mul_result <= data_r * `KERNEL_2;
        4'd3: mul_result <= data_r * `KERNEL_3;
        4'd4: mul_result <= data_r * `KERNEL_4;
        4'd5: mul_result <= data_r * `KERNEL_5;
        4'd6: mul_result <= data_r * `KERNEL_6;
        4'd7: mul_result <= data_r * `KERNEL_7;
        4'd8: mul_result <= data_r * `KERNEL_8;
    endcase
end

always @(posedge clk) begin //acc
    case(state)
        IDLE:acc <= 32'sd0;
        INPUT_CONV: acc <= 32'sd0;
        ACC: acc <= acc + mul_result[47:16];
    endcase
end

always @(posedge clk) begin //data_w
    case(state)
        OUTPUT: data_w <= acc;
        default: data_w <= 32'd0;
    endcase
end

always @(posedge clk or posedge reset) begin //busy
    if(reset) busy <= 0;
    else begin
        case(state)
            IDLE: if(ready) busy <= 1;
            DONE: busy <= 0;
        endcase
    end
end

always @(posedge clk or posedge reset) begin //done
    if(reset) done <= 0;
    else begin
        case(state)
            DONE: done <= 1;
            default: done <= 0;
        endcase
    end
end

always @(posedge clk) begin
    case(state)
        OUTPUT: BYTE_WRITE <= 4'b1111;
        default: BYTE_WRITE <= 4'b0000;
    endcase
end

endmodule
