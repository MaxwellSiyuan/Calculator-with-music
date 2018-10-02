`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 19:02:41
// Design Name: 
// Module Name: MusicCnt_tb
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


module MusicCnt_tb;
    reg        clk;
    reg        rst;
    reg[1:0]   state;
    
    wire [5:0] music_cnt;
	wire       music_finish;
	
 MusicCnt MusicCnt
(
    .clk(clk),
    .rst(rst),
    .state(state),
    
    .music_cnt(music_cnt),
    .music_finish(music_finish)
);
initial begin
    clk = 0;
    rst = 0;
    state = 2'b01;


end

always #50 clk = ~clk;

endmodule
