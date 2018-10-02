`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/28 18:40:15
// Design Name: 
// Module Name: Hex2Dec_tb
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


module Hex2Dec_tb;
    reg        clk;
    reg        rst;
    reg [7:0]  data_H; 
    reg [7:0]  data_L;
    
    wire [7:0] outH;
    wire [7:0] outL ; 
    
Hex2Dec Hex2Dec
(
  .clk(clk),    
  .rst(rst),    
  .data_H(data_H), 
  .data_L(data_L), 
         
  .outH(outH),   
  .outL(outL)
);    

initial begin
    clk = 0;
    rst = 0;
    {data_H,data_L} =0;
    
    #100000 {data_H,data_L} = 1;
    #100000 {data_H,data_L} = 23;
    #100000 {data_H,data_L} = 456;
    #100000 {data_H,data_L} = 7890;

      
end
always #500 clk = ~clk;
endmodule    

