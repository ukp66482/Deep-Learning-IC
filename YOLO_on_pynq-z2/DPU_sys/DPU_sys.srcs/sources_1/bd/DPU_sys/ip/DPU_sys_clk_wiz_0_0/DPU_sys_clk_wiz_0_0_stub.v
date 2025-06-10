// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat May 31 13:40:34 2025
// Host        : ukp66482 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/kartg/Desktop/Github/Deep-Learning-IC/YOLO_on_pynq-z2/DPU_sys/DPU_sys.srcs/sources_1/bd/DPU_sys/ip/DPU_sys_clk_wiz_0_0/DPU_sys_clk_wiz_0_0_stub.v
// Design      : DPU_sys_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DPU_sys_clk_wiz_0_0(clk_out150Mhz, clk_out300Mhz, resetn, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out150Mhz,clk_out300Mhz,resetn,locked,clk_in1" */;
  output clk_out150Mhz;
  output clk_out300Mhz;
  input resetn;
  output locked;
  input clk_in1;
endmodule
