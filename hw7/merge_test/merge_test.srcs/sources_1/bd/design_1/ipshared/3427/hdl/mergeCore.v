`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:37:49 AM
// Design Name: 
// Module Name: mergeCore
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


module mergeCore(
    input clk,
    input reset,
    input start,
    input [31:0] fifoWrData,
    input fifo1WrEn,
    input fifo2WrEn,
    input mergedFifoRdEn,
    output [31:0] mergedFifoRdData,
    output reg done
    );

parameter 
IDLE = 3'd0,
COMPARE = 3'd1,
WRITE = 3'd2,
FLUSH_FIFO = 3'd3,
DONE = 3'd4;

reg [2:0] state;
reg [2:0] next_state;
wire fifo1Empty;
wire fifo2Empty;
reg [31:0] mergedFifoData;
reg mergedFifoWrEn;
reg fifo1RdEn;
reg fifo2RdEn;
wire [31:0] fifo1Data;
wire [31:0] fifo2Data;

always @(posedge clk) begin //state
    if(reset) state <= IDLE;
    else state <= next_state;
end

always @(*) begin //next_state
    case(state)
        IDLE: next_state = (start) ? COMPARE : IDLE;
        COMPARE:begin
            if(!fifo1Empty && !fifo2Empty) next_state = WRITE;
            else next_state = FLUSH_FIFO;
        end
        WRITE: next_state = COMPARE;
        FLUSH_FIFO:begin
            if(fifo1Empty && fifo2Empty) next_state = DONE;
            else next_state = FLUSH_FIFO;
        end
        DONE: next_state = (start) ? DONE : IDLE;
        default: next_state = IDLE;
    endcase
end

always @(posedge clk) begin //fifo1RdEn fifo2RdEn 
    if(reset)begin
        fifo1RdEn <= 1'b0;
        fifo2RdEn <= 1'b0;
    end else begin
        case(state)
            COMPARE:begin
                if(!fifo1Empty && !fifo2Empty)begin
                    if(fifo1Data > fifo2Data) fifo1RdEn <= 1'b1;
                    else fifo2RdEn <= 1'b1;
                end else if(fifo1Empty) fifo2RdEn <= 1'b1;
                else if(fifo2Empty) fifo1RdEn <= 1'b1;
            end
            WRITE:begin
                fifo1RdEn <= 1'b0;
                fifo2RdEn <= 1'b0;
            end
            FLUSH_FIFO:begin
                if(fifo1Empty && fifo2Empty)begin
                    fifo1RdEn <= 1'b0;
                    fifo2RdEn <= 1'b0;
                end else begin
                    if(fifo1Empty) fifo2RdEn <= 1'b1;
                    else if(fifo2Empty) fifo1RdEn <= 1'b1;
                end
            end
        endcase
    end
end

always @(posedge clk) begin //mergeFifoWrEn
    if(reset) mergedFifoWrEn <= 1'b0;
    else begin
        case(state)
            COMPARE: mergedFifoWrEn <= 1'b1;
            WRITE: mergedFifoWrEn <= 1'b0;
            FLUSH_FIFO:begin
                if(!fifo1Empty || !fifo2Empty) mergedFifoWrEn <= 1'b1;
                else mergedFifoWrEn <= 1'b0;
            end
        endcase
    end
end

always @(posedge clk) begin //mergedFifoData
    if(reset) mergedFifoData <= 32'b0;
    else begin
        case(state)
            COMPARE:begin
                if(!fifo1Empty && !fifo2Empty)begin
                    if(fifo1Data > fifo2Data) mergedFifoData <= fifo1Data;
                    else mergedFifoData <= fifo2Data;
                end else begin
                    if(fifo1Empty) mergedFifoData <= fifo2Data;
                    else mergedFifoData <= fifo1Data;
                end
            end
            FLUSH_FIFO:begin
                if(fifo1Empty) mergedFifoData <= fifo2Data;
                else mergedFifoData <= fifo1Data;
            end
        endcase
    end
end

always @(posedge clk) begin
    if(reset) done <= 1'b0; 
    else begin
        if(state == DONE)begin
            if(start) done <= 1'b1;
            else done <= 1'b0;
        end
    end
end
    
arrayFifo arrayFifo1 (
  .clk(clk),      // input wire clk
  .srst(reset),    // input wire srst
  .din(fifoWrData),      // input wire [31 : 0] din
  .wr_en(fifo1WrEn),  // input wire wr_en
  .rd_en(fifo1RdEn),  // input wire rd_en
  .dout(fifo1Data),    // output wire [31 : 0] dout
  .full(),    // output wire full
  .empty(fifo1Empty)  // output wire empty
);

arrayFifo arrayFifo2 (
  .clk(clk),      // input wire clk
  .srst(reset),    // input wire srst
  .din(fifoWrData),      // input wire [31 : 0] din
  .wr_en(fifo2WrEn),  // input wire wr_en
  .rd_en(fifo2RdEn),  // input wire rd_en
  .dout(fifo2Data),    // output wire [31 : 0] dout
  .full(),    // output wire full
  .empty(fifo2Empty)  // output wire empty
);

mergedFifo mergedFifo (
  .clk(clk),      // input wire clk
  .srst(reset),    // input wire srst
  .din(mergedFifoData),      // input wire [31 : 0] din
  .wr_en(mergedFifoWrEn),  // input wire wr_en
  .rd_en(mergedFifoRdEn),  // input wire rd_en
  .dout(mergedFifoRdData),    // output wire [31 : 0] dout
  .full(),    // output wire full
  .empty()  // output wire empty
);

endmodule
