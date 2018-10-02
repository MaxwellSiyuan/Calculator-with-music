`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 14:18:06
// Design Name: 
// Module Name: NoteTrans
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


module NoteTrans(
    input wire [7:0]  note,
    output reg [17:0] cnt_val
    );
    
always@(note)
    case(note)
		8'h11: cnt_val = 191109;
		8'h12: cnt_val = 170258;
		8'h13: cnt_val = 151684;
		8'h14: cnt_val = 143171;
		8'h15: cnt_val = 127553;
		8'h16: cnt_val = 113635;
		8'h17: cnt_val = 101238;
		
		8'h21:cnt_val =  93940;   
		8'h22:cnt_val =  85130;   
		8'h23:cnt_val =  75843;   
		8'h24:cnt_val =  71585;   
		8'h25:cnt_val =  63775;   
		8'h26:cnt_val =  56817;   
		8'h27:cnt_val =  50619;   
    
		8'h31:cnt_val = 47777;   
		8'h32:cnt_val = 42565;   
		8'h33:cnt_val = 37921;   
		8'h34:cnt_val = 35792;   
		8'h35:cnt_val = 31887;   
		8'h36:cnt_val = 28408;   
		8'h37:cnt_val = 25309;   
		default:
		      cnt_val = 0;
    endcase
endmodule
