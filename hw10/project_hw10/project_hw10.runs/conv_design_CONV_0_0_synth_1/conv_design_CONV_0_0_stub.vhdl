-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun May 25 04:15:06 2025
-- Host        : ukp66482 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ conv_design_CONV_0_0_stub.vhdl
-- Design      : conv_design_CONV_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ready : in STD_LOGIC;
    data_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    crd : out STD_LOGIC;
    addr_r_byte : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addr_w_byte : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BYTE_WRITE : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,ready,data_r[31:0],busy,done,crd,addr_r_byte[11:0],addr_w_byte[11:0],data_w[31:0],BYTE_WRITE[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CONV,Vivado 2018.3";
begin
end;
