`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 09:27:37 AM
// Design Name: 
// Module Name: runningled
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

// clk 100Mhz
`define 1S_DELAY 50000000

module runningled(
    input clk,
    input rst,
    output reg [3:0] led
    );
    
    reg [25:0] cnt;
    reg div_clk;
    
    always @(posedge clk or negedge rst)begin
        if(rst) div_clk = 0;
        else if(cnt == `1S_DELAY) div_clk = ~div_clk;
    end
    
    always @(posedge clk or negedge rst)begin
        if(rst) cnt <= 0;
        else if(cnt == `1S_DELAY) cnt <= 0;
        else cnt <= cnt + 1;
    end
    
    always @(posedge div_clk or negedge rst)begin
        if(rst) led <= 4'b0001;
        else led <= {led[0], led[3:1]};
    end
    
endmodule
