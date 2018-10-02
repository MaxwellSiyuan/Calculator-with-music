`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 14:32:16
// Design Name: 
// Module Name: MusicGen
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


module MusicGen(
    input wire         clk_100MHz,
    input wire         rst,
    input wire  [1:0] state,
    input wire  [17:0] cnt_val,
    
    output reg         music
    );
    parameter STOP = 2'b00;
    reg   [17:0] cnt;
    
always @ (posedge clk_100MHz ,posedge rst )
    begin    
        if(rst)
			begin
				cnt <= 18'b0;
				music <= 1'b1;
			end
		else if(state == STOP || cnt_val == 0)
			music <= 1'b1;
        else if( cnt >= cnt_val-5000 )
			begin
				music <= ~music;
				cnt <= 18'b0;
			end
        else
            cnt <= cnt + 1;
    end  
 
endmodule
