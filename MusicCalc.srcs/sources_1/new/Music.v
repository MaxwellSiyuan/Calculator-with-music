`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 13:20:43
// Design Name: 
// Module Name: Music
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


module Music(
    input wire clk_100MHz,
//    input wire clk,
    input wire rst,
    input wire MusicCol,
    input wire out_sign,
    input wire [2:0] Calc_state,
    
//    output wire        music_finish,
//    output wire [1:0]  state,
//    output wire [7:0]  note,
//    output wire [5:0]  music_cnt,
//    output wire        restart,
//    output wire        finish_mark,
    
    output wire VCC,
    output wire GND,
//    output wire GND1
    output wire music
);
    assign VCC = 1'b1;
    assign GND = 1'b0;
//    assign GND1 = 1'b0;
//    wire        music;
    wire        clk;
    wire [1:0]  state;
    wire [17:0] cnt_val;
    wire [7:0]  note;
    wire        music_finish;
    wire [5:0]  music_cnt;
 
FreqDiv FreqDiv
(
    .rst(rst),
    .clk(clk_100MHz),    
    .Freq_250Hz(clk)
);

    
MusicGen MusicGen
(
    .clk_100MHz(clk_100MHz),
    .rst(rst),
    .state(state),
    .cnt_val(cnt_val),
    
    .music(music)
);    
    
MusicCnt MusicCnt
(
    .clk(clk),
    .rst(rst),
    .state(state),
    .Calc_state(Calc_state),
    
    .music_cnt(music_cnt),
	.music_finish(music_finish)
);    
 
MusicSheet MusicSheet
(
    .state(state),
    .music_cnt(music_cnt),
    
    .note(note)
); 
    
MusicState MusicState
(
    .clk(clk),
    .rst(rst),
    .MusicCol(MusicCol),
    .out_sign(out_sign),
    .Calc_state(Calc_state),
    .music_finish(music_finish),
    
//    .restart(restart),
//    .finish_mark(finish_mark),
    
    .state(state)
);    
    
 NoteTrans NoteTrans
 (
    .note(note),
    .cnt_val(cnt_val)
);   

    
    
endmodule
