// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 25 04:15:07 2025
// Host        : ukp66482 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/kartg/Desktop/Github/Deep-Learning-IC/hw10/project_hw10/project_hw10.srcs/sources_1/bd/conv_design/ip/conv_design_CONV_0_0/conv_design_CONV_0_0_stub.v
// Design      : conv_design_CONV_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CONV,Vivado 2018.3" *)
module conv_design_CONV_0_0(clk, reset, ready, data_r, busy, done, crd, 
  addr_r_byte, addr_w_byte, data_w, BYTE_WRITE)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,ready,data_r[31:0],busy,done,crd,addr_r_byte[11:0],addr_w_byte[11:0],data_w[31:0],BYTE_WRITE[3:0]" */;
  input clk;
  input reset;
  input ready;
  input [31:0]data_r;
  output busy;
  output done;
  output crd;
  output [11:0]addr_r_byte;
  output [11:0]addr_w_byte;
  output [31:0]data_w;
  output [3:0]BYTE_WRITE;
endmodule
