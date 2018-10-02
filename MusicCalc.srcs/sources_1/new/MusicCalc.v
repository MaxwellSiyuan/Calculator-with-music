`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 23:32:31
// Design Name: 
// Module Name: MusicCalc
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


module MusicCalc(
    input  wire         clk_100MHz,
    input  wire         rst,
    input  wire         V1,V2,V3,V4,
    input  wire         MusicCol,   
    
//    output wire [1:0]  state,
    
    output wire         out_less,
    output wire         out_zero,
    output wire         carry_flag,
    output wire         H1,H2,H3,H4,
    output wire [7:0]   data_out,
    output wire [3:0]   seg_sel  ,
    output wire         out_sign,
    output wire         VCC,
    output wire         GND,    
    output wire         music
);
    
    wire [2:0] Calc_state;
    
Calc Calc
(
    .clk_100MHz(clk_100MHz),
    .rst(rst),
    .V1(V1),.V2(V2),.V3(V3),.V4(V4),
    
    .Calc_state(Calc_state),
    .out_less(out_less),
    .out_zero(out_zero),
    .carry_flag(carry_flag),
    
    .H1(H1),.H2(H2),.H3(H3),.H4(H4),
    .data_out(data_out),
    .seg_sel(seg_sel),
    .out_sign(out_sign)
);    
    
Music Music
(
   .clk_100MHz(clk_100MHz),
   .rst(rst),
   .MusicCol(MusicCol),
   .out_sign(out_sign),
   .Calc_state(Calc_state),
   
//   .state(state),
   
   .VCC(VCC),
   .GND(GND),
   .music(music)
);    
    
    
endmodule
