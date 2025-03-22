`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2025 03:12:38 PM
// Design Name: 
// Module Name: SPI_top
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


module SPI_top(
////input    
    input clk, //On-board pynq clk 125MHz (H16 pin)
    input rst,
    input [3:0] data_in,
    input load_data,
////output
    output spi_clk, //spi_clk output 10MHz
    output spi_data,
    output done_send
    );
    
    wire clk_100MHz;
    
    spiControl_FSM(.clk(clk_100MHz), .rst(rst), .data_in(data_in), .load_data(load_data), .spi_clk(spi_clk), .spi_data(spi_data), .done_send(done_send));
    
    clk_wiz_0(.clk_in1(clk), .reset(rst), .clk_out1(clk_100MHz));
    
endmodule
