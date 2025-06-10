-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat May 31 13:40:34 2025
-- Host        : ukp66482 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/kartg/Desktop/Github/Deep-Learning-IC/YOLO_on_pynq-z2/DPU_sys/DPU_sys.srcs/sources_1/bd/DPU_sys/ip/DPU_sys_clk_wiz_0_0/DPU_sys_clk_wiz_0_0_stub.vhdl
-- Design      : DPU_sys_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DPU_sys_clk_wiz_0_0 is
  Port ( 
    clk_out150Mhz : out STD_LOGIC;
    clk_out300Mhz : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end DPU_sys_clk_wiz_0_0;

architecture stub of DPU_sys_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out150Mhz,clk_out300Mhz,resetn,locked,clk_in1";
begin
end;
