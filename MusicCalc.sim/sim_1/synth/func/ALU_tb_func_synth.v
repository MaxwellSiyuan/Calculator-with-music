// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Jun 25 19:04:48 2017
// Host        : Dear-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/VivadoProject/MusicCalc/MusicCalc.sim/sim_1/synth/func/ALU_tb_func_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADD = "3'b000" *) (* AND = "3'b010" *) (* COMP = "3'b100" *) 
(* MIN = "3'b001" *) (* OR = "3'b011" *) 
(* NotValidForBitStream *)
module ALU
   (CS,
    data_a,
    data_b,
    carry_in,
    temp,
    S,
    zero,
    carry_out);
  input [2:0]CS;
  input [7:0]data_a;
  input [7:0]data_b;
  input carry_in;
  output [8:0]temp;
  output [7:0]S;
  output zero;
  output carry_out;

  wire [2:0]CS;
  wire [2:0]CS_IBUF;
  wire [7:0]S;
  wire [7:0]S_OBUF;
  wire \S_reg[0]_i_1_n_0 ;
  wire \S_reg[0]_i_2_n_0 ;
  wire \S_reg[1]_i_1_n_0 ;
  wire \S_reg[1]_i_2_n_0 ;
  wire \S_reg[2]_i_1_n_0 ;
  wire \S_reg[2]_i_2_n_0 ;
  wire \S_reg[3]_i_1_n_0 ;
  wire \S_reg[3]_i_2_n_0 ;
  wire \S_reg[4]_i_1_n_0 ;
  wire \S_reg[4]_i_2_n_0 ;
  wire \S_reg[5]_i_1_n_0 ;
  wire \S_reg[5]_i_2_n_0 ;
  wire \S_reg[6]_i_1_n_0 ;
  wire \S_reg[6]_i_2_n_0 ;
  wire \S_reg[7]_i_1_n_0 ;
  wire \S_reg[7]_i_2_n_0 ;
  wire \S_reg[7]_i_3_n_0 ;
  wire carry_in;
  wire carry_in_IBUF;
  wire carry_out;
  wire carry_out_OBUF;
  wire carry_out_reg_i_1_n_0;
  wire [7:0]data_a;
  wire [7:0]data_a_IBUF;
  wire [7:0]data_b;
  wire [7:0]data_b_IBUF;
  wire [0:0]p_0_in;
  wire p_1_in;
  wire [8:0]temp;
  wire [8:0]temp_OBUF;
  wire \temp_reg[0]_i_1_n_0 ;
  wire \temp_reg[1]_i_1_n_0 ;
  wire \temp_reg[2]_i_1_n_0 ;
  wire \temp_reg[3]_i_10_n_0 ;
  wire \temp_reg[3]_i_11_n_0 ;
  wire \temp_reg[3]_i_13_n_0 ;
  wire \temp_reg[3]_i_14_n_0 ;
  wire \temp_reg[3]_i_15_n_0 ;
  wire \temp_reg[3]_i_16_n_0 ;
  wire \temp_reg[3]_i_17_n_0 ;
  wire \temp_reg[3]_i_18_n_0 ;
  wire \temp_reg[3]_i_19_n_0 ;
  wire \temp_reg[3]_i_1_n_0 ;
  wire \temp_reg[3]_i_20_n_0 ;
  wire \temp_reg[3]_i_2_n_0 ;
  wire \temp_reg[3]_i_2_n_1 ;
  wire \temp_reg[3]_i_2_n_2 ;
  wire \temp_reg[3]_i_2_n_3 ;
  wire \temp_reg[3]_i_2_n_4 ;
  wire \temp_reg[3]_i_2_n_5 ;
  wire \temp_reg[3]_i_2_n_6 ;
  wire \temp_reg[3]_i_2_n_7 ;
  wire \temp_reg[3]_i_3_n_0 ;
  wire \temp_reg[3]_i_3_n_1 ;
  wire \temp_reg[3]_i_3_n_2 ;
  wire \temp_reg[3]_i_3_n_3 ;
  wire \temp_reg[3]_i_3_n_4 ;
  wire \temp_reg[3]_i_3_n_5 ;
  wire \temp_reg[3]_i_3_n_6 ;
  wire \temp_reg[3]_i_3_n_7 ;
  wire \temp_reg[3]_i_4_n_0 ;
  wire \temp_reg[3]_i_4_n_1 ;
  wire \temp_reg[3]_i_4_n_2 ;
  wire \temp_reg[3]_i_4_n_3 ;
  wire \temp_reg[3]_i_4_n_4 ;
  wire \temp_reg[3]_i_4_n_5 ;
  wire \temp_reg[3]_i_4_n_6 ;
  wire \temp_reg[3]_i_4_n_7 ;
  wire \temp_reg[3]_i_5_n_0 ;
  wire \temp_reg[3]_i_6_n_0 ;
  wire \temp_reg[3]_i_7_n_0 ;
  wire \temp_reg[3]_i_8_n_0 ;
  wire \temp_reg[3]_i_9_n_0 ;
  wire \temp_reg[4]_i_1_n_0 ;
  wire \temp_reg[5]_i_1_n_0 ;
  wire \temp_reg[6]_i_1_n_0 ;
  wire \temp_reg[7]_i_10_n_0 ;
  wire \temp_reg[7]_i_11_n_0 ;
  wire \temp_reg[7]_i_12_n_0 ;
  wire \temp_reg[7]_i_13_n_0 ;
  wire \temp_reg[7]_i_14_n_0 ;
  wire \temp_reg[7]_i_15_n_0 ;
  wire \temp_reg[7]_i_16_n_0 ;
  wire \temp_reg[7]_i_17_n_0 ;
  wire \temp_reg[7]_i_18_n_0 ;
  wire \temp_reg[7]_i_19_n_0 ;
  wire \temp_reg[7]_i_1_n_0 ;
  wire \temp_reg[7]_i_20_n_0 ;
  wire \temp_reg[7]_i_2_n_0 ;
  wire \temp_reg[7]_i_2_n_1 ;
  wire \temp_reg[7]_i_2_n_2 ;
  wire \temp_reg[7]_i_2_n_3 ;
  wire \temp_reg[7]_i_2_n_4 ;
  wire \temp_reg[7]_i_2_n_5 ;
  wire \temp_reg[7]_i_2_n_6 ;
  wire \temp_reg[7]_i_2_n_7 ;
  wire \temp_reg[7]_i_3_n_0 ;
  wire \temp_reg[7]_i_3_n_1 ;
  wire \temp_reg[7]_i_3_n_2 ;
  wire \temp_reg[7]_i_3_n_3 ;
  wire \temp_reg[7]_i_3_n_4 ;
  wire \temp_reg[7]_i_3_n_5 ;
  wire \temp_reg[7]_i_3_n_6 ;
  wire \temp_reg[7]_i_3_n_7 ;
  wire \temp_reg[7]_i_4_n_0 ;
  wire \temp_reg[7]_i_4_n_1 ;
  wire \temp_reg[7]_i_4_n_2 ;
  wire \temp_reg[7]_i_4_n_3 ;
  wire \temp_reg[7]_i_4_n_4 ;
  wire \temp_reg[7]_i_4_n_5 ;
  wire \temp_reg[7]_i_4_n_6 ;
  wire \temp_reg[7]_i_4_n_7 ;
  wire \temp_reg[7]_i_5_n_0 ;
  wire \temp_reg[7]_i_6_n_0 ;
  wire \temp_reg[7]_i_7_n_0 ;
  wire \temp_reg[7]_i_8_n_0 ;
  wire \temp_reg[7]_i_9_n_0 ;
  wire \temp_reg[8]_i_1_n_0 ;
  wire \temp_reg[8]_i_2_n_0 ;
  wire \temp_reg[8]_i_3_n_7 ;
  wire \temp_reg[8]_i_4_n_3 ;
  wire \temp_reg[8]_i_6_n_0 ;
  wire zero;
  wire zero_OBUF;
  wire zero_OBUF_inst_i_2_n_0;
  wire [3:0]\NLW_temp_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_temp_reg[8]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_temp_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_temp_reg[8]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_temp_reg[8]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_temp_reg[8]_i_5_O_UNCONNECTED ;

  IBUF \CS_IBUF[0]_inst 
       (.I(CS[0]),
        .O(CS_IBUF[0]));
  IBUF \CS_IBUF[1]_inst 
       (.I(CS[1]),
        .O(CS_IBUF[1]));
  IBUF \CS_IBUF[2]_inst 
       (.I(CS[2]),
        .O(CS_IBUF[2]));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
  OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
  OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
  OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.CLR(1'b0),
        .D(\S_reg[0]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[0]_i_1 
       (.I0(\temp_reg[3]_i_2_n_7 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[0]_i_2_n_0 ),
        .O(\S_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[0]_i_2 
       (.I0(data_b_IBUF[0]),
        .I1(data_a_IBUF[0]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[3]_i_3_n_7 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[3]_i_4_n_7 ),
        .O(\S_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.CLR(1'b0),
        .D(\S_reg[1]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[1]_i_1 
       (.I0(\temp_reg[3]_i_2_n_6 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[1]_i_2_n_0 ),
        .O(\S_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[1]_i_2 
       (.I0(data_b_IBUF[1]),
        .I1(data_a_IBUF[1]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[3]_i_3_n_6 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[3]_i_4_n_6 ),
        .O(\S_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.CLR(1'b0),
        .D(\S_reg[2]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[2]_i_1 
       (.I0(\temp_reg[3]_i_2_n_5 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[2]_i_2_n_0 ),
        .O(\S_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[2]_i_2 
       (.I0(data_b_IBUF[2]),
        .I1(data_a_IBUF[2]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[3]_i_3_n_5 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[3]_i_4_n_5 ),
        .O(\S_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.CLR(1'b0),
        .D(\S_reg[3]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[3]_i_1 
       (.I0(\temp_reg[3]_i_2_n_4 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[3]_i_2_n_0 ),
        .O(\S_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[3]_i_2 
       (.I0(data_b_IBUF[3]),
        .I1(data_a_IBUF[3]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[3]_i_3_n_4 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[3]_i_4_n_4 ),
        .O(\S_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.CLR(1'b0),
        .D(\S_reg[4]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[4]_i_1 
       (.I0(\temp_reg[7]_i_2_n_7 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[4]_i_2_n_0 ),
        .O(\S_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[4]_i_2 
       (.I0(data_b_IBUF[4]),
        .I1(data_a_IBUF[4]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[7]_i_3_n_7 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[7]_i_4_n_7 ),
        .O(\S_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.CLR(1'b0),
        .D(\S_reg[5]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[5]_i_1 
       (.I0(\temp_reg[7]_i_2_n_6 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[5]_i_2_n_0 ),
        .O(\S_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[5]_i_2 
       (.I0(data_b_IBUF[5]),
        .I1(data_a_IBUF[5]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[7]_i_3_n_6 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[7]_i_4_n_6 ),
        .O(\S_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.CLR(1'b0),
        .D(\S_reg[6]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[6]_i_1 
       (.I0(\temp_reg[7]_i_2_n_5 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[6]_i_2_n_0 ),
        .O(\S_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[6]_i_2 
       (.I0(data_b_IBUF[6]),
        .I1(data_a_IBUF[6]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[7]_i_3_n_5 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[7]_i_4_n_5 ),
        .O(\S_reg[6]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.CLR(1'b0),
        .D(\S_reg[7]_i_1_n_0 ),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_reg[7]_i_1 
       (.I0(\temp_reg[7]_i_2_n_4 ),
        .I1(CS_IBUF[2]),
        .I2(\S_reg[7]_i_3_n_0 ),
        .O(\S_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \S_reg[7]_i_2 
       (.I0(CS_IBUF[2]),
        .I1(CS_IBUF[0]),
        .I2(CS_IBUF[1]),
        .O(\S_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \S_reg[7]_i_3 
       (.I0(data_b_IBUF[7]),
        .I1(data_a_IBUF[7]),
        .I2(CS_IBUF[1]),
        .I3(\temp_reg[7]_i_3_n_4 ),
        .I4(CS_IBUF[0]),
        .I5(\temp_reg[7]_i_4_n_4 ),
        .O(\S_reg[7]_i_3_n_0 ));
  IBUF carry_in_IBUF_inst
       (.I(carry_in),
        .O(carry_in_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    carry_out_reg
       (.CLR(1'b0),
        .D(carry_out_reg_i_1_n_0),
        .G(\S_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(carry_out_OBUF));
  LUT6 #(
    .INIT(64'h0000000000FFB8B8)) 
    carry_out_reg_i_1
       (.I0(\temp_reg[8]_i_4_n_3 ),
        .I1(CS_IBUF[0]),
        .I2(p_1_in),
        .I3(\temp_reg[8]_i_3_n_7 ),
        .I4(CS_IBUF[2]),
        .I5(CS_IBUF[1]),
        .O(carry_out_reg_i_1_n_0));
  IBUF \data_a_IBUF[0]_inst 
       (.I(data_a[0]),
        .O(data_a_IBUF[0]));
  IBUF \data_a_IBUF[1]_inst 
       (.I(data_a[1]),
        .O(data_a_IBUF[1]));
  IBUF \data_a_IBUF[2]_inst 
       (.I(data_a[2]),
        .O(data_a_IBUF[2]));
  IBUF \data_a_IBUF[3]_inst 
       (.I(data_a[3]),
        .O(data_a_IBUF[3]));
  IBUF \data_a_IBUF[4]_inst 
       (.I(data_a[4]),
        .O(data_a_IBUF[4]));
  IBUF \data_a_IBUF[5]_inst 
       (.I(data_a[5]),
        .O(data_a_IBUF[5]));
  IBUF \data_a_IBUF[6]_inst 
       (.I(data_a[6]),
        .O(data_a_IBUF[6]));
  IBUF \data_a_IBUF[7]_inst 
       (.I(data_a[7]),
        .O(data_a_IBUF[7]));
  IBUF \data_b_IBUF[0]_inst 
       (.I(data_b[0]),
        .O(data_b_IBUF[0]));
  IBUF \data_b_IBUF[1]_inst 
       (.I(data_b[1]),
        .O(data_b_IBUF[1]));
  IBUF \data_b_IBUF[2]_inst 
       (.I(data_b[2]),
        .O(data_b_IBUF[2]));
  IBUF \data_b_IBUF[3]_inst 
       (.I(data_b[3]),
        .O(data_b_IBUF[3]));
  IBUF \data_b_IBUF[4]_inst 
       (.I(data_b[4]),
        .O(data_b_IBUF[4]));
  IBUF \data_b_IBUF[5]_inst 
       (.I(data_b[5]),
        .O(data_b_IBUF[5]));
  IBUF \data_b_IBUF[6]_inst 
       (.I(data_b[6]),
        .O(data_b_IBUF[6]));
  IBUF \data_b_IBUF[7]_inst 
       (.I(data_b[7]),
        .O(data_b_IBUF[7]));
  OBUF \temp_OBUF[0]_inst 
       (.I(temp_OBUF[0]),
        .O(temp[0]));
  OBUF \temp_OBUF[1]_inst 
       (.I(temp_OBUF[1]),
        .O(temp[1]));
  OBUF \temp_OBUF[2]_inst 
       (.I(temp_OBUF[2]),
        .O(temp[2]));
  OBUF \temp_OBUF[3]_inst 
       (.I(temp_OBUF[3]),
        .O(temp[3]));
  OBUF \temp_OBUF[4]_inst 
       (.I(temp_OBUF[4]),
        .O(temp[4]));
  OBUF \temp_OBUF[5]_inst 
       (.I(temp_OBUF[5]),
        .O(temp[5]));
  OBUF \temp_OBUF[6]_inst 
       (.I(temp_OBUF[6]),
        .O(temp[6]));
  OBUF \temp_OBUF[7]_inst 
       (.I(temp_OBUF[7]),
        .O(temp[7]));
  OBUF \temp_OBUF[8]_inst 
       (.I(temp_OBUF[8]),
        .O(temp[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.CLR(1'b0),
        .D(\temp_reg[0]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[0]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg[3]_i_2_n_7 ),
        .I1(\temp_reg[3]_i_3_n_7 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[3]_i_4_n_7 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.CLR(1'b0),
        .D(\temp_reg[1]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[1]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[1]_i_1 
       (.I0(\temp_reg[3]_i_2_n_6 ),
        .I1(\temp_reg[3]_i_3_n_6 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[3]_i_4_n_6 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.CLR(1'b0),
        .D(\temp_reg[2]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[2]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[2]_i_1 
       (.I0(\temp_reg[3]_i_2_n_5 ),
        .I1(\temp_reg[3]_i_3_n_5 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[3]_i_4_n_5 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.CLR(1'b0),
        .D(\temp_reg[3]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[3]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[3]_i_1 
       (.I0(\temp_reg[3]_i_2_n_4 ),
        .I1(\temp_reg[3]_i_3_n_4 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[3]_i_4_n_4 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \temp_reg[3]_i_10 
       (.I0(data_a_IBUF[0]),
        .I1(carry_in_IBUF),
        .I2(data_b_IBUF[0]),
        .I3(data_a_IBUF[1]),
        .I4(data_b_IBUF[1]),
        .O(\temp_reg[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_reg[3]_i_11 
       (.I0(data_a_IBUF[0]),
        .I1(data_b_IBUF[0]),
        .I2(carry_in_IBUF),
        .O(\temp_reg[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_reg[3]_i_12 
       (.I0(data_b_IBUF[0]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[3]_i_13 
       (.I0(data_b_IBUF[3]),
        .I1(data_a_IBUF[3]),
        .O(\temp_reg[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[3]_i_14 
       (.I0(data_b_IBUF[2]),
        .I1(data_a_IBUF[2]),
        .O(\temp_reg[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[3]_i_15 
       (.I0(data_b_IBUF[1]),
        .I1(data_a_IBUF[1]),
        .O(\temp_reg[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[3]_i_16 
       (.I0(data_a_IBUF[0]),
        .I1(carry_in_IBUF),
        .O(\temp_reg[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[3]_i_17 
       (.I0(data_a_IBUF[3]),
        .I1(data_b_IBUF[3]),
        .O(\temp_reg[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[3]_i_18 
       (.I0(data_a_IBUF[2]),
        .I1(data_b_IBUF[2]),
        .O(\temp_reg[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[3]_i_19 
       (.I0(data_a_IBUF[1]),
        .I1(data_b_IBUF[1]),
        .O(\temp_reg[3]_i_19_n_0 ));
  CARRY4 \temp_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\temp_reg[3]_i_2_n_0 ,\temp_reg[3]_i_2_n_1 ,\temp_reg[3]_i_2_n_2 ,\temp_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\temp_reg[3]_i_5_n_0 ,\temp_reg[3]_i_6_n_0 ,\temp_reg[3]_i_7_n_0 ,1'b1}),
        .O({\temp_reg[3]_i_2_n_4 ,\temp_reg[3]_i_2_n_5 ,\temp_reg[3]_i_2_n_6 ,\temp_reg[3]_i_2_n_7 }),
        .S({\temp_reg[3]_i_8_n_0 ,\temp_reg[3]_i_9_n_0 ,\temp_reg[3]_i_10_n_0 ,\temp_reg[3]_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[3]_i_20 
       (.I0(data_a_IBUF[0]),
        .I1(carry_in_IBUF),
        .O(\temp_reg[3]_i_20_n_0 ));
  CARRY4 \temp_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\temp_reg[3]_i_3_n_0 ,\temp_reg[3]_i_3_n_1 ,\temp_reg[3]_i_3_n_2 ,\temp_reg[3]_i_3_n_3 }),
        .CYINIT(p_0_in),
        .DI(data_a_IBUF[3:0]),
        .O({\temp_reg[3]_i_3_n_4 ,\temp_reg[3]_i_3_n_5 ,\temp_reg[3]_i_3_n_6 ,\temp_reg[3]_i_3_n_7 }),
        .S({\temp_reg[3]_i_13_n_0 ,\temp_reg[3]_i_14_n_0 ,\temp_reg[3]_i_15_n_0 ,\temp_reg[3]_i_16_n_0 }));
  CARRY4 \temp_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\temp_reg[3]_i_4_n_0 ,\temp_reg[3]_i_4_n_1 ,\temp_reg[3]_i_4_n_2 ,\temp_reg[3]_i_4_n_3 }),
        .CYINIT(data_b_IBUF[0]),
        .DI(data_a_IBUF[3:0]),
        .O({\temp_reg[3]_i_4_n_4 ,\temp_reg[3]_i_4_n_5 ,\temp_reg[3]_i_4_n_6 ,\temp_reg[3]_i_4_n_7 }),
        .S({\temp_reg[3]_i_17_n_0 ,\temp_reg[3]_i_18_n_0 ,\temp_reg[3]_i_19_n_0 ,\temp_reg[3]_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[3]_i_5 
       (.I0(data_a_IBUF[2]),
        .I1(data_b_IBUF[2]),
        .O(\temp_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[3]_i_6 
       (.I0(data_a_IBUF[1]),
        .I1(data_b_IBUF[1]),
        .O(\temp_reg[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \temp_reg[3]_i_7 
       (.I0(data_b_IBUF[0]),
        .I1(carry_in_IBUF),
        .I2(data_a_IBUF[0]),
        .O(\temp_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[3]_i_8 
       (.I0(data_b_IBUF[2]),
        .I1(data_a_IBUF[2]),
        .I2(data_a_IBUF[3]),
        .I3(data_b_IBUF[3]),
        .O(\temp_reg[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[3]_i_9 
       (.I0(data_b_IBUF[1]),
        .I1(data_a_IBUF[1]),
        .I2(data_a_IBUF[2]),
        .I3(data_b_IBUF[2]),
        .O(\temp_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[4] 
       (.CLR(1'b0),
        .D(\temp_reg[4]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[4]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg[7]_i_2_n_7 ),
        .I1(\temp_reg[7]_i_3_n_7 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[7]_i_4_n_7 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[5] 
       (.CLR(1'b0),
        .D(\temp_reg[5]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[5]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[5]_i_1 
       (.I0(\temp_reg[7]_i_2_n_6 ),
        .I1(\temp_reg[7]_i_3_n_6 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[7]_i_4_n_6 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[6] 
       (.CLR(1'b0),
        .D(\temp_reg[6]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[6]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[6]_i_1 
       (.I0(\temp_reg[7]_i_2_n_5 ),
        .I1(\temp_reg[7]_i_3_n_5 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[7]_i_4_n_5 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[7] 
       (.CLR(1'b0),
        .D(\temp_reg[7]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[7]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \temp_reg[7]_i_1 
       (.I0(\temp_reg[7]_i_2_n_4 ),
        .I1(\temp_reg[7]_i_3_n_4 ),
        .I2(CS_IBUF[0]),
        .I3(\temp_reg[7]_i_4_n_4 ),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[7]_i_10 
       (.I0(data_b_IBUF[5]),
        .I1(data_a_IBUF[5]),
        .I2(data_a_IBUF[6]),
        .I3(data_b_IBUF[6]),
        .O(\temp_reg[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[7]_i_11 
       (.I0(data_b_IBUF[4]),
        .I1(data_a_IBUF[4]),
        .I2(data_a_IBUF[5]),
        .I3(data_b_IBUF[5]),
        .O(\temp_reg[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[7]_i_12 
       (.I0(data_b_IBUF[3]),
        .I1(data_a_IBUF[3]),
        .I2(data_a_IBUF[4]),
        .I3(data_b_IBUF[4]),
        .O(\temp_reg[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[7]_i_13 
       (.I0(data_b_IBUF[7]),
        .I1(data_a_IBUF[7]),
        .O(\temp_reg[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[7]_i_14 
       (.I0(data_b_IBUF[6]),
        .I1(data_a_IBUF[6]),
        .O(\temp_reg[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[7]_i_15 
       (.I0(data_b_IBUF[5]),
        .I1(data_a_IBUF[5]),
        .O(\temp_reg[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_reg[7]_i_16 
       (.I0(data_b_IBUF[4]),
        .I1(data_a_IBUF[4]),
        .O(\temp_reg[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[7]_i_17 
       (.I0(data_a_IBUF[7]),
        .I1(data_b_IBUF[7]),
        .O(\temp_reg[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[7]_i_18 
       (.I0(data_a_IBUF[6]),
        .I1(data_b_IBUF[6]),
        .O(\temp_reg[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[7]_i_19 
       (.I0(data_a_IBUF[5]),
        .I1(data_b_IBUF[5]),
        .O(\temp_reg[7]_i_19_n_0 ));
  CARRY4 \temp_reg[7]_i_2 
       (.CI(\temp_reg[3]_i_2_n_0 ),
        .CO({\temp_reg[7]_i_2_n_0 ,\temp_reg[7]_i_2_n_1 ,\temp_reg[7]_i_2_n_2 ,\temp_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\temp_reg[7]_i_5_n_0 ,\temp_reg[7]_i_6_n_0 ,\temp_reg[7]_i_7_n_0 ,\temp_reg[7]_i_8_n_0 }),
        .O({\temp_reg[7]_i_2_n_4 ,\temp_reg[7]_i_2_n_5 ,\temp_reg[7]_i_2_n_6 ,\temp_reg[7]_i_2_n_7 }),
        .S({\temp_reg[7]_i_9_n_0 ,\temp_reg[7]_i_10_n_0 ,\temp_reg[7]_i_11_n_0 ,\temp_reg[7]_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg[7]_i_20 
       (.I0(data_a_IBUF[4]),
        .I1(data_b_IBUF[4]),
        .O(\temp_reg[7]_i_20_n_0 ));
  CARRY4 \temp_reg[7]_i_3 
       (.CI(\temp_reg[3]_i_3_n_0 ),
        .CO({\temp_reg[7]_i_3_n_0 ,\temp_reg[7]_i_3_n_1 ,\temp_reg[7]_i_3_n_2 ,\temp_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(data_a_IBUF[7:4]),
        .O({\temp_reg[7]_i_3_n_4 ,\temp_reg[7]_i_3_n_5 ,\temp_reg[7]_i_3_n_6 ,\temp_reg[7]_i_3_n_7 }),
        .S({\temp_reg[7]_i_13_n_0 ,\temp_reg[7]_i_14_n_0 ,\temp_reg[7]_i_15_n_0 ,\temp_reg[7]_i_16_n_0 }));
  CARRY4 \temp_reg[7]_i_4 
       (.CI(\temp_reg[3]_i_4_n_0 ),
        .CO({\temp_reg[7]_i_4_n_0 ,\temp_reg[7]_i_4_n_1 ,\temp_reg[7]_i_4_n_2 ,\temp_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(data_a_IBUF[7:4]),
        .O({\temp_reg[7]_i_4_n_4 ,\temp_reg[7]_i_4_n_5 ,\temp_reg[7]_i_4_n_6 ,\temp_reg[7]_i_4_n_7 }),
        .S({\temp_reg[7]_i_17_n_0 ,\temp_reg[7]_i_18_n_0 ,\temp_reg[7]_i_19_n_0 ,\temp_reg[7]_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[7]_i_5 
       (.I0(data_a_IBUF[6]),
        .I1(data_b_IBUF[6]),
        .O(\temp_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[7]_i_6 
       (.I0(data_a_IBUF[5]),
        .I1(data_b_IBUF[5]),
        .O(\temp_reg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[7]_i_7 
       (.I0(data_a_IBUF[4]),
        .I1(data_b_IBUF[4]),
        .O(\temp_reg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[7]_i_8 
       (.I0(data_a_IBUF[3]),
        .I1(data_b_IBUF[3]),
        .O(\temp_reg[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \temp_reg[7]_i_9 
       (.I0(data_b_IBUF[6]),
        .I1(data_a_IBUF[6]),
        .I2(data_a_IBUF[7]),
        .I3(data_b_IBUF[7]),
        .O(\temp_reg[7]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[8] 
       (.CLR(1'b0),
        .D(\temp_reg[8]_i_1_n_0 ),
        .G(\temp_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_OBUF[8]));
  LUT5 #(
    .INIT(32'hAAAA3F30)) 
    \temp_reg[8]_i_1 
       (.I0(\temp_reg[8]_i_3_n_7 ),
        .I1(\temp_reg[8]_i_4_n_3 ),
        .I2(CS_IBUF[0]),
        .I3(p_1_in),
        .I4(CS_IBUF[2]),
        .O(\temp_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \temp_reg[8]_i_2 
       (.I0(CS_IBUF[0]),
        .I1(CS_IBUF[2]),
        .I2(CS_IBUF[1]),
        .O(\temp_reg[8]_i_2_n_0 ));
  CARRY4 \temp_reg[8]_i_3 
       (.CI(\temp_reg[7]_i_2_n_0 ),
        .CO(\NLW_temp_reg[8]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_temp_reg[8]_i_3_O_UNCONNECTED [3:1],\temp_reg[8]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\temp_reg[8]_i_6_n_0 }));
  CARRY4 \temp_reg[8]_i_4 
       (.CI(\temp_reg[7]_i_3_n_0 ),
        .CO({\NLW_temp_reg[8]_i_4_CO_UNCONNECTED [3:1],\temp_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_temp_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \temp_reg[8]_i_5 
       (.CI(\temp_reg[7]_i_4_n_0 ),
        .CO({\NLW_temp_reg[8]_i_5_CO_UNCONNECTED [3:1],p_1_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_temp_reg[8]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[8]_i_6 
       (.I0(data_b_IBUF[7]),
        .I1(data_a_IBUF[7]),
        .O(\temp_reg[8]_i_6_n_0 ));
  OBUF zero_OBUF_inst
       (.I(zero_OBUF),
        .O(zero));
  LUT5 #(
    .INIT(32'h00000001)) 
    zero_OBUF_inst_i_1
       (.I0(S_OBUF[5]),
        .I1(S_OBUF[4]),
        .I2(S_OBUF[6]),
        .I3(S_OBUF[7]),
        .I4(zero_OBUF_inst_i_2_n_0),
        .O(zero_OBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_OBUF_inst_i_2
       (.I0(S_OBUF[2]),
        .I1(S_OBUF[3]),
        .I2(S_OBUF[0]),
        .I3(S_OBUF[1]),
        .O(zero_OBUF_inst_i_2_n_0));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
