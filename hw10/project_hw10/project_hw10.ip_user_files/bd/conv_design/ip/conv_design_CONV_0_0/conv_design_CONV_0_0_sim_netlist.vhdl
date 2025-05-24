-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun May 25 02:30:32 2025
-- Host        : ukp66482 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/kartg/Desktop/Github/Deep-Learning-IC/hw10/project_hw10/project_hw10.srcs/sources_1/bd/conv_design/ip/conv_design_CONV_0_0/conv_design_CONV_0_0_sim_netlist.vhdl
-- Design      : conv_design_CONV_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_design_CONV_0_0_CONV is
  port (
    done : out STD_LOGIC;
    addr_r : out STD_LOGIC_VECTOR ( 9 downto 0 );
    data_w : out STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_w : out STD_LOGIC_VECTOR ( 9 downto 0 );
    busy : out STD_LOGIC;
    BYTE_WRITE : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_design_CONV_0_0_CONV : entity is "CONV";
end conv_design_CONV_0_0_CONV;

architecture STRUCTURE of conv_design_CONV_0_0_CONV is
  signal A : STD_LOGIC_VECTOR ( 2 to 2 );
  signal B : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \BYTE_WRITE[3]_i_1_n_0\ : STD_LOGIC;
  signal addr_r0 : STD_LOGIC;
  signal \addr_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_10_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_11_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_12_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_13_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_14_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_15_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_5_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_6_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_7_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_8_n_0\ : STD_LOGIC;
  signal \addr_r[4]_i_9_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_11_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_13_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_15_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \addr_r[8]_i_9_n_0\ : STD_LOGIC;
  signal \addr_r[9]_i_3_n_0\ : STD_LOGIC;
  signal \addr_r[9]_i_6_n_0\ : STD_LOGIC;
  signal \addr_r[9]_i_7_n_0\ : STD_LOGIC;
  signal \addr_r[9]_i_8_n_0\ : STD_LOGIC;
  signal \addr_r[9]_i_9_n_0\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \addr_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \addr_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \addr_r_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal \^addr_w\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \addr_w[6]_i_2_n_0\ : STD_LOGIC;
  signal \addr_w[9]_i_1_n_0\ : STD_LOGIC;
  signal \addr_w[9]_i_2_n_0\ : STD_LOGIC;
  signal \addr_w[9]_i_4_n_0\ : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_w[9]_i_1_n_0\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_2_n_0\ : STD_LOGIC;
  signal \x[4]_i_4_n_0\ : STD_LOGIC;
  signal \x[4]_i_5_n_0\ : STD_LOGIC;
  signal \x_inc_1__6\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal y0 : STD_LOGIC;
  signal \y[0]_i_1_n_0\ : STD_LOGIC;
  signal \y[1]_i_1_n_0\ : STD_LOGIC;
  signal y_inc_1 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \y_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_addr_r_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_r_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BYTE_WRITE[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_r[4]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_r[4]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_r[4]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_r[8]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_r[8]_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_r[8]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_r[8]_i_15\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_r[8]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_r[8]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr_r[8]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_r[9]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_r[9]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_r[9]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_r[9]_i_9\ : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \addr_r_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \addr_r_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \addr_r_reg[9]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \addr_w[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_w[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_w[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_w[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_w[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_w[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_w[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_w[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \x[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \x[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \x[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \x[4]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y[4]_i_2\ : label is "soft_lutpair7";
begin
  addr_w(9 downto 0) <= \^addr_w\(9 downto 0);
  busy <= \^busy\;
\BYTE_WRITE[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \BYTE_WRITE[3]_i_1_n_0\
    );
\BYTE_WRITE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \BYTE_WRITE[3]_i_1_n_0\,
      Q => BYTE_WRITE(0),
      R => '0'
    );
\addr_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A559AAAA55555555"
    )
        port map (
      I0 => x(0),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => state(0),
      I5 => state(1),
      O => \addr_r[0]_i_1_n_0\
    );
\addr_r[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"61000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => state(1),
      I4 => state(0),
      O => \addr_r[4]_i_10_n_0\
    );
\addr_r[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888882"
    )
        port map (
      I0 => \addr_r[4]_i_15_n_0\,
      I1 => x(4),
      I2 => x(1),
      I3 => x(0),
      I4 => x(2),
      I5 => x(3),
      O => \addr_r[4]_i_11_n_0\
    );
\addr_r[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECCCCCCB28888888"
    )
        port map (
      I0 => \addr_r[4]_i_10_n_0\,
      I1 => x(3),
      I2 => x(2),
      I3 => x(0),
      I4 => x(1),
      I5 => \addr_r[4]_i_15_n_0\,
      O => \addr_r[4]_i_12_n_0\
    );
\addr_r[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC202BFA8C202"
    )
        port map (
      I0 => \addr_r[4]_i_15_n_0\,
      I1 => x(0),
      I2 => x(1),
      I3 => \addr_r[4]_i_10_n_0\,
      I4 => x(2),
      I5 => \addr_r[4]_i_9_n_0\,
      O => \addr_r[4]_i_13_n_0\
    );
\addr_r[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000333B3B33"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => \x_inc_1__6\(1),
      O => \addr_r[4]_i_14_n_0\
    );
\addr_r[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0028FFFF"
    )
        port map (
      I0 => state(0),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => state(1),
      O => \addr_r[4]_i_15_n_0\
    );
\addr_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C3C3336"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(2),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(0),
      I4 => \addr_r[9]_i_8_n_0\,
      O => p_1_in(4)
    );
\addr_r[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F01E"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \addr_r[9]_i_8_n_0\,
      O => p_1_in(3)
    );
\addr_r[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00880080FF77FF7F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => \y_reg__0\(0),
      O => p_1_in(2)
    );
\addr_r[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555556A6A6A"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \addr_r[4]_i_9_n_0\,
      I2 => x(4),
      I3 => \x_inc_1__6\(4),
      I4 => \addr_r[4]_i_10_n_0\,
      I5 => \addr_r[4]_i_11_n_0\,
      O => \addr_r[4]_i_5_n_0\
    );
\addr_r[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"556A"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \addr_r[4]_i_9_n_0\,
      I2 => x(3),
      I3 => \addr_r[4]_i_12_n_0\,
      O => \addr_r[4]_i_6_n_0\
    );
\addr_r[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \y_reg__0\(0),
      I1 => sel0(2),
      I2 => \addr_r[9]_i_8_n_0\,
      I3 => \addr_r[4]_i_13_n_0\,
      O => \addr_r[4]_i_7_n_0\
    );
\addr_r[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAFAEA"
    )
        port map (
      I0 => \addr_r[4]_i_14_n_0\,
      I1 => \addr_r[4]_i_9_n_0\,
      I2 => x(1),
      I3 => \addr_r[4]_i_10_n_0\,
      I4 => x(0),
      O => \addr_r[4]_i_8_n_0\
    );
\addr_r[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2FF0000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => state(0),
      I4 => state(1),
      O => \addr_r[4]_i_9_n_0\
    );
\addr_r[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(1),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(2),
      O => B(2)
    );
\addr_r[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"805050000FF5F5F1"
    )
        port map (
      I0 => \y_reg__0\(3),
      I1 => \y_reg__0\(2),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(0),
      I4 => sel0(2),
      I5 => \y_reg__0\(4),
      O => \addr_r[8]_i_11_n_0\
    );
\addr_r[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \y_reg__0\(2),
      I1 => \y_reg__0\(1),
      I2 => \y_reg__0\(0),
      O => A(2)
    );
\addr_r[8]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0103D3D6"
    )
        port map (
      I0 => \y_reg__0\(3),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(2),
      I4 => \y_reg__0\(4),
      O => \addr_r[8]_i_13_n_0\
    );
\addr_r[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A956A9556A956AA"
    )
        port map (
      I0 => \y_reg__0\(4),
      I1 => sel0(2),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(1),
      I4 => \y_reg__0\(2),
      I5 => \y_reg__0\(3),
      O => p_0_out(6)
    );
\addr_r[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1116"
    )
        port map (
      I0 => \y_reg__0\(3),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(2),
      O => \addr_r[8]_i_15_n_0\
    );
\addr_r[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7B48487B"
    )
        port map (
      I0 => \addr_r[8]_i_6_n_0\,
      I1 => \addr_r[9]_i_8_n_0\,
      I2 => \addr_r[8]_i_7_n_0\,
      I3 => B(3),
      I4 => \addr_r[8]_i_9_n_0\,
      O => p_1_in(8)
    );
\addr_r[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F90909F9"
    )
        port map (
      I0 => B(2),
      I1 => \addr_r[8]_i_11_n_0\,
      I2 => \addr_r[9]_i_8_n_0\,
      I3 => A(2),
      I4 => \addr_r[8]_i_13_n_0\,
      O => p_1_in(7)
    );
\addr_r[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CAAAA3CC3AAAA"
    )
        port map (
      I0 => p_0_out(6),
      I1 => \addr_r[8]_i_15_n_0\,
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(0),
      I4 => \addr_r[9]_i_8_n_0\,
      I5 => \addr_r[9]_i_7_n_0\,
      O => p_1_in(6)
    );
\addr_r[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36C936C936C9C63C"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(3),
      I2 => \addr_r[9]_i_8_n_0\,
      I3 => \y_reg__0\(0),
      I4 => \y_reg__0\(2),
      I5 => \y_reg__0\(1),
      O => p_1_in(5)
    );
\addr_r[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \y_reg__0\(2),
      I1 => \y_reg__0\(1),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(3),
      O => \addr_r[8]_i_6_n_0\
    );
\addr_r[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7511F"
    )
        port map (
      I0 => \y_reg__0\(4),
      I1 => \y_reg__0\(3),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(1),
      I4 => \y_reg__0\(2),
      O => \addr_r[8]_i_7_n_0\
    );
\addr_r[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(2),
      I4 => \y_reg__0\(3),
      O => B(3)
    );
\addr_r[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FF7F5F1F7F5F1F1"
    )
        port map (
      I0 => \y_reg__0\(4),
      I1 => \y_reg__0\(3),
      I2 => \y_reg__0\(2),
      I3 => \y_reg__0\(0),
      I4 => \y_reg__0\(1),
      I5 => sel0(2),
      O => \addr_r[8]_i_9_n_0\
    );
\addr_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000007F"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => state(2),
      I5 => \addr_r[9]_i_3_n_0\,
      O => addr_r0
    );
\addr_r[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \addr_r[9]_i_3_n_0\
    );
\addr_r[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F99F099"
    )
        port map (
      I0 => B(4),
      I1 => \addr_r[9]_i_6_n_0\,
      I2 => \addr_r[9]_i_7_n_0\,
      I3 => \addr_r[9]_i_8_n_0\,
      I4 => \addr_r[9]_i_9_n_0\,
      O => p_1_in(9)
    );
\addr_r[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sel0(2),
      I1 => \y_reg__0\(2),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(0),
      I4 => \y_reg__0\(3),
      I5 => \y_reg__0\(4),
      O => B(4)
    );
\addr_r[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFDFFFDFFFDFDFD"
    )
        port map (
      I0 => \y_reg__0\(4),
      I1 => \y_reg__0\(3),
      I2 => \y_reg__0\(2),
      I3 => \y_reg__0\(1),
      I4 => \y_reg__0\(0),
      I5 => sel0(2),
      O => \addr_r[9]_i_6_n_0\
    );
\addr_r[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \y_reg__0\(3),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(2),
      I4 => \y_reg__0\(4),
      O => \addr_r[9]_i_7_n_0\
    );
\addr_r[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      O => \addr_r[9]_i_8_n_0\
    );
\addr_r[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDDF"
    )
        port map (
      I0 => \y_reg__0\(4),
      I1 => \y_reg__0\(3),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(1),
      I4 => \y_reg__0\(2),
      O => \addr_r[9]_i_9_n_0\
    );
\addr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r[0]_i_1_n_0\,
      Q => addr_r(0),
      R => '0'
    );
\addr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[4]_i_1_n_7\,
      Q => addr_r(1),
      R => '0'
    );
\addr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[4]_i_1_n_6\,
      Q => addr_r(2),
      R => '0'
    );
\addr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[4]_i_1_n_5\,
      Q => addr_r(3),
      R => '0'
    );
\addr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[4]_i_1_n_4\,
      Q => addr_r(4),
      R => '0'
    );
\addr_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_r_reg[4]_i_1_n_0\,
      CO(2) => \addr_r_reg[4]_i_1_n_1\,
      CO(1) => \addr_r_reg[4]_i_1_n_2\,
      CO(0) => \addr_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => p_1_in(4 downto 2),
      DI(0) => '0',
      O(3) => \addr_r_reg[4]_i_1_n_4\,
      O(2) => \addr_r_reg[4]_i_1_n_5\,
      O(1) => \addr_r_reg[4]_i_1_n_6\,
      O(0) => \addr_r_reg[4]_i_1_n_7\,
      S(3) => \addr_r[4]_i_5_n_0\,
      S(2) => \addr_r[4]_i_6_n_0\,
      S(1) => \addr_r[4]_i_7_n_0\,
      S(0) => \addr_r[4]_i_8_n_0\
    );
\addr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[8]_i_1_n_7\,
      Q => addr_r(5),
      R => '0'
    );
\addr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[8]_i_1_n_6\,
      Q => addr_r(6),
      R => '0'
    );
\addr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[8]_i_1_n_5\,
      Q => addr_r(7),
      R => '0'
    );
\addr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[8]_i_1_n_4\,
      Q => addr_r(8),
      R => '0'
    );
\addr_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_r_reg[4]_i_1_n_0\,
      CO(3) => \addr_r_reg[8]_i_1_n_0\,
      CO(2) => \addr_r_reg[8]_i_1_n_1\,
      CO(1) => \addr_r_reg[8]_i_1_n_2\,
      CO(0) => \addr_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_r_reg[8]_i_1_n_4\,
      O(2) => \addr_r_reg[8]_i_1_n_5\,
      O(1) => \addr_r_reg[8]_i_1_n_6\,
      O(0) => \addr_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => p_1_in(8 downto 5)
    );
\addr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => addr_r0,
      D => \addr_r_reg[9]_i_2_n_7\,
      Q => addr_r(9),
      R => '0'
    );
\addr_r_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_r_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_addr_r_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_addr_r_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \addr_r_reg[9]_i_2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => p_1_in(9)
    );
\addr_w[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_w\(0),
      O => p_0_in(0)
    );
\addr_w[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr_w\(0),
      I1 => \^addr_w\(1),
      O => p_0_in(1)
    );
\addr_w[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addr_w\(0),
      I1 => \^addr_w\(1),
      I2 => \^addr_w\(2),
      O => p_0_in(2)
    );
\addr_w[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr_w\(2),
      I1 => \^addr_w\(1),
      I2 => \^addr_w\(0),
      I3 => \^addr_w\(3),
      O => p_0_in(3)
    );
\addr_w[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^addr_w\(3),
      I1 => \^addr_w\(0),
      I2 => \^addr_w\(1),
      I3 => \^addr_w\(2),
      I4 => \^addr_w\(4),
      O => p_0_in(4)
    );
\addr_w[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^addr_w\(4),
      I1 => \^addr_w\(2),
      I2 => \^addr_w\(1),
      I3 => \^addr_w\(0),
      I4 => \^addr_w\(3),
      I5 => \^addr_w\(5),
      O => p_0_in(5)
    );
\addr_w[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => \^addr_w\(3),
      I1 => \addr_w[6]_i_2_n_0\,
      I2 => \^addr_w\(2),
      I3 => \^addr_w\(4),
      I4 => \^addr_w\(5),
      I5 => \^addr_w\(6),
      O => p_0_in(6)
    );
\addr_w[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^addr_w\(1),
      I1 => \^addr_w\(0),
      O => \addr_w[6]_i_2_n_0\
    );
\addr_w[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \addr_w[9]_i_4_n_0\,
      I1 => \^addr_w\(6),
      I2 => \^addr_w\(7),
      O => p_0_in(7)
    );
\addr_w[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr_w\(7),
      I1 => \^addr_w\(6),
      I2 => \addr_w[9]_i_4_n_0\,
      I3 => \^addr_w\(8),
      O => p_0_in(8)
    );
\addr_w[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \addr_w[9]_i_1_n_0\
    );
\addr_w[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \addr_w[9]_i_2_n_0\
    );
\addr_w[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^addr_w\(8),
      I1 => \addr_w[9]_i_4_n_0\,
      I2 => \^addr_w\(6),
      I3 => \^addr_w\(7),
      I4 => \^addr_w\(9),
      O => p_0_in(9)
    );
\addr_w[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addr_w\(5),
      I1 => \^addr_w\(4),
      I2 => \^addr_w\(2),
      I3 => \^addr_w\(1),
      I4 => \^addr_w\(0),
      I5 => \^addr_w\(3),
      O => \addr_w[9]_i_4_n_0\
    );
\addr_w_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^addr_w\(0),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^addr_w\(1),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^addr_w\(2),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^addr_w\(3),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => \^addr_w\(4),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => \^addr_w\(5),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => \^addr_w\(6),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => \^addr_w\(7),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => \^addr_w\(8),
      S => \addr_w[9]_i_1_n_0\
    );
\addr_w_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \addr_w[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => \^addr_w\(9),
      S => \addr_w[9]_i_1_n_0\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFF0010"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => ready,
      I3 => state(2),
      I4 => \^busy\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => busy_i_1_n_0,
      Q => \^busy\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => sel0(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => sel0(0),
      I1 => state(1),
      I2 => sel0(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => state(1),
      I3 => sel0(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => state(1),
      I4 => sel0(3),
      O => \cnt[3]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_1_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_1_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_1_n_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_1_n_0\,
      D => \cnt[3]_i_2_n_0\,
      Q => sel0(3),
      R => '0'
    );
\data_w[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \data_w[9]_i_1_n_0\
    );
\data_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(0),
      Q => data_w(0),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(1),
      Q => data_w(1),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(2),
      Q => data_w(2),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(3),
      Q => data_w(3),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(4),
      Q => data_w(4),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(5),
      Q => data_w(5),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(6),
      Q => data_w(6),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(7),
      Q => data_w(7),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(8),
      Q => data_w(8),
      R => \data_w[9]_i_1_n_0\
    );
\data_w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^addr_w\(9),
      Q => data_w(9),
      R => \data_w[9]_i_1_n_0\
    );
done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => done_i_1_n_0,
      Q => done
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F0F040"
    )
        port map (
      I0 => state(0),
      I1 => ready,
      I2 => \state[1]_i_2_n_0\,
      I3 => state(1),
      I4 => state(2),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \state[1]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => state(0),
      I5 => state(1),
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => \^addr_w\(3),
      I4 => \^addr_w\(2),
      I5 => \state[2]_i_3_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004F0F000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => state(2),
      I3 => \state[2]_i_4_n_0\,
      I4 => state(1),
      I5 => state(0),
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^addr_w\(1),
      I1 => \^addr_w\(0),
      I2 => \^addr_w\(9),
      I3 => \^addr_w\(8),
      I4 => \state[2]_i_5_n_0\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^addr_w\(6),
      I1 => \^addr_w\(7),
      I2 => \^addr_w\(4),
      I3 => \^addr_w\(5),
      O => \state[2]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \state[0]_i_1_n_0\,
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \state[1]_i_1_n_0\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \state[2]_i_1_n_0\,
      Q => state(2)
    );
\x[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD03"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => x(0),
      O => \x[0]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(0),
      I1 => x(1),
      O => \x_inc_1__6\(1)
    );
\x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x(1),
      I1 => x(0),
      I2 => x(2),
      O => \x_inc_1__6\(2)
    );
\x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x(2),
      I1 => x(0),
      I2 => x(1),
      I3 => x(3),
      O => \x_inc_1__6\(3)
    );
\x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005D555555"
    )
        port map (
      I0 => state(2),
      I1 => x(1),
      I2 => \x[4]_i_4_n_0\,
      I3 => x(4),
      I4 => x(3),
      I5 => \x[4]_i_5_n_0\,
      O => \x[4]_i_1_n_0\
    );
\x[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \x[4]_i_2_n_0\
    );
\x[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => x(3),
      I1 => x(1),
      I2 => x(0),
      I3 => x(2),
      I4 => x(4),
      O => \x_inc_1__6\(4)
    );
\x[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(0),
      I1 => x(2),
      O => \x[4]_i_4_n_0\
    );
\x[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \x[4]_i_5_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \x[0]_i_1_n_0\,
      Q => x(0),
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x[4]_i_2_n_0\,
      D => \x_inc_1__6\(1),
      Q => x(1),
      R => \x[4]_i_1_n_0\
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x[4]_i_2_n_0\,
      D => \x_inc_1__6\(2),
      Q => x(2),
      R => \x[4]_i_1_n_0\
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x[4]_i_2_n_0\,
      D => \x_inc_1__6\(3),
      Q => x(3),
      R => \x[4]_i_1_n_0\
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x[4]_i_2_n_0\,
      D => \x_inc_1__6\(4),
      Q => x(4),
      R => \x[4]_i_1_n_0\
    );
\y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y_reg__0\(0),
      O => \y[0]_i_1_n_0\
    );
\y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_reg__0\(0),
      I1 => \y_reg__0\(1),
      O => \y[1]_i_1_n_0\
    );
\y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \y_reg__0\(0),
      I1 => \y_reg__0\(1),
      I2 => \y_reg__0\(2),
      O => y_inc_1(2)
    );
\y[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \y_reg__0\(2),
      I1 => \y_reg__0\(1),
      I2 => \y_reg__0\(0),
      I3 => \y_reg__0\(3),
      O => y_inc_1(3)
    );
\y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => x(0),
      I1 => x(2),
      I2 => x(4),
      I3 => x(3),
      I4 => x(1),
      I5 => \data_w[9]_i_1_n_0\,
      O => y0
    );
\y[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \y_reg__0\(3),
      I1 => \y_reg__0\(0),
      I2 => \y_reg__0\(1),
      I3 => \y_reg__0\(2),
      I4 => \y_reg__0\(4),
      O => y_inc_1(4)
    );
\y_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => y0,
      D => \y[0]_i_1_n_0\,
      Q => \y_reg__0\(0),
      S => \addr_w[9]_i_1_n_0\
    );
\y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => y0,
      D => \y[1]_i_1_n_0\,
      Q => \y_reg__0\(1),
      R => \addr_w[9]_i_1_n_0\
    );
\y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => y0,
      D => y_inc_1(2),
      Q => \y_reg__0\(2),
      R => \addr_w[9]_i_1_n_0\
    );
\y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => y0,
      D => y_inc_1(3),
      Q => \y_reg__0\(3),
      R => \addr_w[9]_i_1_n_0\
    );
\y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => y0,
      D => y_inc_1(4),
      Q => \y_reg__0\(4),
      R => \addr_w[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_design_CONV_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ready : in STD_LOGIC;
    data_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    crd : out STD_LOGIC;
    addr_r : out STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_w : out STD_LOGIC_VECTOR ( 9 downto 0 );
    data_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BYTE_WRITE : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of conv_design_CONV_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of conv_design_CONV_0_0 : entity is "conv_design_CONV_0_0,CONV,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of conv_design_CONV_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of conv_design_CONV_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of conv_design_CONV_0_0 : entity is "CONV,Vivado 2018.3";
end conv_design_CONV_0_0;

architecture STRUCTURE of conv_design_CONV_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^byte_write\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^data_w\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN conv_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  BYTE_WRITE(3) <= \^byte_write\(2);
  BYTE_WRITE(2) <= \^byte_write\(2);
  BYTE_WRITE(1) <= \^byte_write\(2);
  BYTE_WRITE(0) <= \^byte_write\(2);
  crd <= \<const1>\;
  data_w(31) <= \<const0>\;
  data_w(30) <= \<const0>\;
  data_w(29) <= \<const0>\;
  data_w(28) <= \<const0>\;
  data_w(27) <= \<const0>\;
  data_w(26) <= \<const0>\;
  data_w(25) <= \<const0>\;
  data_w(24) <= \<const0>\;
  data_w(23) <= \<const0>\;
  data_w(22) <= \<const0>\;
  data_w(21) <= \<const0>\;
  data_w(20) <= \<const0>\;
  data_w(19) <= \<const0>\;
  data_w(18) <= \<const0>\;
  data_w(17) <= \<const0>\;
  data_w(16) <= \<const0>\;
  data_w(15) <= \<const0>\;
  data_w(14) <= \<const0>\;
  data_w(13) <= \<const0>\;
  data_w(12) <= \<const0>\;
  data_w(11) <= \<const0>\;
  data_w(10) <= \<const0>\;
  data_w(9 downto 0) <= \^data_w\(9 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.conv_design_CONV_0_0_CONV
     port map (
      BYTE_WRITE(0) => \^byte_write\(2),
      addr_r(9 downto 0) => addr_r(9 downto 0),
      addr_w(9 downto 0) => addr_w(9 downto 0),
      busy => busy,
      clk => clk,
      data_w(9 downto 0) => \^data_w\(9 downto 0),
      done => done,
      ready => ready,
      reset => reset
    );
end STRUCTURE;
