`timescale 1ns/10ps
/*
 * IC Contest Computational System (CS)
*/
module CS(Y, X, reset, clk);

input clk, reset; 
input [7:0] X;
output [9:0] Y;
integer i;

reg [7:0] x_array [0:8];
reg [11:0] sum_x;
reg [7:0] x_appr;
wire [7:0] x_avg;

assign x_avg = sum_x / 9;

always @(posedge clk or posedge reset) begin //x_array
    if(reset)begin
        for(i = 0; i <= 8; i = i + 1)begin
            x_array[i] <= 0;
        end
    end else begin
        x_array[0] <= X;
        for(i = 1; i <= 8; i = i + 1)begin
            x_array[i] <= x_array[i-1];
        end
    end
end

always @(posedge clk or posedge reset) begin //sum_x
    if(reset) sum_x <= 0;
    else begin
        sum_x <= sum_x + X - x_array[8];
    end
end

always @(*) begin //x_appr
    x_appr = 0;
    for(i = 0; i <= 8; i = i + 1)begin
        if((x_array[i] <= x_avg) && (x_appr < x_array[i])) x_appr = x_array[i];
    end
end

assign Y = (sum_x + (x_appr << 3) + x_appr) >> 3; //Y

endmodule