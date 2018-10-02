`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/28 22:41:26
// Design Name: 
// Module Name: Calc
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


module Calc(
   input wire        clk_100MHz,
   input  wire       rst,
   input  wire       V1,V2,V3,V4,
//    output wire [2:0] state,
//    output wire [15:0] SRC, DST, result,
//    output wire       OP_changed,
//    output wire       sign,
//    output wire [2:0]  OP,
//    output wire [7:0] S,
//    output wire [7:0] data_a, data_b,
//   output wire         mark,
//   output wire [1:0]   Nzero,
//    output wire [15:0] DST,
//    output wire [7:0] DSTH,
//    output wire [7:0] DSTL,
   output wire [2:0]   Calc_state,
   output wire         out_less,
   output wire         out_zero,
   output wire         carry_flag,

   output wire         H1,H2,H3,H4,
   output wire [7:0]   data_out,
   output wire [3:0]   seg_sel  ,
   output wire         out_sign
   );
   
    wire [7:0] SRCH, SRCL;
    wire [7:0] DSTH, DSTL;
    wire       carry_out;
    wire [7:0] S;
    wire [7:0] data_a, data_b;
    wire [2:0] CS;
    wire [7:0] data_H, data_L;
    wire [7:0] outH, outL;
    wire [2:0] ALU_OP;
    wire       finish; 
    wire       OP_flag;
    wire       num_flag;
    wire [1:0] Nzero; 
//    wire       rst_n;
    wire       clk;
    wire       select_state;
 
FreqDiv FreqDiv
(
    .rst(rst),
    .clk(clk_100MHz),    
    .Freq_250Hz(clk)
);


key_scan key_scan
(
    .CLK(clk),
    .RESET(rst),
    .V1(V1),.V2(V2),.V3(V3),.V4(V4),
    
//    output wire [1:0]  state(),
//    output wire [15:0] input_val(),
//    output wire [3:0]   num_val(),
//    output wire [11:0] temp(),
    .Nzero(Nzero), 
    .select_state(select_state), 

    .H1(H1),.H2(H2),.H3(H3),.H4(H4),
    .SRCH(SRCH),
    .SRCL(SRCL),
    .DSTH(DSTH),
    .DSTL(DSTL),
    .ALU_OP(ALU_OP),
    .finish(finish),
    .num_flag(num_flag),
    .OP_flag(OP_flag)
);

    
CoreCircuit Core
(
   .clk(clk),
   .rst(rst ),
   .SRCH( SRCH), .SRCL( SRCL), .DSTH(DSTH ), .DSTL(DSTL ),
   .ALU_OP(ALU_OP),
   .finish(finish),
   .OP_flag(OP_flag),
   .num_flag(num_flag),
   .S(S),
   .carry_out(carry_out),
   .Nzero(Nzero),
   .select_state(select_state), 
   
//    .state(state),
//    .SRC(SRC), .DST(DST),.result(result),
//    .OP_changed(OP_changed),
//    .sign(sign),
//    .OP(OP),
//    .mark(mark),
//    .DST(DST),
    .state(Calc_state),
    .out_less(out_less),
    .out_zero(out_zero),
    .carry_flag(carry_flag),
   
   .data_H(data_H), .data_L(data_L), .data_a(data_a), .data_b(data_b),
   .CS(CS),
   .out_sign(out_sign),
   .carry_in(carry_in)
);
   
ALU ALU_Test
(
   .CS(CS),
   .data_a(data_a),
   .data_b(data_b),
   .carry_in(carry_in),
   .S(S),
   .zero(zero),
   .carry_out(carry_out)
);   


Hex2Dec Hex2Dec
(
   .clk(clk),
   .rst(rst),
   .data_H(data_H), 
   .data_L(data_L),
   
   .outH(outH),
   .outL(outL)  
);

seg seg
(
    .CLK_seg(clk),
    .data_inH(outH), 
    .data_inL(outL),
    .Nzero(Nzero),
    
    .data_out(data_out),
    .seg_sel(seg_sel)
);
   
endmodule
