// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Jul 09 16:07:59 2017
// Host        : Dear-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/VivadoProject/MusicCalc/MusicCalc.sim/sim_1/synth/timing/CalcTest_tb_time_synth.v
// Design      : CalcTest
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module CalcTest
   (clk,
    rst,
    SRCH,
    SRCL,
    DSTH,
    DSTL,
    ALU_OP,
    finish,
    OP_flag,
    num_flag,
    Nzero,
    outH,
    outL,
    out_sign);
  input clk;
  input rst;
  input [7:0]SRCH;
  input [7:0]SRCL;
  input [7:0]DSTH;
  input [7:0]DSTL;
  input [2:0]ALU_OP;
  input finish;
  input OP_flag;
  input num_flag;
  input [1:0]Nzero;
  output [7:0]outH;
  output [7:0]outL;
  output out_sign;

  wire [2:0]ALU_OP;
  wire [2:0]ALU_OP_IBUF;
  wire [7:0]DSTH;
  wire [7:0]DSTH_IBUF;
  wire [7:0]DSTL;
  wire [7:0]DSTL_IBUF;
  wire [1:0]Nzero;
  wire [1:0]Nzero_IBUF;
  wire OP_flag;
  wire OP_flag_IBUF;
  wire [7:0]SRCH;
  wire [7:0]SRCH_IBUF;
  wire [7:0]SRCL;
  wire [7:0]SRCL_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_H;
  wire [7:0]data_L;
  wire finish;
  wire finish_IBUF;
  wire num_flag;
  wire num_flag_IBUF;
  wire [7:0]outH;
  wire [7:0]outH_OBUF;
  wire [7:0]outL;
  wire [7:0]outL_OBUF;
  wire out_sign;
  wire out_sign_OBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("CalcTest_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \ALU_OP_IBUF[0]_inst 
       (.I(ALU_OP[0]),
        .O(ALU_OP_IBUF[0]));
  IBUF \ALU_OP_IBUF[1]_inst 
       (.I(ALU_OP[1]),
        .O(ALU_OP_IBUF[1]));
  IBUF \ALU_OP_IBUF[2]_inst 
       (.I(ALU_OP[2]),
        .O(ALU_OP_IBUF[2]));
  CoreCircuit Core
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(ALU_OP_IBUF),
        .DSTH_IBUF(DSTH_IBUF),
        .DSTL_IBUF(DSTL_IBUF),
        .Nzero_IBUF(Nzero_IBUF),
        .OP_flag_IBUF(OP_flag_IBUF),
        .Q(data_L),
        .SRCH_IBUF(SRCH_IBUF),
        .SRCL_IBUF(SRCL_IBUF),
        .\data_reg[15] (data_H),
        .finish_IBUF(finish_IBUF),
        .num_flag_IBUF(num_flag_IBUF),
        .out_sign_OBUF(out_sign_OBUF));
  IBUF \DSTH_IBUF[0]_inst 
       (.I(DSTH[0]),
        .O(DSTH_IBUF[0]));
  IBUF \DSTH_IBUF[1]_inst 
       (.I(DSTH[1]),
        .O(DSTH_IBUF[1]));
  IBUF \DSTH_IBUF[2]_inst 
       (.I(DSTH[2]),
        .O(DSTH_IBUF[2]));
  IBUF \DSTH_IBUF[3]_inst 
       (.I(DSTH[3]),
        .O(DSTH_IBUF[3]));
  IBUF \DSTH_IBUF[4]_inst 
       (.I(DSTH[4]),
        .O(DSTH_IBUF[4]));
  IBUF \DSTH_IBUF[5]_inst 
       (.I(DSTH[5]),
        .O(DSTH_IBUF[5]));
  IBUF \DSTH_IBUF[6]_inst 
       (.I(DSTH[6]),
        .O(DSTH_IBUF[6]));
  IBUF \DSTH_IBUF[7]_inst 
       (.I(DSTH[7]),
        .O(DSTH_IBUF[7]));
  IBUF \DSTL_IBUF[0]_inst 
       (.I(DSTL[0]),
        .O(DSTL_IBUF[0]));
  IBUF \DSTL_IBUF[1]_inst 
       (.I(DSTL[1]),
        .O(DSTL_IBUF[1]));
  IBUF \DSTL_IBUF[2]_inst 
       (.I(DSTL[2]),
        .O(DSTL_IBUF[2]));
  IBUF \DSTL_IBUF[3]_inst 
       (.I(DSTL[3]),
        .O(DSTL_IBUF[3]));
  IBUF \DSTL_IBUF[4]_inst 
       (.I(DSTL[4]),
        .O(DSTL_IBUF[4]));
  IBUF \DSTL_IBUF[5]_inst 
       (.I(DSTL[5]),
        .O(DSTL_IBUF[5]));
  IBUF \DSTL_IBUF[6]_inst 
       (.I(DSTL[6]),
        .O(DSTL_IBUF[6]));
  IBUF \DSTL_IBUF[7]_inst 
       (.I(DSTL[7]),
        .O(DSTL_IBUF[7]));
  Hex2Dec Hex2Dec
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(outH_OBUF),
        .\data_H_reg[7] (data_H),
        .\data_L_reg[7] (data_L),
        .\outL[7] (outL_OBUF));
  IBUF \Nzero_IBUF[0]_inst 
       (.I(Nzero[0]),
        .O(Nzero_IBUF[0]));
  IBUF \Nzero_IBUF[1]_inst 
       (.I(Nzero[1]),
        .O(Nzero_IBUF[1]));
  IBUF OP_flag_IBUF_inst
       (.I(OP_flag),
        .O(OP_flag_IBUF));
  IBUF \SRCH_IBUF[0]_inst 
       (.I(SRCH[0]),
        .O(SRCH_IBUF[0]));
  IBUF \SRCH_IBUF[1]_inst 
       (.I(SRCH[1]),
        .O(SRCH_IBUF[1]));
  IBUF \SRCH_IBUF[2]_inst 
       (.I(SRCH[2]),
        .O(SRCH_IBUF[2]));
  IBUF \SRCH_IBUF[3]_inst 
       (.I(SRCH[3]),
        .O(SRCH_IBUF[3]));
  IBUF \SRCH_IBUF[4]_inst 
       (.I(SRCH[4]),
        .O(SRCH_IBUF[4]));
  IBUF \SRCH_IBUF[5]_inst 
       (.I(SRCH[5]),
        .O(SRCH_IBUF[5]));
  IBUF \SRCH_IBUF[6]_inst 
       (.I(SRCH[6]),
        .O(SRCH_IBUF[6]));
  IBUF \SRCH_IBUF[7]_inst 
       (.I(SRCH[7]),
        .O(SRCH_IBUF[7]));
  IBUF \SRCL_IBUF[0]_inst 
       (.I(SRCL[0]),
        .O(SRCL_IBUF[0]));
  IBUF \SRCL_IBUF[1]_inst 
       (.I(SRCL[1]),
        .O(SRCL_IBUF[1]));
  IBUF \SRCL_IBUF[2]_inst 
       (.I(SRCL[2]),
        .O(SRCL_IBUF[2]));
  IBUF \SRCL_IBUF[3]_inst 
       (.I(SRCL[3]),
        .O(SRCL_IBUF[3]));
  IBUF \SRCL_IBUF[4]_inst 
       (.I(SRCL[4]),
        .O(SRCL_IBUF[4]));
  IBUF \SRCL_IBUF[5]_inst 
       (.I(SRCL[5]),
        .O(SRCL_IBUF[5]));
  IBUF \SRCL_IBUF[6]_inst 
       (.I(SRCL[6]),
        .O(SRCL_IBUF[6]));
  IBUF \SRCL_IBUF[7]_inst 
       (.I(SRCL[7]),
        .O(SRCL_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF finish_IBUF_inst
       (.I(finish),
        .O(finish_IBUF));
  IBUF num_flag_IBUF_inst
       (.I(num_flag),
        .O(num_flag_IBUF));
  OBUF \outH_OBUF[0]_inst 
       (.I(outH_OBUF[0]),
        .O(outH[0]));
  OBUF \outH_OBUF[1]_inst 
       (.I(outH_OBUF[1]),
        .O(outH[1]));
  OBUF \outH_OBUF[2]_inst 
       (.I(outH_OBUF[2]),
        .O(outH[2]));
  OBUF \outH_OBUF[3]_inst 
       (.I(outH_OBUF[3]),
        .O(outH[3]));
  OBUF \outH_OBUF[4]_inst 
       (.I(outH_OBUF[4]),
        .O(outH[4]));
  OBUF \outH_OBUF[5]_inst 
       (.I(outH_OBUF[5]),
        .O(outH[5]));
  OBUF \outH_OBUF[6]_inst 
       (.I(outH_OBUF[6]),
        .O(outH[6]));
  OBUF \outH_OBUF[7]_inst 
       (.I(outH_OBUF[7]),
        .O(outH[7]));
  OBUF \outL_OBUF[0]_inst 
       (.I(outL_OBUF[0]),
        .O(outL[0]));
  OBUF \outL_OBUF[1]_inst 
       (.I(outL_OBUF[1]),
        .O(outL[1]));
  OBUF \outL_OBUF[2]_inst 
       (.I(outL_OBUF[2]),
        .O(outL[2]));
  OBUF \outL_OBUF[3]_inst 
       (.I(outL_OBUF[3]),
        .O(outL[3]));
  OBUF \outL_OBUF[4]_inst 
       (.I(outL_OBUF[4]),
        .O(outL[4]));
  OBUF \outL_OBUF[5]_inst 
       (.I(outL_OBUF[5]),
        .O(outL[5]));
  OBUF \outL_OBUF[6]_inst 
       (.I(outL_OBUF[6]),
        .O(outL[6]));
  OBUF \outL_OBUF[7]_inst 
       (.I(outL_OBUF[7]),
        .O(outL[7]));
  OBUF out_sign_OBUF_inst
       (.I(out_sign_OBUF),
        .O(out_sign));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module CoreCircuit
   (out_sign_OBUF,
    Q,
    \data_reg[15] ,
    CLK,
    AR,
    OP_flag_IBUF,
    SRCH_IBUF,
    D,
    Nzero_IBUF,
    finish_IBUF,
    num_flag_IBUF,
    SRCL_IBUF,
    DSTL_IBUF,
    DSTH_IBUF);
  output out_sign_OBUF;
  output [7:0]Q;
  output [7:0]\data_reg[15] ;
  input CLK;
  input [0:0]AR;
  input OP_flag_IBUF;
  input [7:0]SRCH_IBUF;
  input [2:0]D;
  input [1:0]Nzero_IBUF;
  input finish_IBUF;
  input num_flag_IBUF;
  input [7:0]SRCL_IBUF;
  input [7:0]DSTL_IBUF;
  input [7:0]DSTH_IBUF;

  wire \ALU_Test/p_0_in ;
  wire [0:0]AR;
  wire CLK;
  wire [2:0]CS;
  wire [2:0]D;
  wire [7:0]DSTH_IBUF;
  wire [7:0]DSTL_IBUF;
  wire [15:0]DST__0;
  wire DST_n_0;
  wire \DST_reg_n_0_[0] ;
  wire \DST_reg_n_0_[10] ;
  wire \DST_reg_n_0_[11] ;
  wire \DST_reg_n_0_[12] ;
  wire \DST_reg_n_0_[13] ;
  wire \DST_reg_n_0_[14] ;
  wire \DST_reg_n_0_[15] ;
  wire \DST_reg_n_0_[1] ;
  wire \DST_reg_n_0_[2] ;
  wire \DST_reg_n_0_[3] ;
  wire \DST_reg_n_0_[4] ;
  wire \DST_reg_n_0_[5] ;
  wire \DST_reg_n_0_[6] ;
  wire \DST_reg_n_0_[7] ;
  wire \DST_reg_n_0_[8] ;
  wire \DST_reg_n_0_[9] ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [1:0]Nzero_IBUF;
  wire OP;
  wire \OP[0]_i_1_n_0 ;
  wire \OP[0]_i_2_n_0 ;
  wire \OP[1]_i_1_n_0 ;
  wire \OP[2]_i_1_n_0 ;
  wire \OP[2]_i_2_n_0 ;
  wire OP_SIGN_i_1_n_0;
  wire OP_SIGN_reg_n_0;
  wire OP_changed_i_1_n_0;
  wire OP_changed_reg_n_0;
  wire OP_flag_IBUF;
  wire \OP_record[2]_i_1_n_0 ;
  wire \OP_record_reg_n_0_[0] ;
  wire \OP_record_reg_n_0_[1] ;
  wire \OP_record_reg_n_0_[2] ;
  wire \OP_reg_n_0_[0] ;
  wire \OP_reg_n_0_[1] ;
  wire \OP_reg_n_0_[2] ;
  wire [7:0]Q;
  wire [7:0]S;
  wire [15:0]SRC;
  wire SRC0;
  wire [7:0]SRCH_IBUF;
  wire [7:0]SRCL_IBUF;
  wire \SRC[12]_i_3_n_0 ;
  wire \SRC[12]_i_4_n_0 ;
  wire \SRC[12]_i_5_n_0 ;
  wire \SRC[12]_i_6_n_0 ;
  wire \SRC[15]_i_3_n_0 ;
  wire \SRC[15]_i_4_n_0 ;
  wire \SRC[15]_i_5_n_0 ;
  wire \SRC_inferred__0/i__n_0 ;
  wire \SRC_reg[12]_i_2_n_0 ;
  wire \SRC_reg[12]_i_2_n_1 ;
  wire \SRC_reg[12]_i_2_n_2 ;
  wire \SRC_reg[12]_i_2_n_3 ;
  wire \SRC_reg[12]_i_2_n_4 ;
  wire \SRC_reg[12]_i_2_n_5 ;
  wire \SRC_reg[12]_i_2_n_6 ;
  wire \SRC_reg[12]_i_2_n_7 ;
  wire \SRC_reg[15]_i_2_n_2 ;
  wire \SRC_reg[15]_i_2_n_3 ;
  wire \SRC_reg[15]_i_2_n_5 ;
  wire \SRC_reg[15]_i_2_n_6 ;
  wire \SRC_reg[15]_i_2_n_7 ;
  wire \SRC_reg_n_0_[0] ;
  wire \SRC_reg_n_0_[1] ;
  wire \SRC_reg_n_0_[2] ;
  wire \SRC_reg_n_0_[3] ;
  wire \SRC_reg_n_0_[4] ;
  wire \SRC_reg_n_0_[5] ;
  wire \SRC_reg_n_0_[6] ;
  wire \SRC_reg_n_0_[7] ;
  wire carry_flag_i_1_n_0;
  wire carry_flag_reg_n_0;
  wire carry_in;
  wire carry_in_i_1_n_0;
  wire carry_out;
  wire \data_H[0]_i_1_n_0 ;
  wire \data_H[1]_i_1_n_0 ;
  wire \data_H[2]_i_1_n_0 ;
  wire \data_H[3]_i_1_n_0 ;
  wire \data_H[4]_i_1_n_0 ;
  wire \data_H[5]_i_1_n_0 ;
  wire \data_H[6]_i_1_n_0 ;
  wire \data_H[7]_i_1_n_0 ;
  wire \data_L[0]_i_1_n_0 ;
  wire \data_L[1]_i_1_n_0 ;
  wire \data_L[2]_i_1_n_0 ;
  wire \data_L[3]_i_1_n_0 ;
  wire \data_L[4]_i_1_n_0 ;
  wire \data_L[5]_i_1_n_0 ;
  wire \data_L[6]_i_1_n_0 ;
  wire \data_L[7]_i_1_n_0 ;
  wire [7:0]data_a;
  wire \data_a[0]_i_1_n_0 ;
  wire \data_a[1]_i_1_n_0 ;
  wire \data_a[2]_i_1_n_0 ;
  wire \data_a[3]_i_1_n_0 ;
  wire \data_a[4]_i_1_n_0 ;
  wire \data_a[5]_i_1_n_0 ;
  wire \data_a[6]_i_1_n_0 ;
  wire \data_a[7]_i_1_n_0 ;
  wire [7:0]data_b;
  wire \data_b[0]_i_1_n_0 ;
  wire \data_b[1]_i_1_n_0 ;
  wire \data_b[2]_i_1_n_0 ;
  wire \data_b[3]_i_1_n_0 ;
  wire \data_b[4]_i_1_n_0 ;
  wire \data_b[5]_i_1_n_0 ;
  wire \data_b[6]_i_1_n_0 ;
  wire \data_b[7]_i_1_n_0 ;
  wire \data_b[7]_i_2_n_0 ;
  wire [7:0]\data_reg[15] ;
  wire finish_IBUF;
  wire i__i_1_n_0;
  wire mark_i_1_n_0;
  wire mark_i_2_n_0;
  wire mark_reg_n_0;
  wire num_flag_IBUF;
  wire out_sign_OBUF;
  wire out_sign_i_1_n_0;
  wire out_sign_i_2_n_0;
  wire out_sign_i_3_n_0;
  wire out_sign_i_4_n_0;
  wire out_sign_i_5_n_0;
  wire out_sign_i_6_n_0;
  wire out_sign_i_7_n_0;
  wire [14:0]p_0_in;
  wire [7:0]p_0_in_0;
  wire p_1_in;
  wire [15:0]result;
  wire [15:1]result1;
  wire result1_carry__0_i_1_n_0;
  wire result1_carry__0_i_2_n_0;
  wire result1_carry__0_i_3_n_0;
  wire result1_carry__0_i_4_n_0;
  wire result1_carry__0_n_0;
  wire result1_carry__0_n_1;
  wire result1_carry__0_n_2;
  wire result1_carry__0_n_3;
  wire result1_carry__1_i_1_n_0;
  wire result1_carry__1_i_2_n_0;
  wire result1_carry__1_i_3_n_0;
  wire result1_carry__1_i_4_n_0;
  wire result1_carry__1_n_0;
  wire result1_carry__1_n_1;
  wire result1_carry__1_n_2;
  wire result1_carry__1_n_3;
  wire result1_carry__2_i_1_n_0;
  wire result1_carry__2_i_2_n_0;
  wire result1_carry__2_i_3_n_0;
  wire result1_carry__2_n_2;
  wire result1_carry__2_n_3;
  wire result1_carry_i_1_n_0;
  wire result1_carry_i_2_n_0;
  wire result1_carry_i_3_n_0;
  wire result1_carry_i_4_n_0;
  wire result1_carry_n_0;
  wire result1_carry_n_1;
  wire result1_carry_n_2;
  wire result1_carry_n_3;
  wire result1_carry_n_7;
  wire result2;
  wire \result[0]_i_3_n_0 ;
  wire \result[10]_i_2_n_0 ;
  wire \result[11]_i_2_n_0 ;
  wire \result[12]_i_3_n_0 ;
  wire \result[13]_i_2_n_0 ;
  wire \result[14]_i_2_n_0 ;
  wire \result[15]_i_1_n_0 ;
  wire \result[15]_i_4_n_0 ;
  wire \result[15]_i_6_n_0 ;
  wire \result[15]_i_7_n_0 ;
  wire \result[1]_i_3_n_0 ;
  wire \result[2]_i_3_n_0 ;
  wire \result[3]_i_10_n_0 ;
  wire \result[3]_i_11_n_0 ;
  wire \result[3]_i_12_n_0 ;
  wire \result[3]_i_13_n_0 ;
  wire \result[3]_i_14_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_6_n_0 ;
  wire \result[3]_i_7_n_0 ;
  wire \result[3]_i_8_n_0 ;
  wire \result[3]_i_9_n_0 ;
  wire \result[4]_i_11_n_0 ;
  wire \result[4]_i_12_n_0 ;
  wire \result[4]_i_13_n_0 ;
  wire \result[4]_i_14_n_0 ;
  wire \result[4]_i_8_n_0 ;
  wire \result[4]_i_9_n_0 ;
  wire \result[5]_i_3_n_0 ;
  wire \result[6]_i_3_n_0 ;
  wire \result[7]_i_10_n_0 ;
  wire \result[7]_i_12_n_0 ;
  wire \result[7]_i_13_n_0 ;
  wire \result[7]_i_14_n_0 ;
  wire \result[7]_i_15_n_0 ;
  wire \result[7]_i_16_n_0 ;
  wire \result[7]_i_17_n_0 ;
  wire \result[7]_i_18_n_0 ;
  wire \result[7]_i_19_n_0 ;
  wire \result[7]_i_1_n_0 ;
  wire \result[7]_i_20_n_0 ;
  wire \result[7]_i_21_n_0 ;
  wire \result[7]_i_22_n_0 ;
  wire \result[7]_i_23_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[8]_i_3_n_0 ;
  wire \result[9]_i_2_n_0 ;
  wire \result_reg[12]_i_2_n_0 ;
  wire \result_reg[12]_i_2_n_1 ;
  wire \result_reg[12]_i_2_n_2 ;
  wire \result_reg[12]_i_2_n_3 ;
  wire \result_reg[12]_i_2_n_4 ;
  wire \result_reg[12]_i_2_n_5 ;
  wire \result_reg[12]_i_2_n_6 ;
  wire \result_reg[12]_i_2_n_7 ;
  wire \result_reg[15]_i_5_n_2 ;
  wire \result_reg[15]_i_5_n_3 ;
  wire \result_reg[15]_i_5_n_5 ;
  wire \result_reg[15]_i_5_n_6 ;
  wire \result_reg[15]_i_5_n_7 ;
  wire \result_reg[3]_i_3_n_0 ;
  wire \result_reg[3]_i_3_n_1 ;
  wire \result_reg[3]_i_3_n_2 ;
  wire \result_reg[3]_i_3_n_3 ;
  wire \result_reg[3]_i_3_n_4 ;
  wire \result_reg[3]_i_3_n_5 ;
  wire \result_reg[3]_i_3_n_6 ;
  wire \result_reg[3]_i_3_n_7 ;
  wire \result_reg[3]_i_5_n_0 ;
  wire \result_reg[3]_i_5_n_1 ;
  wire \result_reg[3]_i_5_n_2 ;
  wire \result_reg[3]_i_5_n_3 ;
  wire \result_reg[3]_i_5_n_4 ;
  wire \result_reg[3]_i_5_n_5 ;
  wire \result_reg[3]_i_5_n_6 ;
  wire \result_reg[3]_i_5_n_7 ;
  wire \result_reg[4]_i_2_n_0 ;
  wire \result_reg[4]_i_2_n_1 ;
  wire \result_reg[4]_i_2_n_2 ;
  wire \result_reg[4]_i_2_n_3 ;
  wire \result_reg[4]_i_2_n_4 ;
  wire \result_reg[4]_i_2_n_5 ;
  wire \result_reg[4]_i_2_n_6 ;
  wire \result_reg[4]_i_4_n_0 ;
  wire \result_reg[4]_i_4_n_1 ;
  wire \result_reg[4]_i_4_n_2 ;
  wire \result_reg[4]_i_4_n_3 ;
  wire \result_reg[4]_i_4_n_4 ;
  wire \result_reg[4]_i_4_n_5 ;
  wire \result_reg[4]_i_4_n_6 ;
  wire \result_reg[4]_i_4_n_7 ;
  wire \result_reg[7]_i_11_n_0 ;
  wire \result_reg[7]_i_11_n_1 ;
  wire \result_reg[7]_i_11_n_2 ;
  wire \result_reg[7]_i_11_n_3 ;
  wire \result_reg[7]_i_11_n_4 ;
  wire \result_reg[7]_i_11_n_5 ;
  wire \result_reg[7]_i_11_n_6 ;
  wire \result_reg[7]_i_11_n_7 ;
  wire \result_reg[7]_i_5_n_0 ;
  wire \result_reg[7]_i_5_n_1 ;
  wire \result_reg[7]_i_5_n_2 ;
  wire \result_reg[7]_i_5_n_3 ;
  wire \result_reg[7]_i_5_n_4 ;
  wire \result_reg[7]_i_5_n_5 ;
  wire \result_reg[7]_i_5_n_6 ;
  wire \result_reg[7]_i_5_n_7 ;
  wire \result_reg[7]_i_7_n_3 ;
  wire \result_reg[7]_i_9_n_0 ;
  wire \result_reg[7]_i_9_n_1 ;
  wire \result_reg[7]_i_9_n_2 ;
  wire \result_reg[7]_i_9_n_3 ;
  wire \result_reg[7]_i_9_n_4 ;
  wire \result_reg[7]_i_9_n_5 ;
  wire \result_reg[7]_i_9_n_6 ;
  wire \result_reg[7]_i_9_n_7 ;
  wire \result_reg[8]_i_2_n_0 ;
  wire \result_reg[8]_i_2_n_1 ;
  wire \result_reg[8]_i_2_n_2 ;
  wire \result_reg[8]_i_2_n_3 ;
  wire \result_reg[8]_i_2_n_4 ;
  wire \result_reg[8]_i_2_n_5 ;
  wire \result_reg[8]_i_2_n_6 ;
  wire \result_reg[8]_i_2_n_7 ;
  wire \result_reg_n_0_[0] ;
  wire \result_reg_n_0_[10] ;
  wire \result_reg_n_0_[11] ;
  wire \result_reg_n_0_[12] ;
  wire \result_reg_n_0_[13] ;
  wire \result_reg_n_0_[14] ;
  wire \result_reg_n_0_[1] ;
  wire \result_reg_n_0_[2] ;
  wire \result_reg_n_0_[3] ;
  wire \result_reg_n_0_[4] ;
  wire \result_reg_n_0_[5] ;
  wire \result_reg_n_0_[6] ;
  wire \result_reg_n_0_[7] ;
  wire \result_reg_n_0_[8] ;
  wire \result_reg_n_0_[9] ;
  wire sign_i_1_n_0;
  wire sign_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire [3:2]\NLW_SRC_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_SRC_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_result1__0_CARRY4_CO_UNCONNECTED;
  wire [3:0]NLW_result1__0_CARRY4_DI_UNCONNECTED;
  wire [3:1]NLW_result1__0_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_result1__0_CARRY4_S_UNCONNECTED;
  wire [3:2]NLW_result1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_result1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_result_reg[15]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[15]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_result_reg[4]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[7]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[7]_i_7_O_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[7]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[7]_i_8_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \CS_reg[0] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\OP_reg_n_0_[0] ),
        .Q(CS[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CS_reg[1] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\OP_reg_n_0_[1] ),
        .Q(CS[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CS_reg[2] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\OP_reg_n_0_[2] ),
        .Q(CS[2]));
  LUT4 #(
    .INIT(16'h4003)) 
    DST
       (.I0(OP_changed_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(DST_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[0]_i_1 
       (.I0(DSTL_IBUF[0]),
        .I1(state[2]),
        .O(DST__0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[10]_i_1 
       (.I0(DSTH_IBUF[2]),
        .I1(state[2]),
        .O(DST__0[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[11]_i_1 
       (.I0(DSTH_IBUF[3]),
        .I1(state[2]),
        .O(DST__0[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[12]_i_1 
       (.I0(DSTH_IBUF[4]),
        .I1(state[2]),
        .O(DST__0[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[13]_i_1 
       (.I0(DSTH_IBUF[5]),
        .I1(state[2]),
        .O(DST__0[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[14]_i_1 
       (.I0(DSTH_IBUF[6]),
        .I1(state[2]),
        .O(DST__0[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[15]_i_1 
       (.I0(DSTH_IBUF[7]),
        .I1(state[2]),
        .O(DST__0[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[1]_i_1 
       (.I0(DSTL_IBUF[1]),
        .I1(state[2]),
        .O(DST__0[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[2]_i_1 
       (.I0(DSTL_IBUF[2]),
        .I1(state[2]),
        .O(DST__0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[3]_i_1 
       (.I0(DSTL_IBUF[3]),
        .I1(state[2]),
        .O(DST__0[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[4]_i_1 
       (.I0(DSTL_IBUF[4]),
        .I1(state[2]),
        .O(DST__0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[5]_i_1 
       (.I0(DSTL_IBUF[5]),
        .I1(state[2]),
        .O(DST__0[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[6]_i_1 
       (.I0(DSTL_IBUF[6]),
        .I1(state[2]),
        .O(DST__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[7]_i_1 
       (.I0(DSTL_IBUF[7]),
        .I1(state[2]),
        .O(DST__0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[8]_i_1 
       (.I0(DSTH_IBUF[0]),
        .I1(state[2]),
        .O(DST__0[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \DST[9]_i_1 
       (.I0(DSTH_IBUF[1]),
        .I1(state[2]),
        .O(DST__0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[0] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[0]),
        .Q(\DST_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[10] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[10]),
        .Q(\DST_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[11] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[11]),
        .Q(\DST_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[12] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[12]),
        .Q(\DST_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[13] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[13]),
        .Q(\DST_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[14] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[14]),
        .Q(\DST_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[15] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[15]),
        .Q(\DST_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[1] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[1]),
        .Q(\DST_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[2] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[2]),
        .Q(\DST_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[3] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[3]),
        .Q(\DST_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[4] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[4]),
        .Q(\DST_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[5] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[5]),
        .Q(\DST_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[6] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[6]),
        .Q(\DST_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[7] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[7]),
        .Q(\DST_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[8] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[8]),
        .Q(\DST_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \DST_reg[9] 
       (.C(CLK),
        .CE(DST_n_0),
        .CLR(AR),
        .D(DST__0[9]),
        .Q(\DST_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000057FF000057)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(finish_IBUF),
        .I2(OP_flag_IBUF),
        .I3(state[1]),
        .I4(state[2]),
        .I5(num_flag_IBUF),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\DST_reg_n_0_[11] ),
        .I1(\DST_reg_n_0_[10] ),
        .I2(\DST_reg_n_0_[9] ),
        .I3(\DST_reg_n_0_[8] ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\DST_reg_n_0_[6] ),
        .I1(\DST_reg_n_0_[7] ),
        .I2(\DST_reg_n_0_[4] ),
        .I3(\DST_reg_n_0_[5] ),
        .I4(Nzero_IBUF[0]),
        .I5(Nzero_IBUF[1]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\DST_reg_n_0_[15] ),
        .I1(\DST_reg_n_0_[14] ),
        .I2(\DST_reg_n_0_[12] ),
        .I3(\DST_reg_n_0_[13] ),
        .I4(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\DST_reg_n_0_[3] ),
        .I1(\DST_reg_n_0_[2] ),
        .I2(\DST_reg_n_0_[1] ),
        .I3(\DST_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \OP[0]_i_1 
       (.I0(\OP[0]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\OP_reg_n_0_[0] ),
        .O(\OP[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFD02FFFFFD020000)) 
    \OP[0]_i_2 
       (.I0(sign_reg_n_0),
        .I1(\OP_record_reg_n_0_[2] ),
        .I2(\OP_record_reg_n_0_[1] ),
        .I3(\OP_record_reg_n_0_[0] ),
        .I4(OP_changed_reg_n_0),
        .I5(D[0]),
        .O(\OP[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \OP[1]_i_1 
       (.I0(\OP_record_reg_n_0_[1] ),
        .I1(\OP[2]_i_2_n_0 ),
        .I2(OP_changed_reg_n_0),
        .I3(D[1]),
        .I4(OP),
        .I5(\OP_reg_n_0_[1] ),
        .O(\OP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \OP[2]_i_1 
       (.I0(\OP_record_reg_n_0_[2] ),
        .I1(\OP[2]_i_2_n_0 ),
        .I2(OP_changed_reg_n_0),
        .I3(D[2]),
        .I4(OP),
        .I5(\OP_reg_n_0_[2] ),
        .O(\OP[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \OP[2]_i_2 
       (.I0(\OP_record_reg_n_0_[1] ),
        .I1(\OP_record_reg_n_0_[0] ),
        .I2(\OP_record_reg_n_0_[2] ),
        .I3(sign_reg_n_0),
        .O(\OP[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \OP[2]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(OP));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    OP_SIGN_i_1
       (.I0(\result[7]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(OP_SIGN_reg_n_0),
        .O(OP_SIGN_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    OP_SIGN_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(OP_SIGN_i_1_n_0),
        .Q(OP_SIGN_reg_n_0));
  LUT5 #(
    .INIT(32'hBAA2AAA2)) 
    OP_changed_i_1
       (.I0(OP_changed_reg_n_0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(OP_flag_IBUF),
        .O(OP_changed_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    OP_changed_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(OP_changed_i_1_n_0),
        .Q(OP_changed_reg_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \OP_record[2]_i_1 
       (.I0(state[1]),
        .I1(OP_flag_IBUF),
        .I2(state[2]),
        .I3(state[0]),
        .O(\OP_record[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_record_reg[0] 
       (.C(CLK),
        .CE(\OP_record[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(\OP_record_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_record_reg[1] 
       (.C(CLK),
        .CE(\OP_record[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(\OP_record_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_record_reg[2] 
       (.C(CLK),
        .CE(\OP_record[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\OP_record_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\OP[0]_i_1_n_0 ),
        .Q(\OP_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\OP[1]_i_1_n_0 ),
        .Q(\OP_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \OP_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\OP[2]_i_1_n_0 ),
        .Q(\OP_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h8888CFC0)) 
    \SRC[0]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(SRCL_IBUF[0]),
        .I4(state[1]),
        .O(SRC[0]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[10]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[10] ),
        .I2(\SRC_reg[12]_i_2_n_6 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[2]),
        .I5(state[1]),
        .O(SRC[10]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[11]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[11] ),
        .I2(\SRC_reg[12]_i_2_n_5 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[3]),
        .I5(state[1]),
        .O(SRC[11]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[12]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[12] ),
        .I2(\SRC_reg[12]_i_2_n_4 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[4]),
        .I5(state[1]),
        .O(SRC[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[12]_i_3 
       (.I0(\result_reg_n_0_[12] ),
        .O(\SRC[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[12]_i_4 
       (.I0(\result_reg_n_0_[11] ),
        .O(\SRC[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[12]_i_5 
       (.I0(\result_reg_n_0_[10] ),
        .O(\SRC[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[12]_i_6 
       (.I0(\result_reg_n_0_[9] ),
        .O(\SRC[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[13]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[13] ),
        .I2(\SRC_reg[15]_i_2_n_7 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[5]),
        .I5(state[1]),
        .O(SRC[13]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[14]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[14] ),
        .I2(\SRC_reg[15]_i_2_n_6 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[6]),
        .I5(state[1]),
        .O(SRC[14]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[15]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(p_1_in),
        .I2(\SRC_reg[15]_i_2_n_5 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[7]),
        .I5(state[1]),
        .O(SRC[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[15]_i_3 
       (.I0(p_1_in),
        .O(\SRC[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[15]_i_4 
       (.I0(\result_reg_n_0_[14] ),
        .O(\SRC[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SRC[15]_i_5 
       (.I0(\result_reg_n_0_[13] ),
        .O(\SRC[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[1]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[1] ),
        .I2(\result_reg[4]_i_4_n_7 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[1]),
        .I5(state[1]),
        .O(SRC[1]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[2]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[2] ),
        .I2(\result_reg[4]_i_4_n_6 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[2]),
        .I5(state[1]),
        .O(SRC[2]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[3]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[3] ),
        .I2(\result_reg[4]_i_4_n_5 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[3]),
        .I5(state[1]),
        .O(SRC[3]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[4]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[4] ),
        .I2(\result_reg[4]_i_4_n_4 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[4]),
        .I5(state[1]),
        .O(SRC[4]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[5]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[5] ),
        .I2(\result_reg[7]_i_5_n_7 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[5]),
        .I5(state[1]),
        .O(SRC[5]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[6]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[6] ),
        .I2(\result_reg[7]_i_5_n_6 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[6]),
        .I5(state[1]),
        .O(SRC[6]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[7]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[7] ),
        .I2(\result_reg[7]_i_5_n_5 ),
        .I3(state[0]),
        .I4(SRCL_IBUF[7]),
        .I5(state[1]),
        .O(SRC[7]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[8]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[8] ),
        .I2(\result_reg[7]_i_5_n_4 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[0]),
        .I5(state[1]),
        .O(SRC[8]));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \SRC[9]_i_1 
       (.I0(OP_changed_reg_n_0),
        .I1(\result_reg_n_0_[9] ),
        .I2(\SRC_reg[12]_i_2_n_7 ),
        .I3(state[0]),
        .I4(SRCH_IBUF[1]),
        .I5(state[1]),
        .O(SRC[9]));
  LUT4 #(
    .INIT(16'h800D)) 
    \SRC_inferred__0/i_ 
       (.I0(state[0]),
        .I1(i__i_1_n_0),
        .I2(state[2]),
        .I3(state[1]),
        .O(\SRC_inferred__0/i__n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[0] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[0]),
        .Q(\SRC_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[10] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[10]),
        .Q(p_0_in_0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[11] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[11]),
        .Q(p_0_in_0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[12] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[12]),
        .Q(p_0_in_0[4]));
  CARRY4 \SRC_reg[12]_i_2 
       (.CI(\result_reg[7]_i_5_n_0 ),
        .CO({\SRC_reg[12]_i_2_n_0 ,\SRC_reg[12]_i_2_n_1 ,\SRC_reg[12]_i_2_n_2 ,\SRC_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\SRC_reg[12]_i_2_n_4 ,\SRC_reg[12]_i_2_n_5 ,\SRC_reg[12]_i_2_n_6 ,\SRC_reg[12]_i_2_n_7 }),
        .S({\SRC[12]_i_3_n_0 ,\SRC[12]_i_4_n_0 ,\SRC[12]_i_5_n_0 ,\SRC[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[13] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[13]),
        .Q(p_0_in_0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[14] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[14]),
        .Q(p_0_in_0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[15] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[15]),
        .Q(p_0_in_0[7]));
  CARRY4 \SRC_reg[15]_i_2 
       (.CI(\SRC_reg[12]_i_2_n_0 ),
        .CO({\NLW_SRC_reg[15]_i_2_CO_UNCONNECTED [3:2],\SRC_reg[15]_i_2_n_2 ,\SRC_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_SRC_reg[15]_i_2_O_UNCONNECTED [3],\SRC_reg[15]_i_2_n_5 ,\SRC_reg[15]_i_2_n_6 ,\SRC_reg[15]_i_2_n_7 }),
        .S({1'b0,\SRC[15]_i_3_n_0 ,\SRC[15]_i_4_n_0 ,\SRC[15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[1] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[1]),
        .Q(\SRC_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[2] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[2]),
        .Q(\SRC_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[3] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[3]),
        .Q(\SRC_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[4] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[4]),
        .Q(\SRC_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[5] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[5]),
        .Q(\SRC_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[6] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[6]),
        .Q(\SRC_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[7] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[7]),
        .Q(\SRC_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[8] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[8]),
        .Q(p_0_in_0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \SRC_reg[9] 
       (.C(CLK),
        .CE(\SRC_inferred__0/i__n_0 ),
        .CLR(AR),
        .D(SRC[9]),
        .Q(p_0_in_0[1]));
  LUT5 #(
    .INIT(32'hEFFC2000)) 
    carry_flag_i_1
       (.I0(carry_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(carry_flag_reg_n_0),
        .O(carry_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'h05540004)) 
    carry_flag_i_2
       (.I0(CS[1]),
        .I1(\ALU_Test/p_0_in ),
        .I2(CS[2]),
        .I3(CS[0]),
        .I4(\result_reg[7]_i_7_n_3 ),
        .O(carry_out));
  FDCE #(
    .INIT(1'b0)) 
    carry_flag_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(carry_flag_i_1_n_0),
        .Q(carry_flag_reg_n_0));
  LUT5 #(
    .INIT(32'h888B88B8)) 
    carry_in_i_1
       (.I0(carry_flag_reg_n_0),
        .I1(state[2]),
        .I2(\OP_reg_n_0_[2] ),
        .I3(\OP_reg_n_0_[1] ),
        .I4(\OP_reg_n_0_[0] ),
        .O(carry_in_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    carry_in_reg
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(carry_in_i_1_n_0),
        .Q(carry_in));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[0]_i_1 
       (.I0(\result_reg_n_0_[8] ),
        .I1(SRCH_IBUF[0]),
        .I2(state[2]),
        .O(\data_H[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[1]_i_1 
       (.I0(\result_reg_n_0_[9] ),
        .I1(SRCH_IBUF[1]),
        .I2(state[2]),
        .O(\data_H[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[2]_i_1 
       (.I0(\result_reg_n_0_[10] ),
        .I1(SRCH_IBUF[2]),
        .I2(state[2]),
        .O(\data_H[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[3]_i_1 
       (.I0(\result_reg_n_0_[11] ),
        .I1(SRCH_IBUF[3]),
        .I2(state[2]),
        .O(\data_H[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[4]_i_1 
       (.I0(\result_reg_n_0_[12] ),
        .I1(SRCH_IBUF[4]),
        .I2(state[2]),
        .O(\data_H[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[5]_i_1 
       (.I0(\result_reg_n_0_[13] ),
        .I1(SRCH_IBUF[5]),
        .I2(state[2]),
        .O(\data_H[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[6]_i_1 
       (.I0(\result_reg_n_0_[14] ),
        .I1(SRCH_IBUF[6]),
        .I2(state[2]),
        .O(\data_H[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_H[7]_i_1 
       (.I0(p_1_in),
        .I1(SRCH_IBUF[7]),
        .I2(state[2]),
        .O(\data_H[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[0] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[0]_i_1_n_0 ),
        .Q(\data_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[1] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[1]_i_1_n_0 ),
        .Q(\data_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[2] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[2]_i_1_n_0 ),
        .Q(\data_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[3] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[3]_i_1_n_0 ),
        .Q(\data_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[4] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[4]_i_1_n_0 ),
        .Q(\data_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[5] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[5]_i_1_n_0 ),
        .Q(\data_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[6] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[6]_i_1_n_0 ),
        .Q(\data_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[7] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_H[7]_i_1_n_0 ),
        .Q(\data_reg[15] [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[0]_i_1 
       (.I0(\result_reg_n_0_[0] ),
        .I1(SRCL_IBUF[0]),
        .I2(state[2]),
        .O(\data_L[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[1]_i_1 
       (.I0(\result_reg_n_0_[1] ),
        .I1(SRCL_IBUF[1]),
        .I2(state[2]),
        .O(\data_L[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[2]_i_1 
       (.I0(\result_reg_n_0_[2] ),
        .I1(SRCL_IBUF[2]),
        .I2(state[2]),
        .O(\data_L[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[3]_i_1 
       (.I0(\result_reg_n_0_[3] ),
        .I1(SRCL_IBUF[3]),
        .I2(state[2]),
        .O(\data_L[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[4]_i_1 
       (.I0(\result_reg_n_0_[4] ),
        .I1(SRCL_IBUF[4]),
        .I2(state[2]),
        .O(\data_L[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[5]_i_1 
       (.I0(\result_reg_n_0_[5] ),
        .I1(SRCL_IBUF[5]),
        .I2(state[2]),
        .O(\data_L[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[6]_i_1 
       (.I0(\result_reg_n_0_[6] ),
        .I1(SRCL_IBUF[6]),
        .I2(state[2]),
        .O(\data_L[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_L[7]_i_1 
       (.I0(\result_reg_n_0_[7] ),
        .I1(SRCL_IBUF[7]),
        .I2(state[2]),
        .O(\data_L[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[0] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[1] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[2] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[3] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[4] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[5] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[6] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[7] 
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(\data_L[7]_i_1_n_0 ),
        .Q(Q[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[0]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(\SRC_reg_n_0_[0] ),
        .I2(state[2]),
        .O(\data_a[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[1]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\SRC_reg_n_0_[1] ),
        .I2(state[2]),
        .O(\data_a[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[2]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(\SRC_reg_n_0_[2] ),
        .I2(state[2]),
        .O(\data_a[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[3]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(\SRC_reg_n_0_[3] ),
        .I2(state[2]),
        .O(\data_a[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[4]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(\SRC_reg_n_0_[4] ),
        .I2(state[2]),
        .O(\data_a[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[5]_i_1 
       (.I0(p_0_in_0[5]),
        .I1(\SRC_reg_n_0_[5] ),
        .I2(state[2]),
        .O(\data_a[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[6]_i_1 
       (.I0(p_0_in_0[6]),
        .I1(\SRC_reg_n_0_[6] ),
        .I2(state[2]),
        .O(\data_a[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_a[7]_i_1 
       (.I0(p_0_in_0[7]),
        .I1(\SRC_reg_n_0_[7] ),
        .I2(state[2]),
        .O(\data_a[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[0] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[0]_i_1_n_0 ),
        .Q(data_a[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[1] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[1]_i_1_n_0 ),
        .Q(data_a[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[2] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[2]_i_1_n_0 ),
        .Q(data_a[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[3] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[3]_i_1_n_0 ),
        .Q(data_a[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[4] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[4]_i_1_n_0 ),
        .Q(data_a[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[5] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[5]_i_1_n_0 ),
        .Q(data_a[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[6] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[6]_i_1_n_0 ),
        .Q(data_a[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg[7] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_a[7]_i_1_n_0 ),
        .Q(data_a[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[0]_i_1 
       (.I0(\DST_reg_n_0_[8] ),
        .I1(\DST_reg_n_0_[0] ),
        .I2(state[2]),
        .O(\data_b[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[1]_i_1 
       (.I0(\DST_reg_n_0_[9] ),
        .I1(\DST_reg_n_0_[1] ),
        .I2(state[2]),
        .O(\data_b[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[2]_i_1 
       (.I0(\DST_reg_n_0_[10] ),
        .I1(\DST_reg_n_0_[2] ),
        .I2(state[2]),
        .O(\data_b[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[3]_i_1 
       (.I0(\DST_reg_n_0_[11] ),
        .I1(\DST_reg_n_0_[3] ),
        .I2(state[2]),
        .O(\data_b[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[4]_i_1 
       (.I0(\DST_reg_n_0_[12] ),
        .I1(\DST_reg_n_0_[4] ),
        .I2(state[2]),
        .O(\data_b[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[5]_i_1 
       (.I0(\DST_reg_n_0_[13] ),
        .I1(\DST_reg_n_0_[5] ),
        .I2(state[2]),
        .O(\data_b[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[6]_i_1 
       (.I0(\DST_reg_n_0_[14] ),
        .I1(\DST_reg_n_0_[6] ),
        .I2(state[2]),
        .O(\data_b[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \data_b[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\data_b[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_b[7]_i_2 
       (.I0(\DST_reg_n_0_[15] ),
        .I1(\DST_reg_n_0_[7] ),
        .I2(state[2]),
        .O(\data_b[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[0] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[0]_i_1_n_0 ),
        .Q(data_b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[1] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[1]_i_1_n_0 ),
        .Q(data_b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[2] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[2]_i_1_n_0 ),
        .Q(data_b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[3] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[3]_i_1_n_0 ),
        .Q(data_b[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[4] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[4]_i_1_n_0 ),
        .Q(data_b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[5] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[5]_i_1_n_0 ),
        .Q(data_b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[6] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[6]_i_1_n_0 ),
        .Q(data_b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[7] 
       (.C(CLK),
        .CE(\data_b[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_b[7]_i_2_n_0 ),
        .Q(data_b[7]));
  LUT5 #(
    .INIT(32'hFFFF0E00)) 
    i__i_1
       (.I0(sign_reg_n_0),
        .I1(\OP_record_reg_n_0_[0] ),
        .I2(\OP_record_reg_n_0_[2] ),
        .I3(\OP_record_reg_n_0_[1] ),
        .I4(state[1]),
        .O(i__i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFCFFFC20000000)) 
    mark_i_1
       (.I0(p_1_in),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(mark_i_2_n_0),
        .I5(mark_reg_n_0),
        .O(mark_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    mark_i_2
       (.I0(\OP_reg_n_0_[2] ),
        .I1(\OP_reg_n_0_[1] ),
        .I2(p_1_in),
        .O(mark_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mark_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(mark_i_1_n_0),
        .Q(mark_reg_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    out_sign_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(out_sign_i_1_n_0));
  LUT6 #(
    .INIT(64'hF020F020F020D000)) 
    out_sign_i_2
       (.I0(\OP_reg_n_0_[1] ),
        .I1(\OP_reg_n_0_[2] ),
        .I2(state[2]),
        .I3(out_sign_i_3_n_0),
        .I4(mark_reg_n_0),
        .I5(p_1_in),
        .O(out_sign_i_2_n_0));
  LUT6 #(
    .INIT(64'h6666666666666660)) 
    out_sign_i_3
       (.I0(sign_reg_n_0),
        .I1(OP_SIGN_reg_n_0),
        .I2(out_sign_i_4_n_0),
        .I3(out_sign_i_5_n_0),
        .I4(out_sign_i_6_n_0),
        .I5(out_sign_i_7_n_0),
        .O(out_sign_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sign_i_4
       (.I0(\result_reg_n_0_[6] ),
        .I1(\result_reg_n_0_[7] ),
        .I2(\result_reg_n_0_[4] ),
        .I3(\result_reg_n_0_[5] ),
        .O(out_sign_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sign_i_5
       (.I0(\result_reg_n_0_[2] ),
        .I1(\result_reg_n_0_[3] ),
        .I2(\result_reg_n_0_[0] ),
        .I3(\result_reg_n_0_[1] ),
        .O(out_sign_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sign_i_6
       (.I0(p_1_in),
        .I1(\result_reg_n_0_[14] ),
        .I2(\result_reg_n_0_[12] ),
        .I3(\result_reg_n_0_[13] ),
        .O(out_sign_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_sign_i_7
       (.I0(\result_reg_n_0_[10] ),
        .I1(\result_reg_n_0_[11] ),
        .I2(\result_reg_n_0_[8] ),
        .I3(\result_reg_n_0_[9] ),
        .O(out_sign_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_sign_reg
       (.C(CLK),
        .CE(out_sign_i_1_n_0),
        .CLR(AR),
        .D(out_sign_i_2_n_0),
        .Q(out_sign_OBUF));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 result1__0_CARRY4
       (.CI(1'b0),
        .CO(NLW_result1__0_CARRY4_CO_UNCONNECTED[3:0]),
        .CYINIT(\result_reg_n_0_[0] ),
        .DI(NLW_result1__0_CARRY4_DI_UNCONNECTED[3:0]),
        .O({NLW_result1__0_CARRY4_O_UNCONNECTED[3:1],result1[1]}),
        .S({NLW_result1__0_CARRY4_S_UNCONNECTED[3:1],p_0_in[1]}));
  LUT1 #(
    .INIT(2'h1)) 
    result1__0_i_1
       (.I0(\result_reg_n_0_[1] ),
        .O(p_0_in[1]));
  CARRY4 result1_carry
       (.CI(1'b0),
        .CO({result1_carry_n_0,result1_carry_n_1,result1_carry_n_2,result1_carry_n_3}),
        .CYINIT(\result_reg_n_0_[0] ),
        .DI({\result_reg_n_0_[4] ,\result_reg_n_0_[3] ,\result_reg_n_0_[2] ,\result_reg_n_0_[1] }),
        .O({result1[4:2],result1_carry_n_7}),
        .S({result1_carry_i_1_n_0,result1_carry_i_2_n_0,result1_carry_i_3_n_0,result1_carry_i_4_n_0}));
  CARRY4 result1_carry__0
       (.CI(result1_carry_n_0),
        .CO({result1_carry__0_n_0,result1_carry__0_n_1,result1_carry__0_n_2,result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,\result_reg_n_0_[7] ,\result_reg_n_0_[6] ,\result_reg_n_0_[5] }),
        .O(result1[8:5]),
        .S({result1_carry__0_i_1_n_0,result1_carry__0_i_2_n_0,result1_carry__0_i_3_n_0,result1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__0_i_1
       (.I0(S[0]),
        .O(result1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__0_i_2
       (.I0(\result_reg_n_0_[7] ),
        .O(result1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__0_i_3
       (.I0(\result_reg_n_0_[6] ),
        .O(result1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__0_i_4
       (.I0(\result_reg_n_0_[5] ),
        .O(result1_carry__0_i_4_n_0));
  CARRY4 result1_carry__1
       (.CI(result1_carry__0_n_0),
        .CO({result1_carry__1_n_0,result1_carry__1_n_1,result1_carry__1_n_2,result1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(result1[12:9]),
        .S({result1_carry__1_i_1_n_0,result1_carry__1_i_2_n_0,result1_carry__1_i_3_n_0,result1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__1_i_1
       (.I0(S[4]),
        .O(result1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__1_i_2
       (.I0(S[3]),
        .O(result1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__1_i_3
       (.I0(S[2]),
        .O(result1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__1_i_4
       (.I0(S[1]),
        .O(result1_carry__1_i_4_n_0));
  CARRY4 result1_carry__2
       (.CI(result1_carry__1_n_0),
        .CO({NLW_result1_carry__2_CO_UNCONNECTED[3:2],result1_carry__2_n_2,result1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({NLW_result1_carry__2_O_UNCONNECTED[3],result1[15:13]}),
        .S({1'b0,result1_carry__2_i_1_n_0,result1_carry__2_i_2_n_0,result1_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__2_i_1
       (.I0(S[7]),
        .O(result1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__2_i_2
       (.I0(S[6]),
        .O(result1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry__2_i_3
       (.I0(S[5]),
        .O(result1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry_i_1
       (.I0(\result_reg_n_0_[4] ),
        .O(result1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry_i_2
       (.I0(\result_reg_n_0_[3] ),
        .O(result1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry_i_3
       (.I0(\result_reg_n_0_[2] ),
        .O(result1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    result1_carry_i_4
       (.I0(\result_reg_n_0_[1] ),
        .O(result1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \result[0]_i_1 
       (.I0(state[2]),
        .I1(S[0]),
        .I2(\result_reg_n_0_[0] ),
        .I3(state[1]),
        .O(result[0]));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[0]_i_2 
       (.I0(\result_reg[3]_i_3_n_7 ),
        .I1(\result[0]_i_3_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[3]_i_5_n_7 ),
        .I5(CS[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[0]_i_3 
       (.I0(CS[0]),
        .I1(data_a[0]),
        .I2(data_b[0]),
        .O(\result[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[10]_i_1 
       (.I0(\result_reg[12]_i_2_n_6 ),
        .I1(state[0]),
        .I2(\result[10]_i_2_n_0 ),
        .O(result[10]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[10]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[12]_i_2_n_6 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[2]),
        .I5(result1[10]),
        .O(\result[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[11]_i_1 
       (.I0(\result_reg[12]_i_2_n_5 ),
        .I1(state[0]),
        .I2(\result[11]_i_2_n_0 ),
        .O(result[11]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[11]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[12]_i_2_n_5 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[3]),
        .I5(result1[11]),
        .O(\result[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[12]_i_1 
       (.I0(\result_reg[12]_i_2_n_4 ),
        .I1(state[0]),
        .I2(\result[12]_i_3_n_0 ),
        .O(result[12]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[12]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[12]_i_2_n_4 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[4]),
        .I5(result1[12]),
        .O(\result[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_4 
       (.I0(\result_reg_n_0_[12] ),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_5 
       (.I0(\result_reg_n_0_[11] ),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_6 
       (.I0(\result_reg_n_0_[10] ),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_7 
       (.I0(\result_reg_n_0_[9] ),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[13]_i_1 
       (.I0(\result_reg[15]_i_5_n_7 ),
        .I1(state[0]),
        .I2(\result[13]_i_2_n_0 ),
        .O(result[13]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[13]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[15]_i_2_n_7 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[5]),
        .I5(result1[13]),
        .O(\result[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[14]_i_1 
       (.I0(\result_reg[15]_i_5_n_6 ),
        .I1(state[0]),
        .I2(\result[14]_i_2_n_0 ),
        .O(result[14]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[14]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[15]_i_2_n_6 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[6]),
        .I5(result1[14]),
        .O(\result[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E0EEE0)) 
    \result[15]_i_1 
       (.I0(state[2]),
        .I1(SRC0),
        .I2(\result[15]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .O(\result[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[15]_i_2 
       (.I0(\result_reg[15]_i_5_n_5 ),
        .I1(state[0]),
        .I2(\result[15]_i_6_n_0 ),
        .O(result[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \result[15]_i_3 
       (.I0(\OP_record_reg_n_0_[1] ),
        .I1(\OP_record_reg_n_0_[2] ),
        .I2(\OP_record_reg_n_0_[0] ),
        .I3(sign_reg_n_0),
        .O(SRC0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \result[15]_i_4 
       (.I0(state[2]),
        .I1(\OP_reg_n_0_[2] ),
        .I2(\OP_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(state[1]),
        .O(\result[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[15]_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[15]_i_2_n_5 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[7]),
        .I5(result1[15]),
        .O(\result[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[15]_i_7 
       (.I0(p_1_in),
        .O(\result[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[15]_i_8 
       (.I0(\result_reg_n_0_[14] ),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[15]_i_9 
       (.I0(\result_reg_n_0_[13] ),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[1]_i_1 
       (.I0(result1_carry_n_7),
        .I1(S[1]),
        .I2(result1[1]),
        .I3(state[2]),
        .I4(\result_reg[4]_i_4_n_7 ),
        .I5(state[1]),
        .O(result[1]));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[1]_i_2 
       (.I0(\result_reg[3]_i_3_n_6 ),
        .I1(\result[1]_i_3_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[3]_i_5_n_6 ),
        .I5(CS[0]),
        .O(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[1]_i_3 
       (.I0(CS[0]),
        .I1(data_a[1]),
        .I2(data_b[1]),
        .O(\result[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[2]_i_1 
       (.I0(\result_reg[4]_i_2_n_6 ),
        .I1(S[2]),
        .I2(result1[2]),
        .I3(state[2]),
        .I4(\result_reg[4]_i_4_n_6 ),
        .I5(state[1]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[2]_i_2 
       (.I0(\result_reg[3]_i_3_n_5 ),
        .I1(\result[2]_i_3_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[3]_i_5_n_5 ),
        .I5(CS[0]),
        .O(S[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[2]_i_3 
       (.I0(CS[0]),
        .I1(data_a[2]),
        .I2(data_b[2]),
        .O(\result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[3]_i_1 
       (.I0(\result_reg[4]_i_2_n_5 ),
        .I1(S[3]),
        .I2(result1[3]),
        .I3(state[2]),
        .I4(\result_reg[4]_i_4_n_5 ),
        .I5(state[1]),
        .O(result[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[3]_i_10 
       (.I0(data_b[0]),
        .O(\result[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[3]_i_11 
       (.I0(data_a[3]),
        .I1(data_b[3]),
        .O(\result[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[3]_i_12 
       (.I0(data_a[2]),
        .I1(data_b[2]),
        .O(\result[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[3]_i_13 
       (.I0(data_a[1]),
        .I1(data_b[1]),
        .O(\result[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_14 
       (.I0(data_a[0]),
        .I1(carry_in),
        .O(\result[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[3]_i_2 
       (.I0(\result_reg[3]_i_3_n_4 ),
        .I1(\result[3]_i_4_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[3]_i_5_n_4 ),
        .I5(CS[0]),
        .O(S[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[3]_i_4 
       (.I0(CS[0]),
        .I1(data_a[3]),
        .I2(data_b[3]),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_6 
       (.I0(data_b[3]),
        .I1(data_a[3]),
        .O(\result[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_7 
       (.I0(data_b[2]),
        .I1(data_a[2]),
        .O(\result[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_8 
       (.I0(data_b[1]),
        .I1(data_a[1]),
        .O(\result[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_9 
       (.I0(data_a[0]),
        .I1(carry_in),
        .O(\result[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[4]_i_1 
       (.I0(\result_reg[4]_i_2_n_4 ),
        .I1(S[4]),
        .I2(result1[4]),
        .I3(state[2]),
        .I4(\result_reg[4]_i_4_n_4 ),
        .I5(state[1]),
        .O(result[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_10 
       (.I0(\result_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_11 
       (.I0(\result_reg_n_0_[4] ),
        .O(\result[4]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_12 
       (.I0(\result_reg_n_0_[3] ),
        .O(\result[4]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_13 
       (.I0(\result_reg_n_0_[2] ),
        .O(\result[4]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_14 
       (.I0(\result_reg_n_0_[1] ),
        .O(\result[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[4]_i_3 
       (.I0(\result_reg[7]_i_9_n_7 ),
        .I1(\result[4]_i_9_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[7]_i_11_n_7 ),
        .I5(CS[0]),
        .O(S[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_5 
       (.I0(\result_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_6 
       (.I0(\result_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_7 
       (.I0(\result_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_8 
       (.I0(\result_reg_n_0_[1] ),
        .O(\result[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[4]_i_9 
       (.I0(CS[0]),
        .I1(data_a[4]),
        .I2(data_b[4]),
        .O(\result[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[5]_i_1 
       (.I0(\result_reg[8]_i_2_n_7 ),
        .I1(S[5]),
        .I2(result1[5]),
        .I3(state[2]),
        .I4(\result_reg[7]_i_5_n_7 ),
        .I5(state[1]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[5]_i_2 
       (.I0(\result_reg[7]_i_9_n_6 ),
        .I1(\result[5]_i_3_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[7]_i_11_n_6 ),
        .I5(CS[0]),
        .O(S[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[5]_i_3 
       (.I0(CS[0]),
        .I1(data_a[5]),
        .I2(data_b[5]),
        .O(\result[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[6]_i_1 
       (.I0(\result_reg[8]_i_2_n_6 ),
        .I1(S[6]),
        .I2(result1[6]),
        .I3(state[2]),
        .I4(\result_reg[7]_i_5_n_6 ),
        .I5(state[1]),
        .O(result[6]));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[6]_i_2 
       (.I0(\result_reg[7]_i_9_n_5 ),
        .I1(\result[6]_i_3_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[7]_i_11_n_5 ),
        .I5(CS[0]),
        .O(S[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[6]_i_3 
       (.I0(CS[0]),
        .I1(data_a[6]),
        .I2(data_b[6]),
        .O(\result[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \result[7]_i_1 
       (.I0(\result[7]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(i__i_1_n_0),
        .I4(state[0]),
        .I5(\result[15]_i_4_n_0 ),
        .O(\result[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[7]_i_10 
       (.I0(CS[0]),
        .I1(data_a[7]),
        .I2(data_b[7]),
        .O(\result[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[7]_i_12 
       (.I0(\result_reg_n_0_[8] ),
        .O(\result[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[7]_i_13 
       (.I0(\result_reg_n_0_[7] ),
        .O(\result[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[7]_i_14 
       (.I0(\result_reg_n_0_[6] ),
        .O(\result[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[7]_i_15 
       (.I0(\result_reg_n_0_[5] ),
        .O(\result[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_16 
       (.I0(data_b[7]),
        .I1(data_a[7]),
        .O(\result[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_17 
       (.I0(data_b[6]),
        .I1(data_a[6]),
        .O(\result[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_18 
       (.I0(data_b[5]),
        .I1(data_a[5]),
        .O(\result[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_19 
       (.I0(data_b[4]),
        .I1(data_a[4]),
        .O(\result[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h55CC55CC0FFF0F00)) 
    \result[7]_i_2 
       (.I0(\result_reg[8]_i_2_n_5 ),
        .I1(S[7]),
        .I2(result1[7]),
        .I3(state[2]),
        .I4(\result_reg[7]_i_5_n_5 ),
        .I5(state[1]),
        .O(result[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \result[7]_i_20 
       (.I0(data_a[7]),
        .I1(data_b[7]),
        .O(\result[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[7]_i_21 
       (.I0(data_a[6]),
        .I1(data_b[6]),
        .O(\result[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[7]_i_22 
       (.I0(data_a[5]),
        .I1(data_b[5]),
        .O(\result[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[7]_i_23 
       (.I0(data_a[4]),
        .I1(data_b[4]),
        .O(\result[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA220A22A)) 
    \result[7]_i_3 
       (.I0(result2),
        .I1(\result_reg[7]_i_7_n_3 ),
        .I2(CS[0]),
        .I3(CS[2]),
        .I4(\ALU_Test/p_0_in ),
        .I5(CS[1]),
        .O(\result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00C00FCA00CA)) 
    \result[7]_i_4 
       (.I0(\result_reg[7]_i_9_n_4 ),
        .I1(\result[7]_i_10_n_0 ),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(\result_reg[7]_i_11_n_4 ),
        .I5(CS[0]),
        .O(S[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \result[7]_i_6 
       (.I0(\OP_reg_n_0_[2] ),
        .I1(\OP_reg_n_0_[1] ),
        .I2(\OP_reg_n_0_[0] ),
        .O(result2));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[8]_i_1 
       (.I0(\result_reg[8]_i_2_n_4 ),
        .I1(state[0]),
        .I2(\result[8]_i_3_n_0 ),
        .O(result[8]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[8]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\result_reg[7]_i_5_n_4 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[0]),
        .I5(result1[8]),
        .O(\result[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_4 
       (.I0(\result_reg_n_0_[8] ),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_5 
       (.I0(\result_reg_n_0_[7] ),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_6 
       (.I0(\result_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_7 
       (.I0(\result_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h1F)) 
    \result[9]_i_1 
       (.I0(\result_reg[12]_i_2_n_7 ),
        .I1(state[0]),
        .I2(\result[9]_i_2_n_0 ),
        .O(result[9]));
  LUT6 #(
    .INIT(64'hEFABEFEFABABABEF)) 
    \result[9]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\SRC_reg[12]_i_2_n_7 ),
        .I3(\result[7]_i_3_n_0 ),
        .I4(S[1]),
        .I5(result1[9]),
        .O(\result[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[0]),
        .Q(\result_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[10]),
        .Q(\result_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[11]),
        .Q(\result_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[12]),
        .Q(\result_reg_n_0_[12] ));
  CARRY4 \result_reg[12]_i_2 
       (.CI(\result_reg[8]_i_2_n_0 ),
        .CO({\result_reg[12]_i_2_n_0 ,\result_reg[12]_i_2_n_1 ,\result_reg[12]_i_2_n_2 ,\result_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_n_0_[12] ,\result_reg_n_0_[11] ,\result_reg_n_0_[10] ,\result_reg_n_0_[9] }),
        .O({\result_reg[12]_i_2_n_4 ,\result_reg[12]_i_2_n_5 ,\result_reg[12]_i_2_n_6 ,\result_reg[12]_i_2_n_7 }),
        .S(p_0_in[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[13]),
        .Q(\result_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[14]),
        .Q(\result_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[15]),
        .Q(p_1_in));
  CARRY4 \result_reg[15]_i_5 
       (.CI(\result_reg[12]_i_2_n_0 ),
        .CO({\NLW_result_reg[15]_i_5_CO_UNCONNECTED [3:2],\result_reg[15]_i_5_n_2 ,\result_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\result_reg_n_0_[14] ,\result_reg_n_0_[13] }),
        .O({\NLW_result_reg[15]_i_5_O_UNCONNECTED [3],\result_reg[15]_i_5_n_5 ,\result_reg[15]_i_5_n_6 ,\result_reg[15]_i_5_n_7 }),
        .S({1'b0,\result[15]_i_7_n_0 ,p_0_in[14:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[1]),
        .Q(\result_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[2]),
        .Q(\result_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[3]),
        .Q(\result_reg_n_0_[3] ));
  CARRY4 \result_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_3_n_0 ,\result_reg[3]_i_3_n_1 ,\result_reg[3]_i_3_n_2 ,\result_reg[3]_i_3_n_3 }),
        .CYINIT(data_b[0]),
        .DI(data_a[3:0]),
        .O({\result_reg[3]_i_3_n_4 ,\result_reg[3]_i_3_n_5 ,\result_reg[3]_i_3_n_6 ,\result_reg[3]_i_3_n_7 }),
        .S({\result[3]_i_6_n_0 ,\result[3]_i_7_n_0 ,\result[3]_i_8_n_0 ,\result[3]_i_9_n_0 }));
  CARRY4 \result_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_5_n_0 ,\result_reg[3]_i_5_n_1 ,\result_reg[3]_i_5_n_2 ,\result_reg[3]_i_5_n_3 }),
        .CYINIT(\result[3]_i_10_n_0 ),
        .DI(data_a[3:0]),
        .O({\result_reg[3]_i_5_n_4 ,\result_reg[3]_i_5_n_5 ,\result_reg[3]_i_5_n_6 ,\result_reg[3]_i_5_n_7 }),
        .S({\result[3]_i_11_n_0 ,\result[3]_i_12_n_0 ,\result[3]_i_13_n_0 ,\result[3]_i_14_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[4]),
        .Q(\result_reg_n_0_[4] ));
  CARRY4 \result_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[4]_i_2_n_0 ,\result_reg[4]_i_2_n_1 ,\result_reg[4]_i_2_n_2 ,\result_reg[4]_i_2_n_3 }),
        .CYINIT(\result_reg_n_0_[0] ),
        .DI({\result_reg_n_0_[4] ,\result_reg_n_0_[3] ,\result_reg_n_0_[2] ,\result_reg_n_0_[1] }),
        .O({\result_reg[4]_i_2_n_4 ,\result_reg[4]_i_2_n_5 ,\result_reg[4]_i_2_n_6 ,\NLW_result_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S({p_0_in[4:2],\result[4]_i_8_n_0 }));
  CARRY4 \result_reg[4]_i_4 
       (.CI(1'b0),
        .CO({\result_reg[4]_i_4_n_0 ,\result_reg[4]_i_4_n_1 ,\result_reg[4]_i_4_n_2 ,\result_reg[4]_i_4_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\result_reg[4]_i_4_n_4 ,\result_reg[4]_i_4_n_5 ,\result_reg[4]_i_4_n_6 ,\result_reg[4]_i_4_n_7 }),
        .S({\result[4]_i_11_n_0 ,\result[4]_i_12_n_0 ,\result[4]_i_13_n_0 ,\result[4]_i_14_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[5]),
        .Q(\result_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[6]),
        .Q(\result_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(\result[7]_i_1_n_0 ),
        .CLR(AR),
        .D(result[7]),
        .Q(\result_reg_n_0_[7] ));
  CARRY4 \result_reg[7]_i_11 
       (.CI(\result_reg[3]_i_5_n_0 ),
        .CO({\result_reg[7]_i_11_n_0 ,\result_reg[7]_i_11_n_1 ,\result_reg[7]_i_11_n_2 ,\result_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(data_a[7:4]),
        .O({\result_reg[7]_i_11_n_4 ,\result_reg[7]_i_11_n_5 ,\result_reg[7]_i_11_n_6 ,\result_reg[7]_i_11_n_7 }),
        .S({\result[7]_i_20_n_0 ,\result[7]_i_21_n_0 ,\result[7]_i_22_n_0 ,\result[7]_i_23_n_0 }));
  CARRY4 \result_reg[7]_i_5 
       (.CI(\result_reg[4]_i_4_n_0 ),
        .CO({\result_reg[7]_i_5_n_0 ,\result_reg[7]_i_5_n_1 ,\result_reg[7]_i_5_n_2 ,\result_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\result_reg[7]_i_5_n_4 ,\result_reg[7]_i_5_n_5 ,\result_reg[7]_i_5_n_6 ,\result_reg[7]_i_5_n_7 }),
        .S({\result[7]_i_12_n_0 ,\result[7]_i_13_n_0 ,\result[7]_i_14_n_0 ,\result[7]_i_15_n_0 }));
  CARRY4 \result_reg[7]_i_7 
       (.CI(\result_reg[7]_i_11_n_0 ),
        .CO({\NLW_result_reg[7]_i_7_CO_UNCONNECTED [3:1],\result_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[7]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \result_reg[7]_i_8 
       (.CI(\result_reg[7]_i_9_n_0 ),
        .CO({\NLW_result_reg[7]_i_8_CO_UNCONNECTED [3:1],\ALU_Test/p_0_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[7]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \result_reg[7]_i_9 
       (.CI(\result_reg[3]_i_3_n_0 ),
        .CO({\result_reg[7]_i_9_n_0 ,\result_reg[7]_i_9_n_1 ,\result_reg[7]_i_9_n_2 ,\result_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(data_a[7:4]),
        .O({\result_reg[7]_i_9_n_4 ,\result_reg[7]_i_9_n_5 ,\result_reg[7]_i_9_n_6 ,\result_reg[7]_i_9_n_7 }),
        .S({\result[7]_i_16_n_0 ,\result[7]_i_17_n_0 ,\result[7]_i_18_n_0 ,\result[7]_i_19_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[8]),
        .Q(\result_reg_n_0_[8] ));
  CARRY4 \result_reg[8]_i_2 
       (.CI(\result_reg[4]_i_2_n_0 ),
        .CO({\result_reg[8]_i_2_n_0 ,\result_reg[8]_i_2_n_1 ,\result_reg[8]_i_2_n_2 ,\result_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_n_0_[8] ,\result_reg_n_0_[7] ,\result_reg_n_0_[6] ,\result_reg_n_0_[5] }),
        .O({\result_reg[8]_i_2_n_4 ,\result_reg[8]_i_2_n_5 ,\result_reg[8]_i_2_n_6 ,\result_reg[8]_i_2_n_7 }),
        .S(p_0_in[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(\result[15]_i_1_n_0 ),
        .CLR(AR),
        .D(result[9]),
        .Q(\result_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h8FFFFFF080000000)) 
    sign_i_1
       (.I0(out_sign_OBUF),
        .I1(OP_changed_reg_n_0),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(sign_reg_n_0),
        .O(sign_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sign_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sign_i_1_n_0),
        .Q(sign_reg_n_0));
endmodule

module Hex2Dec
   (Q,
    \outL[7] ,
    CLK,
    AR,
    \data_L_reg[7] ,
    \data_H_reg[7] );
  output [7:0]Q;
  output [7:0]\outL[7] ;
  input CLK;
  input [0:0]AR;
  input [7:0]\data_L_reg[7] ;
  input [7:0]\data_H_reg[7] ;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [7:0]Q;
  wire _carry__0_i_10_n_0;
  wire _carry__0_i_11_n_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_i_5_n_0;
  wire _carry__0_i_6_n_0;
  wire _carry__0_i_7_n_0;
  wire _carry__0_i_8_n_0;
  wire _carry__0_i_9_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__0_n_4;
  wire _carry__0_n_5;
  wire _carry__0_n_6;
  wire _carry__0_n_7;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_i_5_n_0;
  wire _carry__1_i_6_n_0;
  wire _carry__1_i_7_n_0;
  wire _carry__1_i_8_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__1_n_4;
  wire _carry__1_n_5;
  wire _carry__1_n_6;
  wire _carry__1_n_7;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_i_3_n_0;
  wire _carry__2_i_4_n_0;
  wire _carry__2_i_5_n_0;
  wire _carry__2_i_6_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__2_n_4;
  wire _carry__2_n_5;
  wire _carry__2_n_6;
  wire _carry__2_n_7;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire _carry_n_4;
  wire _carry_n_5;
  wire _carry_n_6;
  wire _carry_n_7;
  wire data;
  wire data1__0_carry__0__0_i_1_n_0;
  wire data1__0_carry__0__0_i_2_n_0;
  wire data1__0_carry__0__0_n_3;
  wire data1__0_carry__0__0_n_6;
  wire data1__0_carry__0__0_n_7;
  wire data1__0_carry__0_i_1_n_0;
  wire data1__0_carry__0_i_2_n_0;
  wire data1__0_carry__0_i_3_n_0;
  wire data1__0_carry__0_i_4_n_0;
  wire data1__0_carry__0_i_5_n_0;
  wire data1__0_carry__0_n_0;
  wire data1__0_carry__0_n_1;
  wire data1__0_carry__0_n_2;
  wire data1__0_carry__0_n_3;
  wire data1__0_carry__0_n_4;
  wire data1__0_carry__0_n_5;
  wire data1__0_carry__0_n_6;
  wire data1__0_carry__0_n_7;
  wire data1__0_carry_i_1_n_0;
  wire data1__0_carry_i_2_n_0;
  wire data1__0_carry_i_3_n_0;
  wire data1__0_carry_i_4_n_0;
  wire data1__0_carry_i_5_n_0;
  wire data1__0_carry_i_6_n_0;
  wire data1__0_carry_n_0;
  wire data1__0_carry_n_1;
  wire data1__0_carry_n_2;
  wire data1__0_carry_n_3;
  wire data1__0_carry_n_4;
  wire data1__0_carry_n_5;
  wire data1__0_carry_n_6;
  wire data1__0_carry_n_7;
  wire data1__10_carry_i_1_n_3;
  wire data1__10_carry_i_2_n_0;
  wire data1__10_carry_i_3_n_0;
  wire data1__10_carry_i_4_n_0;
  wire data1__10_carry_i_5_n_0;
  wire data1__10_carry_n_1;
  wire data1__10_carry_n_2;
  wire data1__10_carry_n_3;
  wire data1__10_carry_n_4;
  wire data1__10_carry_n_5;
  wire data1__10_carry_n_6;
  wire data1__10_carry_n_7;
  wire \data[0]_i_1_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire [7:0]\data_H_reg[7] ;
  wire [7:0]\data_L_reg[7] ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[10] ;
  wire \data_reg_n_0_[11] ;
  wire \data_reg_n_0_[12] ;
  wire \data_reg_n_0_[13] ;
  wire \data_reg_n_0_[14] ;
  wire \data_reg_n_0_[15] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire \data_reg_n_0_[8] ;
  wire \data_reg_n_0_[9] ;
  wire \hund[0]_i_10_n_0 ;
  wire \hund[0]_i_11_n_0 ;
  wire \hund[0]_i_12_n_0 ;
  wire \hund[0]_i_13_n_0 ;
  wire \hund[0]_i_14_n_0 ;
  wire \hund[0]_i_1_n_0 ;
  wire \hund[0]_i_2_n_0 ;
  wire \hund[0]_i_3_n_0 ;
  wire \hund[0]_i_4_n_0 ;
  wire \hund[0]_i_5_n_0 ;
  wire \hund[0]_i_6_n_0 ;
  wire \hund[0]_i_7_n_0 ;
  wire \hund[0]_i_8_n_0 ;
  wire \hund[0]_i_9_n_0 ;
  wire \hund[1]_i_1_n_0 ;
  wire \hund[1]_i_2_n_0 ;
  wire \hund[1]_i_3_n_0 ;
  wire \hund[1]_i_4_n_0 ;
  wire \hund[1]_i_5_n_0 ;
  wire \hund[2]_i_1_n_0 ;
  wire \hund[2]_i_2_n_0 ;
  wire \hund[2]_i_3_n_0 ;
  wire \hund[3]_i_1_n_0 ;
  wire \hund[3]_i_2_n_0 ;
  wire [3:0]hund__0;
  wire hund__0_1;
  wire [3:0]one;
  wire \one[3]_i_1_n_0 ;
  wire [7:0]\outL[7] ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire \ten[0]_i_1_n_0 ;
  wire \ten[0]_i_2_n_0 ;
  wire \ten[0]_i_3_n_0 ;
  wire \ten[0]_i_4_n_0 ;
  wire \ten[0]_i_5_n_0 ;
  wire \ten[0]_i_6_n_0 ;
  wire \ten[1]_i_1_n_0 ;
  wire \ten[1]_i_2_n_0 ;
  wire \ten[1]_i_3_n_0 ;
  wire \ten[2]_i_1_n_0 ;
  wire \ten[2]_i_2_n_0 ;
  wire \ten[2]_i_3_n_0 ;
  wire \ten[3]_i_1_n_0 ;
  wire \ten[3]_i_2_n_0 ;
  wire [3:0]ten__0;
  wire ten__0_0;
  wire \thou[0]_i_10_n_0 ;
  wire \thou[0]_i_11_n_0 ;
  wire \thou[0]_i_1_n_0 ;
  wire \thou[0]_i_2_n_0 ;
  wire \thou[0]_i_3_n_0 ;
  wire \thou[0]_i_4_n_0 ;
  wire \thou[0]_i_5_n_0 ;
  wire \thou[0]_i_6_n_0 ;
  wire \thou[0]_i_7_n_0 ;
  wire \thou[0]_i_8_n_0 ;
  wire \thou[0]_i_9_n_0 ;
  wire \thou[1]_i_1_n_0 ;
  wire \thou[1]_i_2_n_0 ;
  wire \thou[1]_i_3_n_0 ;
  wire \thou[1]_i_4_n_0 ;
  wire \thou[2]_i_1_n_0 ;
  wire \thou[2]_i_2_n_0 ;
  wire \thou[2]_i_3_n_0 ;
  wire \thou[2]_i_4_n_0 ;
  wire \thou[3]_i_1_n_0 ;
  wire \thou[3]_i_2_n_0 ;
  wire \thou[3]_i_3_n_0 ;
  wire [3:0]thou__0;
  wire thou__0_2;
  wire [3:3]NLW__carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_data1__0_carry__0__0_CO_UNCONNECTED;
  wire [3:2]NLW_data1__0_carry__0__0_O_UNCONNECTED;
  wire [3:3]NLW_data1__10_carry_CO_UNCONNECTED;
  wire [3:1]NLW_data1__10_carry_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_data1__10_carry_i_1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .O(data));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(data),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,1'b1}),
        .O({_carry_n_4,_carry_n_5,_carry_n_6,_carry_n_7}),
        .S({_carry_i_4_n_0,_carry_i_5_n_0,_carry_i_6_n_0,_carry_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}),
        .O({_carry__0_n_4,_carry__0_n_5,_carry__0_n_6,_carry__0_n_7}),
        .S({_carry__0_i_5_n_0,_carry__0_i_6_n_0,_carry__0_i_7_n_0,_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h707F707F0000FFFF)) 
    _carry__0_i_1
       (.I0(ten__0[3]),
        .I1(_carry__0_i_9_n_0),
        .I2(state[1]),
        .I3(data1__0_carry__0_n_5),
        .I4(data1__0_carry_n_5),
        .I5(state[2]),
        .O(_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    _carry__0_i_10
       (.I0(ten__0[1]),
        .I1(ten__0[3]),
        .I2(ten__0[2]),
        .I3(ten__0[0]),
        .O(_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h788700007887FFFF)) 
    _carry__0_i_11
       (.I0(ten__0[2]),
        .I1(ten__0[0]),
        .I2(ten__0[1]),
        .I3(ten__0[3]),
        .I4(state[1]),
        .I5(hund__0[2]),
        .O(_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h909F909F0000FFFF)) 
    _carry__0_i_2
       (.I0(_carry__0_i_9_n_0),
        .I1(ten__0[3]),
        .I2(state[1]),
        .I3(data1__0_carry__0_n_6),
        .I4(data1__0_carry_n_6),
        .I5(state[2]),
        .O(_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h909F909F0000FFFF)) 
    _carry__0_i_3
       (.I0(_carry__0_i_10_n_0),
        .I1(ten__0[2]),
        .I2(state[1]),
        .I3(data1__0_carry__0_n_7),
        .I4(data1__0_carry_n_7),
        .I5(state[2]),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hA3)) 
    _carry__0_i_4
       (.I0(_carry__0_i_11_n_0),
        .I1(thou__0[1]),
        .I2(state[2]),
        .O(_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_5
       (.I0(_carry__0_i_1_n_0),
        .I1(\data_reg_n_0_[7] ),
        .O(_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_6
       (.I0(_carry__0_i_2_n_0),
        .I1(\data_reg_n_0_[6] ),
        .O(_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_7
       (.I0(_carry__0_i_3_n_0),
        .I1(\data_reg_n_0_[5] ),
        .O(_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h4EB1)) 
    _carry__0_i_8
       (.I0(state[2]),
        .I1(thou__0[1]),
        .I2(_carry__0_i_11_n_0),
        .I3(\data_reg_n_0_[4] ),
        .O(_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    _carry__0_i_9
       (.I0(ten__0[0]),
        .I1(ten__0[2]),
        .I2(ten__0[3]),
        .I3(ten__0[1]),
        .O(_carry__0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}),
        .O({_carry__1_n_4,_carry__1_n_5,_carry__1_n_6,_carry__1_n_7}),
        .S({_carry__1_i_5_n_0,_carry__1_i_6_n_0,_carry__1_i_7_n_0,_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    _carry__1_i_1
       (.I0(state[2]),
        .I1(data1__10_carry_n_6),
        .O(_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    _carry__1_i_2
       (.I0(data1__0_carry__0__0_n_6),
        .I1(state[1]),
        .I2(state[2]),
        .I3(data1__10_carry_n_7),
        .O(_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hDDD0)) 
    _carry__1_i_3
       (.I0(data1__0_carry__0__0_n_7),
        .I1(state[1]),
        .I2(state[2]),
        .I3(data1__10_carry_i_1_n_3),
        .O(_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    _carry__1_i_4
       (.I0(data1__0_carry__0_n_4),
        .I1(state[1]),
        .I2(state[2]),
        .I3(data1__0_carry_n_4),
        .O(_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    _carry__1_i_5
       (.I0(data1__10_carry_n_6),
        .I1(state[2]),
        .I2(\data_reg_n_0_[11] ),
        .O(_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h2F22D0DD)) 
    _carry__1_i_6
       (.I0(data1__10_carry_n_7),
        .I1(state[2]),
        .I2(state[1]),
        .I3(data1__0_carry__0__0_n_6),
        .I4(\data_reg_n_0_[10] ),
        .O(_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h1F11E0EE)) 
    _carry__1_i_7
       (.I0(data1__10_carry_i_1_n_3),
        .I1(state[2]),
        .I2(state[1]),
        .I3(data1__0_carry__0__0_n_7),
        .I4(\data_reg_n_0_[9] ),
        .O(_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h2F22D0DD)) 
    _carry__1_i_8
       (.I0(data1__0_carry_n_4),
        .I1(state[2]),
        .I2(state[1]),
        .I3(data1__0_carry__0_n_4),
        .I4(\data_reg_n_0_[8] ),
        .O(_carry__1_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({NLW__carry__2_CO_UNCONNECTED[3],_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,_carry__2_i_1_n_0,_carry__2_i_2_n_0}),
        .O({_carry__2_n_4,_carry__2_n_5,_carry__2_n_6,_carry__2_n_7}),
        .S({_carry__2_i_3_n_0,_carry__2_i_4_n_0,_carry__2_i_5_n_0,_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    _carry__2_i_1
       (.I0(state[2]),
        .I1(data1__10_carry_n_4),
        .O(_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    _carry__2_i_2
       (.I0(state[2]),
        .I1(data1__10_carry_n_5),
        .O(_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__2_i_3
       (.I0(\data_reg_n_0_[15] ),
        .O(_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__2_i_4
       (.I0(\data_reg_n_0_[14] ),
        .O(_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    _carry__2_i_5
       (.I0(data1__10_carry_n_4),
        .I1(state[2]),
        .I2(\data_reg_n_0_[13] ),
        .O(_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    _carry__2_i_6
       (.I0(data1__10_carry_n_5),
        .I1(state[2]),
        .I2(\data_reg_n_0_[12] ),
        .O(_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h909F909F0000FFFF)) 
    _carry_i_1
       (.I0(ten__0[2]),
        .I1(ten__0[0]),
        .I2(state[1]),
        .I3(hund__0[1]),
        .I4(thou__0[0]),
        .I5(state[2]),
        .O(_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h47FF)) 
    _carry_i_2
       (.I0(ten__0[1]),
        .I1(state[1]),
        .I2(hund__0[0]),
        .I3(state[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    _carry_i_3
       (.I0(state[1]),
        .I1(ten__0[0]),
        .I2(state[2]),
        .O(_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_4
       (.I0(_carry_i_1_n_0),
        .I1(\data_reg_n_0_[3] ),
        .O(_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hA80857F7)) 
    _carry_i_5
       (.I0(state[2]),
        .I1(hund__0[0]),
        .I2(state[1]),
        .I3(ten__0[1]),
        .I4(\data_reg_n_0_[2] ),
        .O(_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h807F)) 
    _carry_i_6
       (.I0(state[2]),
        .I1(ten__0[0]),
        .I2(state[1]),
        .I3(\data_reg_n_0_[1] ),
        .O(_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_7
       (.I0(\data_reg_n_0_[0] ),
        .O(_carry_i_7_n_0));
  CARRY4 data1__0_carry
       (.CI(1'b0),
        .CO({data1__0_carry_n_0,data1__0_carry_n_1,data1__0_carry_n_2,data1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data1__0_carry_i_1_n_0,data1__0_carry_i_2_n_0,1'b0}),
        .O({data1__0_carry_n_4,data1__0_carry_n_5,data1__0_carry_n_6,data1__0_carry_n_7}),
        .S({data1__0_carry_i_3_n_0,data1__0_carry_i_4_n_0,data1__0_carry_i_5_n_0,data1__0_carry_i_6_n_0}));
  CARRY4 data1__0_carry__0
       (.CI(1'b0),
        .CO({data1__0_carry__0_n_0,data1__0_carry__0_n_1,data1__0_carry__0_n_2,data1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({hund__0[1:0],data1__0_carry__0_i_1_n_0,1'b0}),
        .O({data1__0_carry__0_n_4,data1__0_carry__0_n_5,data1__0_carry__0_n_6,data1__0_carry__0_n_7}),
        .S({data1__0_carry__0_i_2_n_0,data1__0_carry__0_i_3_n_0,data1__0_carry__0_i_4_n_0,data1__0_carry__0_i_5_n_0}));
  CARRY4 data1__0_carry__0__0
       (.CI(data1__0_carry__0_n_0),
        .CO({NLW_data1__0_carry__0__0_CO_UNCONNECTED[3:1],data1__0_carry__0__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,hund__0[2]}),
        .O({NLW_data1__0_carry__0__0_O_UNCONNECTED[3:2],data1__0_carry__0__0_n_6,data1__0_carry__0__0_n_7}),
        .S({1'b0,1'b0,data1__0_carry__0__0_i_1_n_0,data1__0_carry__0__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data1__0_carry__0__0_i_1
       (.I0(hund__0[3]),
        .O(data1__0_carry__0__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data1__0_carry__0__0_i_2
       (.I0(hund__0[2]),
        .O(data1__0_carry__0__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    data1__0_carry__0_i_1
       (.I0(hund__0[3]),
        .I1(hund__0[0]),
        .O(data1__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data1__0_carry__0_i_2
       (.I0(hund__0[1]),
        .I1(hund__0[3]),
        .O(data1__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data1__0_carry__0_i_3
       (.I0(hund__0[0]),
        .I1(hund__0[2]),
        .O(data1__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    data1__0_carry__0_i_4
       (.I0(hund__0[0]),
        .I1(hund__0[3]),
        .I2(hund__0[1]),
        .O(data1__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data1__0_carry__0_i_5
       (.I0(hund__0[3]),
        .I1(hund__0[0]),
        .O(data1__0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data1__0_carry_i_1
       (.I0(thou__0[3]),
        .I1(thou__0[1]),
        .O(data1__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    data1__0_carry_i_2
       (.I0(thou__0[2]),
        .I1(thou__0[0]),
        .O(data1__0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data1__0_carry_i_3
       (.I0(thou__0[3]),
        .O(data1__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    data1__0_carry_i_4
       (.I0(thou__0[1]),
        .I1(thou__0[3]),
        .I2(thou__0[2]),
        .O(data1__0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    data1__0_carry_i_5
       (.I0(thou__0[0]),
        .I1(thou__0[2]),
        .I2(thou__0[3]),
        .I3(thou__0[1]),
        .O(data1__0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data1__0_carry_i_6
       (.I0(thou__0[0]),
        .I1(thou__0[2]),
        .O(data1__0_carry_i_6_n_0));
  CARRY4 data1__10_carry
       (.CI(1'b0),
        .CO({NLW_data1__10_carry_CO_UNCONNECTED[3],data1__10_carry_n_1,data1__10_carry_n_2,data1__10_carry_n_3}),
        .CYINIT(data1__10_carry_i_1_n_3),
        .DI({1'b0,thou__0[2:0]}),
        .O({data1__10_carry_n_4,data1__10_carry_n_5,data1__10_carry_n_6,data1__10_carry_n_7}),
        .S({data1__10_carry_i_2_n_0,data1__10_carry_i_3_n_0,data1__10_carry_i_4_n_0,data1__10_carry_i_5_n_0}));
  CARRY4 data1__10_carry_i_1
       (.CI(data1__0_carry_n_0),
        .CO({NLW_data1__10_carry_i_1_CO_UNCONNECTED[3:1],data1__10_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data1__10_carry_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    data1__10_carry_i_2
       (.I0(thou__0[3]),
        .O(data1__10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data1__10_carry_i_3
       (.I0(thou__0[2]),
        .O(data1__10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data1__10_carry_i_4
       (.I0(thou__0[1]),
        .O(data1__10_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data1__10_carry_i_5
       (.I0(thou__0[0]),
        .O(data1__10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[0]_i_1 
       (.I0(_carry_n_7),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [0]),
        .O(\data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[10]_i_1 
       (.I0(_carry__1_n_5),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [2]),
        .O(\data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[11]_i_1 
       (.I0(_carry__1_n_4),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [3]),
        .O(\data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[12]_i_1 
       (.I0(_carry__2_n_7),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [4]),
        .O(\data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[13]_i_1 
       (.I0(_carry__2_n_6),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [5]),
        .O(\data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[14]_i_1 
       (.I0(_carry__2_n_5),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [6]),
        .O(\data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[15]_i_1 
       (.I0(_carry__2_n_4),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [7]),
        .O(\data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[1]_i_1 
       (.I0(_carry_n_6),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [1]),
        .O(\data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[2]_i_1 
       (.I0(_carry_n_5),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [2]),
        .O(\data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[3]_i_1 
       (.I0(_carry_n_4),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [3]),
        .O(\data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[4]_i_1 
       (.I0(_carry__0_n_7),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [4]),
        .O(\data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[5]_i_1 
       (.I0(_carry__0_n_6),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [5]),
        .O(\data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[6]_i_1 
       (.I0(_carry__0_n_5),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [6]),
        .O(\data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[7]_i_1 
       (.I0(_carry__0_n_4),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_L_reg[7] [7]),
        .O(\data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[8]_i_1 
       (.I0(_carry__1_n_7),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [0]),
        .O(\data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \data[9]_i_1 
       (.I0(_carry__1_n_6),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\data_H_reg[7] [1]),
        .O(\data[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[0]_i_1_n_0 ),
        .Q(\data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[10]_i_1_n_0 ),
        .Q(\data_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[11]_i_1_n_0 ),
        .Q(\data_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[12]_i_1_n_0 ),
        .Q(\data_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[13]_i_1_n_0 ),
        .Q(\data_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[14]_i_1_n_0 ),
        .Q(\data_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[15]_i_1_n_0 ),
        .Q(\data_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[1]_i_1_n_0 ),
        .Q(\data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[2]_i_1_n_0 ),
        .Q(\data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[3]_i_1_n_0 ),
        .Q(\data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[4]_i_1_n_0 ),
        .Q(\data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[5]_i_1_n_0 ),
        .Q(\data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[6]_i_1_n_0 ),
        .Q(\data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[7]_i_1_n_0 ),
        .Q(\data_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[8]_i_1_n_0 ),
        .Q(\data_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data[9]_i_1_n_0 ),
        .Q(\data_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h40)) 
    hund
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(hund__0_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \hund[0]_i_1 
       (.I0(\hund[0]_i_2_n_0 ),
        .I1(\hund[0]_i_3_n_0 ),
        .I2(\data_reg_n_0_[9] ),
        .I3(\hund[0]_i_4_n_0 ),
        .I4(\hund[0]_i_5_n_0 ),
        .I5(\hund[0]_i_6_n_0 ),
        .O(\hund[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000808)) 
    \hund[0]_i_10 
       (.I0(\data_reg_n_0_[9] ),
        .I1(\data_reg_n_0_[6] ),
        .I2(\data_reg_n_0_[8] ),
        .I3(\data_reg_n_0_[4] ),
        .I4(\data_reg_n_0_[5] ),
        .I5(\data_reg_n_0_[3] ),
        .O(\hund[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \hund[0]_i_11 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[5] ),
        .I2(\data_reg_n_0_[2] ),
        .I3(\data_reg_n_0_[3] ),
        .I4(\data_reg_n_0_[9] ),
        .O(\hund[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \hund[0]_i_12 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[3] ),
        .O(\hund[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAAAAAFAA)) 
    \hund[0]_i_13 
       (.I0(\hund[3]_i_2_n_0 ),
        .I1(\data_reg_n_0_[7] ),
        .I2(\thou[1]_i_2_n_0 ),
        .I3(\data_reg_n_0_[4] ),
        .I4(\data_reg_n_0_[6] ),
        .I5(\data_reg_n_0_[5] ),
        .O(\hund[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \hund[0]_i_14 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[9] ),
        .I2(\data_reg_n_0_[7] ),
        .O(\hund[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0F0C080800000000)) 
    \hund[0]_i_2 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\hund[0]_i_7_n_0 ),
        .I3(\hund[0]_i_8_n_0 ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\data_reg_n_0_[5] ),
        .O(\hund[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444440404040404)) 
    \hund[0]_i_3 
       (.I0(\hund[1]_i_4_n_0 ),
        .I1(\data_reg_n_0_[7] ),
        .I2(\data_reg_n_0_[9] ),
        .I3(\data_reg_n_0_[3] ),
        .I4(\data_reg_n_0_[2] ),
        .I5(\data_reg_n_0_[8] ),
        .O(\hund[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hund[0]_i_4 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[7] ),
        .O(\hund[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEEEFEEEFEE)) 
    \hund[0]_i_5 
       (.I0(\hund[0]_i_9_n_0 ),
        .I1(\hund[0]_i_10_n_0 ),
        .I2(\hund[2]_i_2_n_0 ),
        .I3(\data_reg_n_0_[9] ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\data_reg_n_0_[5] ),
        .O(\hund[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10003020)) 
    \hund[0]_i_6 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[8] ),
        .I2(\data_reg_n_0_[7] ),
        .I3(\hund[0]_i_11_n_0 ),
        .I4(\hund[0]_i_12_n_0 ),
        .I5(\hund[0]_i_13_n_0 ),
        .O(\hund[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \hund[0]_i_7 
       (.I0(\data_reg_n_0_[7] ),
        .I1(\data_reg_n_0_[9] ),
        .O(\hund[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hund[0]_i_8 
       (.I0(\data_reg_n_0_[2] ),
        .I1(\data_reg_n_0_[3] ),
        .O(\hund[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCC0080000000)) 
    \hund[0]_i_9 
       (.I0(\hund[0]_i_4_n_0 ),
        .I1(\ten[0]_i_5_n_0 ),
        .I2(\data_reg_n_0_[4] ),
        .I3(\data_reg_n_0_[5] ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\hund[0]_i_14_n_0 ),
        .O(\hund[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0202020E)) 
    \hund[1]_i_1 
       (.I0(\hund[1]_i_2_n_0 ),
        .I1(\data_reg_n_0_[8] ),
        .I2(\hund[3]_i_2_n_0 ),
        .I3(\data_reg_n_0_[5] ),
        .I4(\hund[2]_i_2_n_0 ),
        .I5(\hund[1]_i_3_n_0 ),
        .O(\hund[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \hund[1]_i_2 
       (.I0(\data_reg_n_0_[3] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[5] ),
        .I3(\data_reg_n_0_[7] ),
        .I4(\data_reg_n_0_[6] ),
        .O(\hund[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000005FCC00)) 
    \hund[1]_i_3 
       (.I0(\hund[1]_i_4_n_0 ),
        .I1(\hund[1]_i_5_n_0 ),
        .I2(\data_reg_n_0_[7] ),
        .I3(\data_reg_n_0_[9] ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\hund[3]_i_2_n_0 ),
        .O(\hund[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \hund[1]_i_4 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[6] ),
        .O(\hund[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFF8F0F0)) 
    \hund[1]_i_5 
       (.I0(\data_reg_n_0_[3] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[7] ),
        .I3(\data_reg_n_0_[5] ),
        .I4(\data_reg_n_0_[6] ),
        .O(\hund[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F100FF00F00000)) 
    \hund[2]_i_1 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\hund[2]_i_2_n_0 ),
        .I2(\hund[2]_i_3_n_0 ),
        .I3(\hund[3]_i_2_n_0 ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\data_reg_n_0_[9] ),
        .O(\hund[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \hund[2]_i_2 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[7] ),
        .O(\hund[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \hund[2]_i_3 
       (.I0(\data_reg_n_0_[9] ),
        .I1(\data_reg_n_0_[7] ),
        .I2(\data_reg_n_0_[6] ),
        .I3(\data_reg_n_0_[4] ),
        .I4(\data_reg_n_0_[5] ),
        .O(\hund[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0F0FEF0F0F0)) 
    \hund[3]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(\data_reg_n_0_[6] ),
        .I2(\hund[3]_i_2_n_0 ),
        .I3(\data_reg_n_0_[8] ),
        .I4(\data_reg_n_0_[9] ),
        .I5(\data_reg_n_0_[5] ),
        .O(\hund[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \hund[3]_i_2 
       (.I0(\data_reg_n_0_[10] ),
        .I1(\data_reg_n_0_[15] ),
        .I2(\data_reg_n_0_[14] ),
        .I3(\data_reg_n_0_[13] ),
        .I4(\data_reg_n_0_[12] ),
        .I5(\data_reg_n_0_[11] ),
        .O(\hund[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \hund_reg[0] 
       (.C(CLK),
        .CE(hund__0_1),
        .CLR(AR),
        .D(\hund[0]_i_1_n_0 ),
        .Q(hund__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hund_reg[1] 
       (.C(CLK),
        .CE(hund__0_1),
        .CLR(AR),
        .D(\hund[1]_i_1_n_0 ),
        .Q(hund__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hund_reg[2] 
       (.C(CLK),
        .CE(hund__0_1),
        .CLR(AR),
        .D(\hund[2]_i_1_n_0 ),
        .Q(hund__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hund_reg[3] 
       (.C(CLK),
        .CE(hund__0_1),
        .CLR(AR),
        .D(\hund[3]_i_1_n_0 ),
        .Q(hund__0[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \one[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\one[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \one_reg[0] 
       (.C(CLK),
        .CE(\one[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_reg_n_0_[0] ),
        .Q(one[0]));
  FDCE #(
    .INIT(1'b0)) 
    \one_reg[1] 
       (.C(CLK),
        .CE(\one[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_reg_n_0_[1] ),
        .Q(one[1]));
  FDCE #(
    .INIT(1'b0)) 
    \one_reg[2] 
       (.C(CLK),
        .CE(\one[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_reg_n_0_[2] ),
        .Q(one[2]));
  FDCE #(
    .INIT(1'b0)) 
    \one_reg[3] 
       (.C(CLK),
        .CE(\one[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_reg_n_0_[3] ),
        .Q(one[3]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(hund__0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(hund__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(hund__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(hund__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(thou__0[0]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(thou__0[1]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(thou__0[2]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \outH_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(thou__0[3]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(one[0]),
        .Q(\outL[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(one[1]),
        .Q(\outL[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(one[2]),
        .Q(\outL[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(one[3]),
        .Q(\outL[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ten__0[0]),
        .Q(\outL[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ten__0[1]),
        .Q(\outL[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ten__0[2]),
        .Q(\outL[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \outL_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ten__0[3]),
        .Q(\outL[7] [7]));
  LUT3 #(
    .INIT(8'h40)) 
    ten
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(ten__0_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \ten[0]_i_1 
       (.I0(\ten[0]_i_2_n_0 ),
        .I1(\ten[0]_i_3_n_0 ),
        .I2(\ten[0]_i_4_n_0 ),
        .I3(\ten[0]_i_5_n_0 ),
        .I4(\ten[0]_i_6_n_0 ),
        .I5(\ten[2]_i_3_n_0 ),
        .O(\ten[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAB00CCCCCC00)) 
    \ten[0]_i_2 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[5] ),
        .I2(\data_reg_n_0_[4] ),
        .I3(\data_reg_n_0_[2] ),
        .I4(\data_reg_n_0_[1] ),
        .I5(\data_reg_n_0_[3] ),
        .O(\ten[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEEFFCCCCCCCC)) 
    \ten[0]_i_3 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[7] ),
        .I2(\data_reg_n_0_[2] ),
        .I3(\data_reg_n_0_[3] ),
        .I4(\data_reg_n_0_[4] ),
        .I5(\data_reg_n_0_[5] ),
        .O(\ten[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    \ten[0]_i_4 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[6] ),
        .I2(\data_reg_n_0_[3] ),
        .I3(\data_reg_n_0_[1] ),
        .I4(\data_reg_n_0_[2] ),
        .O(\ten[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ten[0]_i_5 
       (.I0(\data_reg_n_0_[2] ),
        .I1(\data_reg_n_0_[3] ),
        .O(\ten[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ten[0]_i_6 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[6] ),
        .I2(\data_reg_n_0_[5] ),
        .O(\ten[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00000004)) 
    \ten[1]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(\data_reg_n_0_[6] ),
        .I2(\ten[1]_i_2_n_0 ),
        .I3(\ten[3]_i_2_n_0 ),
        .I4(\data_reg_n_0_[9] ),
        .I5(\ten[1]_i_3_n_0 ),
        .O(\ten[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ten[1]_i_2 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[5] ),
        .O(\ten[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C642)) 
    \ten[1]_i_3 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[3] ),
        .I3(\data_reg_n_0_[2] ),
        .I4(\data_reg_n_0_[7] ),
        .I5(\data_reg_n_0_[6] ),
        .O(\ten[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABAAABAAAAAA)) 
    \ten[2]_i_1 
       (.I0(\ten[2]_i_2_n_0 ),
        .I1(\ten[2]_i_3_n_0 ),
        .I2(\hund[2]_i_2_n_0 ),
        .I3(\data_reg_n_0_[5] ),
        .I4(\data_reg_n_0_[4] ),
        .I5(\data_reg_n_0_[3] ),
        .O(\ten[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ten[2]_i_2 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[5] ),
        .I2(\data_reg_n_0_[6] ),
        .I3(\data_reg_n_0_[9] ),
        .I4(\data_reg_n_0_[7] ),
        .I5(\ten[3]_i_2_n_0 ),
        .O(\ten[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ten[2]_i_3 
       (.I0(\data_reg_n_0_[8] ),
        .I1(\data_reg_n_0_[10] ),
        .I2(\thou[3]_i_3_n_0 ),
        .I3(\data_reg_n_0_[12] ),
        .I4(\data_reg_n_0_[11] ),
        .I5(\data_reg_n_0_[9] ),
        .O(\ten[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \ten[3]_i_1 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[6] ),
        .I3(\data_reg_n_0_[7] ),
        .I4(\data_reg_n_0_[9] ),
        .I5(\ten[3]_i_2_n_0 ),
        .O(\ten[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ten[3]_i_2 
       (.I0(\data_reg_n_0_[11] ),
        .I1(\data_reg_n_0_[12] ),
        .I2(\thou[3]_i_3_n_0 ),
        .I3(\data_reg_n_0_[10] ),
        .I4(\data_reg_n_0_[8] ),
        .O(\ten[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ten_reg[0] 
       (.C(CLK),
        .CE(ten__0_0),
        .CLR(AR),
        .D(\ten[0]_i_1_n_0 ),
        .Q(ten__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ten_reg[1] 
       (.C(CLK),
        .CE(ten__0_0),
        .CLR(AR),
        .D(\ten[1]_i_1_n_0 ),
        .Q(ten__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ten_reg[2] 
       (.C(CLK),
        .CE(ten__0_0),
        .CLR(AR),
        .D(\ten[2]_i_1_n_0 ),
        .Q(ten__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ten_reg[3] 
       (.C(CLK),
        .CE(ten__0_0),
        .CLR(AR),
        .D(\ten[3]_i_1_n_0 ),
        .Q(ten__0[3]));
  LUT3 #(
    .INIT(8'h02)) 
    thou
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(thou__0_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \thou[0]_i_1 
       (.I0(\thou[0]_i_2_n_0 ),
        .I1(\thou[0]_i_3_n_0 ),
        .I2(\data_reg_n_0_[10] ),
        .I3(\thou[1]_i_4_n_0 ),
        .I4(\thou[0]_i_4_n_0 ),
        .I5(\thou[0]_i_5_n_0 ),
        .O(\thou[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \thou[0]_i_10 
       (.I0(\data_reg_n_0_[3] ),
        .I1(\data_reg_n_0_[4] ),
        .O(\thou[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \thou[0]_i_11 
       (.I0(\data_reg_n_0_[11] ),
        .I1(\data_reg_n_0_[12] ),
        .O(\thou[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h002200000022F000)) 
    \thou[0]_i_2 
       (.I0(\thou[0]_i_6_n_0 ),
        .I1(\thou[1]_i_2_n_0 ),
        .I2(\thou[0]_i_7_n_0 ),
        .I3(\data_reg_n_0_[10] ),
        .I4(\data_reg_n_0_[12] ),
        .I5(\data_reg_n_0_[11] ),
        .O(\thou[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \thou[0]_i_3 
       (.I0(\thou[0]_i_8_n_0 ),
        .I1(\data_reg_n_0_[10] ),
        .I2(\thou[1]_i_2_n_0 ),
        .I3(\hund[0]_i_4_n_0 ),
        .I4(\data_reg_n_0_[15] ),
        .I5(\data_reg_n_0_[14] ),
        .O(\thou[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000C10000000)) 
    \thou[0]_i_4 
       (.I0(\thou[1]_i_2_n_0 ),
        .I1(\data_reg_n_0_[10] ),
        .I2(\data_reg_n_0_[7] ),
        .I3(\data_reg_n_0_[11] ),
        .I4(\data_reg_n_0_[3] ),
        .I5(\thou[0]_i_9_n_0 ),
        .O(\thou[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F800000000)) 
    \thou[0]_i_5 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\thou[0]_i_10_n_0 ),
        .I2(\thou[0]_i_11_n_0 ),
        .I3(\thou[1]_i_2_n_0 ),
        .I4(\hund[2]_i_2_n_0 ),
        .I5(\data_reg_n_0_[13] ),
        .O(\thou[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFE80FF00FE00)) 
    \thou[0]_i_6 
       (.I0(\data_reg_n_0_[11] ),
        .I1(\data_reg_n_0_[3] ),
        .I2(\data_reg_n_0_[4] ),
        .I3(\data_reg_n_0_[7] ),
        .I4(\data_reg_n_0_[5] ),
        .I5(\data_reg_n_0_[6] ),
        .O(\thou[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \thou[0]_i_7 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[6] ),
        .O(\thou[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \thou[0]_i_8 
       (.I0(\data_reg_n_0_[5] ),
        .I1(\data_reg_n_0_[3] ),
        .I2(\data_reg_n_0_[4] ),
        .I3(\data_reg_n_0_[12] ),
        .I4(\data_reg_n_0_[11] ),
        .O(\thou[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \thou[0]_i_9 
       (.I0(\data_reg_n_0_[4] ),
        .I1(\data_reg_n_0_[5] ),
        .O(\thou[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4454444404140404)) 
    \thou[1]_i_1 
       (.I0(\thou[3]_i_3_n_0 ),
        .I1(\data_reg_n_0_[11] ),
        .I2(\data_reg_n_0_[10] ),
        .I3(\thou[1]_i_2_n_0 ),
        .I4(\thou[1]_i_3_n_0 ),
        .I5(\thou[1]_i_4_n_0 ),
        .O(\thou[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \thou[1]_i_2 
       (.I0(\data_reg_n_0_[8] ),
        .I1(\data_reg_n_0_[9] ),
        .O(\thou[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEAA8000)) 
    \thou[1]_i_3 
       (.I0(\data_reg_n_0_[12] ),
        .I1(\data_reg_n_0_[4] ),
        .I2(\data_reg_n_0_[5] ),
        .I3(\data_reg_n_0_[6] ),
        .I4(\data_reg_n_0_[7] ),
        .O(\thou[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h015FFFFFFFFFFFFF)) 
    \thou[1]_i_4 
       (.I0(\data_reg_n_0_[12] ),
        .I1(\data_reg_n_0_[5] ),
        .I2(\data_reg_n_0_[6] ),
        .I3(\data_reg_n_0_[7] ),
        .I4(\data_reg_n_0_[8] ),
        .I5(\data_reg_n_0_[9] ),
        .O(\thou[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF00440044)) 
    \thou[2]_i_1 
       (.I0(\thou[2]_i_2_n_0 ),
        .I1(\thou[2]_i_3_n_0 ),
        .I2(\thou[2]_i_4_n_0 ),
        .I3(\thou[3]_i_3_n_0 ),
        .I4(\data_reg_n_0_[10] ),
        .I5(\data_reg_n_0_[12] ),
        .O(\thou[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \thou[2]_i_2 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[5] ),
        .I2(\data_reg_n_0_[7] ),
        .O(\thou[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \thou[2]_i_3 
       (.I0(\data_reg_n_0_[10] ),
        .I1(\data_reg_n_0_[11] ),
        .I2(\data_reg_n_0_[12] ),
        .I3(\data_reg_n_0_[9] ),
        .I4(\data_reg_n_0_[8] ),
        .O(\thou[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    \thou[2]_i_4 
       (.I0(\data_reg_n_0_[6] ),
        .I1(\data_reg_n_0_[7] ),
        .I2(\data_reg_n_0_[8] ),
        .I3(\data_reg_n_0_[9] ),
        .I4(\data_reg_n_0_[11] ),
        .O(\thou[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \thou[3]_i_1 
       (.I0(\thou[3]_i_2_n_0 ),
        .I1(\data_reg_n_0_[11] ),
        .I2(\data_reg_n_0_[10] ),
        .I3(\data_reg_n_0_[12] ),
        .I4(\thou[3]_i_3_n_0 ),
        .O(\thou[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \thou[3]_i_2 
       (.I0(\data_reg_n_0_[9] ),
        .I1(\data_reg_n_0_[8] ),
        .I2(\data_reg_n_0_[7] ),
        .I3(\data_reg_n_0_[6] ),
        .O(\thou[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \thou[3]_i_3 
       (.I0(\data_reg_n_0_[15] ),
        .I1(\data_reg_n_0_[14] ),
        .I2(\data_reg_n_0_[13] ),
        .O(\thou[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \thou_reg[0] 
       (.C(CLK),
        .CE(thou__0_2),
        .CLR(AR),
        .D(\thou[0]_i_1_n_0 ),
        .Q(thou__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \thou_reg[1] 
       (.C(CLK),
        .CE(thou__0_2),
        .CLR(AR),
        .D(\thou[1]_i_1_n_0 ),
        .Q(thou__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \thou_reg[2] 
       (.C(CLK),
        .CE(thou__0_2),
        .CLR(AR),
        .D(\thou[2]_i_1_n_0 ),
        .Q(thou__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \thou_reg[3] 
       (.C(CLK),
        .CE(thou__0_2),
        .CLR(AR),
        .D(\thou[3]_i_1_n_0 ),
        .Q(thou__0[3]));
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
