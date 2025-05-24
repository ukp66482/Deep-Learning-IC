// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 25 02:30:32 2025
// Host        : ukp66482 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/kartg/Desktop/Github/Deep-Learning-IC/hw10/project_hw10/project_hw10.srcs/sources_1/bd/conv_design/ip/conv_design_CONV_0_0/conv_design_CONV_0_0_sim_netlist.v
// Design      : conv_design_CONV_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "conv_design_CONV_0_0,CONV,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "CONV,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module conv_design_CONV_0_0
   (clk,
    reset,
    ready,
    data_r,
    busy,
    done,
    crd,
    addr_r,
    addr_w,
    data_w,
    BYTE_WRITE);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN conv_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input ready;
  input [31:0]data_r;
  output busy;
  output done;
  output crd;
  output [9:0]addr_r;
  output [9:0]addr_w;
  output [31:0]data_w;
  output [3:0]BYTE_WRITE;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:2]\^BYTE_WRITE ;
  wire [9:0]addr_r;
  wire [9:0]addr_w;
  wire busy;
  wire clk;
  wire [9:0]\^data_w ;
  wire done;
  wire ready;
  wire reset;

  assign BYTE_WRITE[3] = \^BYTE_WRITE [2];
  assign BYTE_WRITE[2] = \^BYTE_WRITE [2];
  assign BYTE_WRITE[1] = \^BYTE_WRITE [2];
  assign BYTE_WRITE[0] = \^BYTE_WRITE [2];
  assign crd = \<const1> ;
  assign data_w[31] = \<const0> ;
  assign data_w[30] = \<const0> ;
  assign data_w[29] = \<const0> ;
  assign data_w[28] = \<const0> ;
  assign data_w[27] = \<const0> ;
  assign data_w[26] = \<const0> ;
  assign data_w[25] = \<const0> ;
  assign data_w[24] = \<const0> ;
  assign data_w[23] = \<const0> ;
  assign data_w[22] = \<const0> ;
  assign data_w[21] = \<const0> ;
  assign data_w[20] = \<const0> ;
  assign data_w[19] = \<const0> ;
  assign data_w[18] = \<const0> ;
  assign data_w[17] = \<const0> ;
  assign data_w[16] = \<const0> ;
  assign data_w[15] = \<const0> ;
  assign data_w[14] = \<const0> ;
  assign data_w[13] = \<const0> ;
  assign data_w[12] = \<const0> ;
  assign data_w[11] = \<const0> ;
  assign data_w[10] = \<const0> ;
  assign data_w[9:0] = \^data_w [9:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  conv_design_CONV_0_0_CONV inst
       (.BYTE_WRITE(\^BYTE_WRITE ),
        .addr_r(addr_r),
        .addr_w(addr_w),
        .busy(busy),
        .clk(clk),
        .data_w(\^data_w ),
        .done(done),
        .ready(ready),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "CONV" *) 
module conv_design_CONV_0_0_CONV
   (done,
    addr_r,
    data_w,
    addr_w,
    busy,
    BYTE_WRITE,
    clk,
    reset,
    ready);
  output done;
  output [9:0]addr_r;
  output [9:0]data_w;
  output [9:0]addr_w;
  output busy;
  output [0:0]BYTE_WRITE;
  input clk;
  input reset;
  input ready;

  wire [2:2]A;
  wire [4:2]B;
  wire [0:0]BYTE_WRITE;
  wire \BYTE_WRITE[3]_i_1_n_0 ;
  wire [9:0]addr_r;
  wire addr_r0;
  wire \addr_r[0]_i_1_n_0 ;
  wire \addr_r[4]_i_10_n_0 ;
  wire \addr_r[4]_i_11_n_0 ;
  wire \addr_r[4]_i_12_n_0 ;
  wire \addr_r[4]_i_13_n_0 ;
  wire \addr_r[4]_i_14_n_0 ;
  wire \addr_r[4]_i_15_n_0 ;
  wire \addr_r[4]_i_5_n_0 ;
  wire \addr_r[4]_i_6_n_0 ;
  wire \addr_r[4]_i_7_n_0 ;
  wire \addr_r[4]_i_8_n_0 ;
  wire \addr_r[4]_i_9_n_0 ;
  wire \addr_r[8]_i_11_n_0 ;
  wire \addr_r[8]_i_13_n_0 ;
  wire \addr_r[8]_i_15_n_0 ;
  wire \addr_r[8]_i_6_n_0 ;
  wire \addr_r[8]_i_7_n_0 ;
  wire \addr_r[8]_i_9_n_0 ;
  wire \addr_r[9]_i_3_n_0 ;
  wire \addr_r[9]_i_6_n_0 ;
  wire \addr_r[9]_i_7_n_0 ;
  wire \addr_r[9]_i_8_n_0 ;
  wire \addr_r[9]_i_9_n_0 ;
  wire \addr_r_reg[4]_i_1_n_0 ;
  wire \addr_r_reg[4]_i_1_n_1 ;
  wire \addr_r_reg[4]_i_1_n_2 ;
  wire \addr_r_reg[4]_i_1_n_3 ;
  wire \addr_r_reg[4]_i_1_n_4 ;
  wire \addr_r_reg[4]_i_1_n_5 ;
  wire \addr_r_reg[4]_i_1_n_6 ;
  wire \addr_r_reg[4]_i_1_n_7 ;
  wire \addr_r_reg[8]_i_1_n_0 ;
  wire \addr_r_reg[8]_i_1_n_1 ;
  wire \addr_r_reg[8]_i_1_n_2 ;
  wire \addr_r_reg[8]_i_1_n_3 ;
  wire \addr_r_reg[8]_i_1_n_4 ;
  wire \addr_r_reg[8]_i_1_n_5 ;
  wire \addr_r_reg[8]_i_1_n_6 ;
  wire \addr_r_reg[8]_i_1_n_7 ;
  wire \addr_r_reg[9]_i_2_n_7 ;
  wire [9:0]addr_w;
  wire \addr_w[6]_i_2_n_0 ;
  wire \addr_w[9]_i_1_n_0 ;
  wire \addr_w[9]_i_2_n_0 ;
  wire \addr_w[9]_i_4_n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire [9:0]data_w;
  wire \data_w[9]_i_1_n_0 ;
  wire done;
  wire done_i_1_n_0;
  wire [9:0]p_0_in;
  wire [6:6]p_0_out;
  wire [9:2]p_1_in;
  wire ready;
  wire reset;
  wire [3:0]sel0;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire [4:0]x;
  wire \x[0]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[4]_i_2_n_0 ;
  wire \x[4]_i_4_n_0 ;
  wire \x[4]_i_5_n_0 ;
  wire [4:1]x_inc_1__6;
  wire y0;
  wire \y[0]_i_1_n_0 ;
  wire \y[1]_i_1_n_0 ;
  wire [4:2]y_inc_1;
  wire [4:0]y_reg__0;
  wire [3:0]\NLW_addr_r_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_r_reg[9]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \BYTE_WRITE[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\BYTE_WRITE[3]_i_1_n_0 ));
  FDRE \BYTE_WRITE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\BYTE_WRITE[3]_i_1_n_0 ),
        .Q(BYTE_WRITE),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA559AAAA55555555)) 
    \addr_r[0]_i_1 
       (.I0(x[0]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\addr_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h61000000)) 
    \addr_r[4]_i_10 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\addr_r[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \addr_r[4]_i_11 
       (.I0(\addr_r[4]_i_15_n_0 ),
        .I1(x[4]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(x[2]),
        .I5(x[3]),
        .O(\addr_r[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCB28888888)) 
    \addr_r[4]_i_12 
       (.I0(\addr_r[4]_i_10_n_0 ),
        .I1(x[3]),
        .I2(x[2]),
        .I3(x[0]),
        .I4(x[1]),
        .I5(\addr_r[4]_i_15_n_0 ),
        .O(\addr_r[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC202BFA8C202)) 
    \addr_r[4]_i_13 
       (.I0(\addr_r[4]_i_15_n_0 ),
        .I1(x[0]),
        .I2(x[1]),
        .I3(\addr_r[4]_i_10_n_0 ),
        .I4(x[2]),
        .I5(\addr_r[4]_i_9_n_0 ),
        .O(\addr_r[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000333B3B33)) 
    \addr_r[4]_i_14 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(x_inc_1__6[1]),
        .O(\addr_r[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0028FFFF)) 
    \addr_r[4]_i_15 
       (.I0(state[0]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(state[1]),
        .O(\addr_r[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h3C3C3336)) 
    \addr_r[4]_i_2 
       (.I0(sel0[2]),
        .I1(y_reg__0[2]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[0]),
        .I4(\addr_r[9]_i_8_n_0 ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hF01E)) 
    \addr_r[4]_i_3 
       (.I0(sel0[2]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(\addr_r[9]_i_8_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h00880080FF77FF7F)) 
    \addr_r[4]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(y_reg__0[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h55555555556A6A6A)) 
    \addr_r[4]_i_5 
       (.I0(p_1_in[4]),
        .I1(\addr_r[4]_i_9_n_0 ),
        .I2(x[4]),
        .I3(x_inc_1__6[4]),
        .I4(\addr_r[4]_i_10_n_0 ),
        .I5(\addr_r[4]_i_11_n_0 ),
        .O(\addr_r[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h556A)) 
    \addr_r[4]_i_6 
       (.I0(p_1_in[3]),
        .I1(\addr_r[4]_i_9_n_0 ),
        .I2(x[3]),
        .I3(\addr_r[4]_i_12_n_0 ),
        .O(\addr_r[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA956)) 
    \addr_r[4]_i_7 
       (.I0(y_reg__0[0]),
        .I1(sel0[2]),
        .I2(\addr_r[9]_i_8_n_0 ),
        .I3(\addr_r[4]_i_13_n_0 ),
        .O(\addr_r[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAFAEA)) 
    \addr_r[4]_i_8 
       (.I0(\addr_r[4]_i_14_n_0 ),
        .I1(\addr_r[4]_i_9_n_0 ),
        .I2(x[1]),
        .I3(\addr_r[4]_i_10_n_0 ),
        .I4(x[0]),
        .O(\addr_r[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hC2FF0000)) 
    \addr_r[4]_i_9 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\addr_r[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_r[8]_i_10 
       (.I0(sel0[2]),
        .I1(y_reg__0[1]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h805050000FF5F5F1)) 
    \addr_r[8]_i_11 
       (.I0(y_reg__0[3]),
        .I1(y_reg__0[2]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[0]),
        .I4(sel0[2]),
        .I5(y_reg__0[4]),
        .O(\addr_r[8]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \addr_r[8]_i_12 
       (.I0(y_reg__0[2]),
        .I1(y_reg__0[1]),
        .I2(y_reg__0[0]),
        .O(A));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0103D3D6)) 
    \addr_r[8]_i_13 
       (.I0(y_reg__0[3]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[2]),
        .I4(y_reg__0[4]),
        .O(\addr_r[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6A956A9556A956AA)) 
    \addr_r[8]_i_14 
       (.I0(y_reg__0[4]),
        .I1(sel0[2]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[1]),
        .I4(y_reg__0[2]),
        .I5(y_reg__0[3]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1116)) 
    \addr_r[8]_i_15 
       (.I0(y_reg__0[3]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[2]),
        .O(\addr_r[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h7B48487B)) 
    \addr_r[8]_i_2 
       (.I0(\addr_r[8]_i_6_n_0 ),
        .I1(\addr_r[9]_i_8_n_0 ),
        .I2(\addr_r[8]_i_7_n_0 ),
        .I3(B[3]),
        .I4(\addr_r[8]_i_9_n_0 ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hF90909F9)) 
    \addr_r[8]_i_3 
       (.I0(B[2]),
        .I1(\addr_r[8]_i_11_n_0 ),
        .I2(\addr_r[9]_i_8_n_0 ),
        .I3(A),
        .I4(\addr_r[8]_i_13_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hC33CAAAA3CC3AAAA)) 
    \addr_r[8]_i_4 
       (.I0(p_0_out),
        .I1(\addr_r[8]_i_15_n_0 ),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[0]),
        .I4(\addr_r[9]_i_8_n_0 ),
        .I5(\addr_r[9]_i_7_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h36C936C936C9C63C)) 
    \addr_r[8]_i_5 
       (.I0(sel0[2]),
        .I1(y_reg__0[3]),
        .I2(\addr_r[9]_i_8_n_0 ),
        .I3(y_reg__0[0]),
        .I4(y_reg__0[2]),
        .I5(y_reg__0[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \addr_r[8]_i_6 
       (.I0(y_reg__0[2]),
        .I1(y_reg__0[1]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[3]),
        .O(\addr_r[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFF7511F)) 
    \addr_r[8]_i_7 
       (.I0(y_reg__0[4]),
        .I1(y_reg__0[3]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[1]),
        .I4(y_reg__0[2]),
        .O(\addr_r[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_r[8]_i_8 
       (.I0(sel0[2]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[2]),
        .I4(y_reg__0[3]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'h8FF7F5F1F7F5F1F1)) 
    \addr_r[8]_i_9 
       (.I0(y_reg__0[4]),
        .I1(y_reg__0[3]),
        .I2(y_reg__0[2]),
        .I3(y_reg__0[0]),
        .I4(y_reg__0[1]),
        .I5(sel0[2]),
        .O(\addr_r[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000007F)) 
    \addr_r[9]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(state[2]),
        .I5(\addr_r[9]_i_3_n_0 ),
        .O(addr_r0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \addr_r[9]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\addr_r[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F99F099)) 
    \addr_r[9]_i_4 
       (.I0(B[4]),
        .I1(\addr_r[9]_i_6_n_0 ),
        .I2(\addr_r[9]_i_7_n_0 ),
        .I3(\addr_r[9]_i_8_n_0 ),
        .I4(\addr_r[9]_i_9_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_r[9]_i_5 
       (.I0(sel0[2]),
        .I1(y_reg__0[2]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[0]),
        .I4(y_reg__0[3]),
        .I5(y_reg__0[4]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'hBFFDFFFDFFFDFDFD)) 
    \addr_r[9]_i_6 
       (.I0(y_reg__0[4]),
        .I1(y_reg__0[3]),
        .I2(y_reg__0[2]),
        .I3(y_reg__0[1]),
        .I4(y_reg__0[0]),
        .I5(sel0[2]),
        .O(\addr_r[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \addr_r[9]_i_7 
       (.I0(y_reg__0[3]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[2]),
        .I4(y_reg__0[4]),
        .O(\addr_r[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \addr_r[9]_i_8 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .O(\addr_r[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFDDDF)) 
    \addr_r[9]_i_9 
       (.I0(y_reg__0[4]),
        .I1(y_reg__0[3]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[1]),
        .I4(y_reg__0[2]),
        .O(\addr_r[9]_i_9_n_0 ));
  FDRE \addr_r_reg[0] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r[0]_i_1_n_0 ),
        .Q(addr_r[0]),
        .R(1'b0));
  FDRE \addr_r_reg[1] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[4]_i_1_n_7 ),
        .Q(addr_r[1]),
        .R(1'b0));
  FDRE \addr_r_reg[2] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[4]_i_1_n_6 ),
        .Q(addr_r[2]),
        .R(1'b0));
  FDRE \addr_r_reg[3] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[4]_i_1_n_5 ),
        .Q(addr_r[3]),
        .R(1'b0));
  FDRE \addr_r_reg[4] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[4]_i_1_n_4 ),
        .Q(addr_r[4]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_r_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\addr_r_reg[4]_i_1_n_0 ,\addr_r_reg[4]_i_1_n_1 ,\addr_r_reg[4]_i_1_n_2 ,\addr_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_1_in[4:2],1'b0}),
        .O({\addr_r_reg[4]_i_1_n_4 ,\addr_r_reg[4]_i_1_n_5 ,\addr_r_reg[4]_i_1_n_6 ,\addr_r_reg[4]_i_1_n_7 }),
        .S({\addr_r[4]_i_5_n_0 ,\addr_r[4]_i_6_n_0 ,\addr_r[4]_i_7_n_0 ,\addr_r[4]_i_8_n_0 }));
  FDRE \addr_r_reg[5] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[8]_i_1_n_7 ),
        .Q(addr_r[5]),
        .R(1'b0));
  FDRE \addr_r_reg[6] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[8]_i_1_n_6 ),
        .Q(addr_r[6]),
        .R(1'b0));
  FDRE \addr_r_reg[7] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[8]_i_1_n_5 ),
        .Q(addr_r[7]),
        .R(1'b0));
  FDRE \addr_r_reg[8] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[8]_i_1_n_4 ),
        .Q(addr_r[8]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_r_reg[8]_i_1 
       (.CI(\addr_r_reg[4]_i_1_n_0 ),
        .CO({\addr_r_reg[8]_i_1_n_0 ,\addr_r_reg[8]_i_1_n_1 ,\addr_r_reg[8]_i_1_n_2 ,\addr_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_r_reg[8]_i_1_n_4 ,\addr_r_reg[8]_i_1_n_5 ,\addr_r_reg[8]_i_1_n_6 ,\addr_r_reg[8]_i_1_n_7 }),
        .S(p_1_in[8:5]));
  FDRE \addr_r_reg[9] 
       (.C(clk),
        .CE(addr_r0),
        .D(\addr_r_reg[9]_i_2_n_7 ),
        .Q(addr_r[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_r_reg[9]_i_2 
       (.CI(\addr_r_reg[8]_i_1_n_0 ),
        .CO(\NLW_addr_r_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_r_reg[9]_i_2_O_UNCONNECTED [3:1],\addr_r_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,p_1_in[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_w[0]_i_1 
       (.I0(addr_w[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_w[1]_i_1 
       (.I0(addr_w[0]),
        .I1(addr_w[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_w[2]_i_1 
       (.I0(addr_w[0]),
        .I1(addr_w[1]),
        .I2(addr_w[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_w[3]_i_1 
       (.I0(addr_w[2]),
        .I1(addr_w[1]),
        .I2(addr_w[0]),
        .I3(addr_w[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_w[4]_i_1 
       (.I0(addr_w[3]),
        .I1(addr_w[0]),
        .I2(addr_w[1]),
        .I3(addr_w[2]),
        .I4(addr_w[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_w[5]_i_1 
       (.I0(addr_w[4]),
        .I1(addr_w[2]),
        .I2(addr_w[1]),
        .I3(addr_w[0]),
        .I4(addr_w[3]),
        .I5(addr_w[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \addr_w[6]_i_1 
       (.I0(addr_w[3]),
        .I1(\addr_w[6]_i_2_n_0 ),
        .I2(addr_w[2]),
        .I3(addr_w[4]),
        .I4(addr_w[5]),
        .I5(addr_w[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \addr_w[6]_i_2 
       (.I0(addr_w[1]),
        .I1(addr_w[0]),
        .O(\addr_w[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_w[7]_i_1 
       (.I0(\addr_w[9]_i_4_n_0 ),
        .I1(addr_w[6]),
        .I2(addr_w[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_w[8]_i_1 
       (.I0(addr_w[7]),
        .I1(addr_w[6]),
        .I2(\addr_w[9]_i_4_n_0 ),
        .I3(addr_w[8]),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \addr_w[9]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\addr_w[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \addr_w[9]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\addr_w[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_w[9]_i_3 
       (.I0(addr_w[8]),
        .I1(\addr_w[9]_i_4_n_0 ),
        .I2(addr_w[6]),
        .I3(addr_w[7]),
        .I4(addr_w[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_w[9]_i_4 
       (.I0(addr_w[5]),
        .I1(addr_w[4]),
        .I2(addr_w[2]),
        .I3(addr_w[1]),
        .I4(addr_w[0]),
        .I5(addr_w[3]),
        .O(\addr_w[9]_i_4_n_0 ));
  FDSE \addr_w_reg[0] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(addr_w[0]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[1] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(addr_w[1]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[2] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(addr_w[2]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[3] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(addr_w[3]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[4] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(addr_w[4]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[5] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(addr_w[5]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[6] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(addr_w[6]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[7] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(addr_w[7]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[8] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(addr_w[8]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDSE \addr_w_reg[9] 
       (.C(clk),
        .CE(\addr_w[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(addr_w[9]),
        .S(\addr_w[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hDDFF0010)) 
    busy_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(ready),
        .I3(state[2]),
        .I4(busy),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(busy_i_1_n_0),
        .Q(busy));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(state[1]),
        .I1(sel0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \cnt[1]_i_1 
       (.I0(sel0[0]),
        .I1(state[1]),
        .I2(sel0[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \cnt[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(state[1]),
        .I3(sel0[2]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h43)) 
    \cnt[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \cnt[3]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(state[1]),
        .I4(sel0[3]),
        .O(\cnt[3]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[3]_i_2_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEF)) 
    \data_w[9]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[0]),
        .Q(data_w[0]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[1]),
        .Q(data_w[1]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[2]),
        .Q(data_w[2]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[3]),
        .Q(data_w[3]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[4]),
        .Q(data_w[4]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[5]),
        .Q(data_w[5]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[6]),
        .Q(data_w[6]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[7]),
        .Q(data_w[7]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[8]),
        .Q(data_w[8]),
        .R(\data_w[9]_i_1_n_0 ));
  FDRE \data_w_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_w[9]),
        .Q(data_w[9]),
        .R(\data_w[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    done_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(done_i_1_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00F0F040)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(ready),
        .I2(\state[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \state[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \state[1]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(addr_w[3]),
        .I4(addr_w[2]),
        .I5(\state[2]_i_3_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004F0F000000000)) 
    \state[2]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(state[2]),
        .I3(\state[2]_i_4_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \state[2]_i_3 
       (.I0(addr_w[1]),
        .I1(addr_w[0]),
        .I2(addr_w[9]),
        .I3(addr_w[8]),
        .I4(\state[2]_i_5_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \state[2]_i_5 
       (.I0(addr_w[6]),
        .I1(addr_w[7]),
        .I2(addr_w[4]),
        .I3(addr_w[5]),
        .O(\state[2]_i_5_n_0 ));
  FDCE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
  FDCE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD03)) 
    \x[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(x[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_i_1 
       (.I0(x[0]),
        .I1(x[1]),
        .O(x_inc_1__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x[2]_i_1 
       (.I0(x[1]),
        .I1(x[0]),
        .I2(x[2]),
        .O(x_inc_1__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x[3]_i_1 
       (.I0(x[2]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(x[3]),
        .O(x_inc_1__6[3]));
  LUT6 #(
    .INIT(64'h000000005D555555)) 
    \x[4]_i_1 
       (.I0(state[2]),
        .I1(x[1]),
        .I2(\x[4]_i_4_n_0 ),
        .I3(x[4]),
        .I4(x[3]),
        .I5(\x[4]_i_5_n_0 ),
        .O(\x[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \x[4]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\x[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x[4]_i_3 
       (.I0(x[3]),
        .I1(x[1]),
        .I2(x[0]),
        .I3(x[2]),
        .I4(x[4]),
        .O(x_inc_1__6[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \x[4]_i_4 
       (.I0(x[0]),
        .I1(x[2]),
        .O(\x[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \x[4]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\x[4]_i_5_n_0 ));
  FDRE \x_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\x[0]_i_1_n_0 ),
        .Q(x[0]),
        .R(1'b0));
  FDRE \x_reg[1] 
       (.C(clk),
        .CE(\x[4]_i_2_n_0 ),
        .D(x_inc_1__6[1]),
        .Q(x[1]),
        .R(\x[4]_i_1_n_0 ));
  FDRE \x_reg[2] 
       (.C(clk),
        .CE(\x[4]_i_2_n_0 ),
        .D(x_inc_1__6[2]),
        .Q(x[2]),
        .R(\x[4]_i_1_n_0 ));
  FDRE \x_reg[3] 
       (.C(clk),
        .CE(\x[4]_i_2_n_0 ),
        .D(x_inc_1__6[3]),
        .Q(x[3]),
        .R(\x[4]_i_1_n_0 ));
  FDRE \x_reg[4] 
       (.C(clk),
        .CE(\x[4]_i_2_n_0 ),
        .D(x_inc_1__6[4]),
        .Q(x[4]),
        .R(\x[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[0]_i_1 
       (.I0(y_reg__0[0]),
        .O(\y[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[1]_i_1 
       (.I0(y_reg__0[0]),
        .I1(y_reg__0[1]),
        .O(\y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y[2]_i_1 
       (.I0(y_reg__0[0]),
        .I1(y_reg__0[1]),
        .I2(y_reg__0[2]),
        .O(y_inc_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y[3]_i_1 
       (.I0(y_reg__0[2]),
        .I1(y_reg__0[1]),
        .I2(y_reg__0[0]),
        .I3(y_reg__0[3]),
        .O(y_inc_1[3]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \y[4]_i_1 
       (.I0(x[0]),
        .I1(x[2]),
        .I2(x[4]),
        .I3(x[3]),
        .I4(x[1]),
        .I5(\data_w[9]_i_1_n_0 ),
        .O(y0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y[4]_i_2 
       (.I0(y_reg__0[3]),
        .I1(y_reg__0[0]),
        .I2(y_reg__0[1]),
        .I3(y_reg__0[2]),
        .I4(y_reg__0[4]),
        .O(y_inc_1[4]));
  FDSE \y_reg[0] 
       (.C(clk),
        .CE(y0),
        .D(\y[0]_i_1_n_0 ),
        .Q(y_reg__0[0]),
        .S(\addr_w[9]_i_1_n_0 ));
  FDRE \y_reg[1] 
       (.C(clk),
        .CE(y0),
        .D(\y[1]_i_1_n_0 ),
        .Q(y_reg__0[1]),
        .R(\addr_w[9]_i_1_n_0 ));
  FDRE \y_reg[2] 
       (.C(clk),
        .CE(y0),
        .D(y_inc_1[2]),
        .Q(y_reg__0[2]),
        .R(\addr_w[9]_i_1_n_0 ));
  FDRE \y_reg[3] 
       (.C(clk),
        .CE(y0),
        .D(y_inc_1[3]),
        .Q(y_reg__0[3]),
        .R(\addr_w[9]_i_1_n_0 ));
  FDRE \y_reg[4] 
       (.C(clk),
        .CE(y0),
        .D(y_inc_1[4]),
        .Q(y_reg__0[4]),
        .R(\addr_w[9]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
