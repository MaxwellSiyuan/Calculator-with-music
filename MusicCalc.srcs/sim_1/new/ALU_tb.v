`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/25 18:13:31
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
    reg  [2:0] CS;
    reg  [7:0] data_a ;
    reg  [7:0] data_b ;
    reg        carry_in;
    wire [7:0] S;
    wire       zero;
    wire       carry_out;
//    wire [8:0] temp;

ALU  ALU_TB
(  
    .CS(CS),
    .data_a(data_a) ,
    .data_b(data_b) ,
    .carry_in(carry_in),
//    .temp(temp),
    .S(S),
    .zero(zero),
    .carry_out(carry_out)

);

parameter ADD = 3'b000, MIN = 3'b001, AND = 3'b010, OR = 3'b011, COMP = 3'b100;

initial begin
    CS = 3'b0;
    data_a = 8'b0 ;
    data_b = 8'b0 ;
    carry_in = 1'b0; 
    #50
    
    CS = AND;
    data_a = 8'hff ;
    data_b = 8'h00 ;
    #200
    
    //34+56（有进位）
    CS = ADD;
    data_a = 34 ;
    data_b = 56 ;
    carry_in = 1;  
    #200
    
    //300+400（无进位）
    CS = ADD;
    data_a = 100 ;
    data_b = 200 ;
    carry_in = 0;  
    #200
    
    //34-56（有借位）
    CS = MIN;
    data_a = 34 ;
    data_b = 56 ;
    carry_in = 0; 
    #200
    
    //56-34（无借位）
    CS = MIN;
    data_a = 56 ;
    data_b = 34 ;
    carry_in = 1; 
    #200
  
    //78-78（无借位）
    CS = MIN;
    data_a = 78 ;
    data_b = 78 ;
    carry_in = 1; 
    #200
    
    //0101_0101 & 1010_0101
    CS = AND;
    data_a = 8'b0101_0101 ;
    data_b = 8'b1010_0101 ;
    #200
    
    //0101_0101 | 1010_0101
    CS = OR;
    data_a = 8'b0101_0101 ;
    data_b = 8'b1010_0101 ;
    #200
    
    //56 vs 34（无借位）
    CS = COMP;
    data_a = 56 ;
    data_b = 34 ;
    carry_in = 1; 
    #200
    
    //56 vs 56（无借位）
    CS = COMP;
    data_a = 56 ;
    data_b = 56 ;
    carry_in = 1; 
    #200
   
   //34 vs 56（无借位）
    CS = COMP;
    data_a = 34 ;
    data_b = 56 ;
    carry_in = 1; 
   
   
end



endmodule
