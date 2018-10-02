`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/24 13:00:00
// Design Name: 
// Module Name: ALU
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


module ALU(
    input  wire [2:0] CS,
    input  wire [7:0] data_a ,
    input  wire [7:0] data_b ,
    input  wire       carry_in,
//    output reg  [8:0] temp ,
    output reg  [7:0] S ,
    output reg        zero,
    output reg        carry_out
    );
       
    parameter ADD = 3'b000, MIN = 3'b001, AND = 3'b010, OR = 3'b011, COMP = 3'b100;
    reg  [8:0] temp;
      
always@ *
    begin
        case(CS)
            ADD:
                begin
					temp = data_a + data_b + carry_in;
					carry_out = temp[8];
					S[7:0] = temp[7:0];
                end  
            MIN:
                begin
					temp = data_a + (~data_b) + carry_in ;
                    carry_out = ~temp[8];
					S[7:0] = temp[7:0];
                end  
            AND:
                begin
                    S = data_a & data_b;
					carry_out = 0;
                end  
            OR:
                begin
                    S = data_a | data_b;
					carry_out = 0;
                end  
            COMP:
                begin
					temp = data_a + (~data_b) + carry_in ;
                    carry_out = ~temp[8];
					S[7:0] = temp[7:0]; 
                end  
            default:
                begin             
                    carry_out = 1'b0;
                    S = 8'b0;
                end  
        endcase
		
		if(S == 8'b0)
			zero = 1;
		else
			zero = 0;
    end      
endmodule
