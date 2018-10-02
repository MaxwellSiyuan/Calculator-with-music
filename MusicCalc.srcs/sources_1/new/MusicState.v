`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 14:49:57
// Design Name: 
// Module Name: MusicState
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


module MusicState(
    input wire       clk,
    input wire       rst,
    input wire       MusicCol,
    input wire       out_sign,
    input wire [2:0] Calc_state,
    input wire       music_finish,
    
    output reg [1:0] state
);
    
    parameter STOP = 2'b00 ,POSE = 2'b01 ,NEGA = 2'b10, FINISH = 2'b11;
    parameter RESULT = 6;
    
    
always@(posedge clk , posedge rst)
    begin
    if(rst)
        begin
            state <= FINISH;
        end
    else
        case(state)
            STOP:
                begin
                    if(MusicCol == 0 && Calc_state == RESULT)
                        if(out_sign == 0)
                            state <= POSE;
                        else if(out_sign == 1)
                            state <= NEGA;  
                        else
                            state <= STOP;    
                     else
                        state <= FINISH;  
                end
            POSE:
                begin   
                    if(music_finish==0 && MusicCol == 0 && Calc_state == RESULT)
                        begin
                            if(out_sign == 1)
                                state <= NEGA;
                            else
                                state <= POSE;
                        end
                    else if( Calc_state == RESULT )
                        state <= FINISH;
                    else    
                        state <= STOP;
                end
            NEGA:
                   begin   
                       if(music_finish==0 && MusicCol == 0 && Calc_state == RESULT)
                           state <= NEGA;
                       else if( Calc_state == RESULT )
                           state <= FINISH;
                       else    
                           state <= STOP;
                  end
            FINISH:
                    begin   
                         if( Calc_state == RESULT)
                             state <= FINISH;
                         else    
                             state <= STOP;
                    end
            default:
                    state <= FINISH;
        endcase
    end
endmodule
