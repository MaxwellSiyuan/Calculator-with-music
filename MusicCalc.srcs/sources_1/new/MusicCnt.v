`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 17:15:13
// Design Name: 
// Module Name: MusicCnt
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


module MusicCnt(
    input wire       clk,
    input wire       rst,
    input wire [1:0] state,
    input wire [2:0] Calc_state,
    
    output reg [5:0] music_cnt,
    //    output reg [7:0] note,
	output reg       music_finish
);

    parameter RESULT = 6;
    parameter section = 63;
    parameter STOP = 2'b00 ,POSE = 2'b01 ,NEGA = 2'b10, FINISH = 2'b11;
    reg [7:0] cnt;
    

always @ (posedge clk ,posedge rst )
    begin    
        if(rst)
			begin
				cnt <= 8'b0;
				music_cnt <= 6'b0;
//				note <= 8'b0;
				music_finish <= 1'b0;
			end
		else 
            begin
                if(Calc_state!=RESULT)
                    music_finish <= 1'b0;
                    
                if(state==STOP||state==FINISH)
                    begin
                        cnt <= 8'b0;
                        music_cnt <= 6'b0;
//                        music_finish <= 1'b1;
                    end
                else if( cnt >= section )
                    begin                   
                        music_cnt <= music_cnt + 1;
                        cnt <= 8'b0;
                        music_finish <= 1'b0;
                    end
				else if(music_cnt >= 63)
				    begin
					   music_finish <= 1'b1;
					   music_cnt <= 0;
					end
                else
                    cnt <= cnt + 1;                                                            
            end
    end  
endmodule