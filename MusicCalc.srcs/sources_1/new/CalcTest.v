`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/27 15:25:50
// Design Name: 
// Module Name: CalcTest
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


module CalcTest(
    input wire        clk,
    input  wire       rst,
    input  wire [7:0] SRCH, SRCL, DSTH, DSTL,
    input  wire [2:0] ALU_OP,
    input  wire       finish,
    input  wire       OP_flag,
    input  wire       num_flag,
    input  wire [1:0] Nzero,
    
//    output wire [2:0] state,
//    output wire [15:0] SRC, DST, result,
//    output wire       OP_changed,
//    output wire       sign,
//    output wire [2:0]  OP,
//    output wire [7:0] S,
//    output wire [7:0] data_a, data_b,
    
    output wire [7:0] outH, outL,
    output wire       out_sign
    );
    
     wire       carry_out;
     wire [7:0] S;
     wire [7:0] data_a, data_b;
     wire [2:0] CS;
     wire [7:0] data_H, data_L;
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
    
//    .state(state),
//    .SRC(SRC), .DST(DST),.result(result),
//    .OP_changed(OP_changed),
//    .sign(sign),
//    .OP(OP),
    
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
    
endmodule
