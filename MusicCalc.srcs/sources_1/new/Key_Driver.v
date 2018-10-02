`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/26 10:22:08
// Design Name: 
// Module Name: Key_Driver
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


module Key_Driver(
    input   wire        clk, //250Hz
    input   wire        rst,
    input   wire        V1,V2,V3,V4,
    output  reg         H1,H2,H3,H4,
    output  reg [3:0]   key_val,
    output  reg         key_flag
);
wire rst_n = ~rst;
//无分频测�?
//wire key_clk  = clk;

//62.5Hz FreqDiv
reg [1:0] cnt; 
always @ (posedge clk, negedge rst_n)
  if (!rst_n)
    cnt <= 0;
  else
    cnt <= cnt + 1'b1;
wire key_clk = cnt[1];  //62.5Hz

//100MHz test
//reg [20:0] cnt;
//always @ (posedge clk, negedge rst_n)
//  if (!rst_n)
//    cnt <= 0;
//  else
//    cnt <= cnt + 1'b1;
//wire key_clk = cnt[20];  //62.5Hz

//状�?�机编码
parameter SCAN_H1      = 4'b1110;  // 扫描�?1�?
parameter SCAN_H2      = 4'b1101;  // 扫描�?2�?
parameter SCAN_H3      = 4'b1011;  // 扫描�?3�?
parameter SCAN_H4      = 4'b0111;  // 扫描�?4�?
parameter NO_KEY_PRESSED = 4'b0000;  // 没有按键按下 
parameter KEY_PRESSED    = 4'b1111;  // 有按键按�?

reg [3:0] current_state, next_state;

//状�?�方�?
always @ (posedge key_clk, negedge rst_n)
  if (!rst_n)
    current_state <= NO_KEY_PRESSED;
  else
    current_state <= next_state;

// 驱动方程
always @(current_state,V4,V3,V2,V1)
  case (current_state)
    NO_KEY_PRESSED :                    // 没有按键按下
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= SCAN_H1;
        else
          next_state <= NO_KEY_PRESSED;
    SCAN_H1 :                         // 扫描�?1�?
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= KEY_PRESSED;
        else
          next_state <= SCAN_H2;
    SCAN_H2 :                         // 扫描�?2�? 
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= KEY_PRESSED;
        else
          next_state <= SCAN_H3;    
    SCAN_H3 :                         // 扫描�?3�?
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= KEY_PRESSED;
        else
          next_state <= SCAN_H4;
    SCAN_H4 :                         // 扫描�?4�?
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= KEY_PRESSED;
        else
          next_state <= NO_KEY_PRESSED;
    KEY_PRESSED :                       // 有按键按�?
        if ({V4,V3,V2,V1} != 4'b1111)
          next_state <= KEY_PRESSED;
        else
          next_state <= NO_KEY_PRESSED;  
	default:
		next_state <= NO_KEY_PRESSED;
  endcase
   
//输出方程
 always @ (posedge key_clk, negedge rst_n)
    if (!rst_n)
    begin
      {H4,H3,H2,H1} <= 4'b0000;
      key_flag <= 0;
      key_val <= 4'h0;
    end 
    else
      case (current_state)
        NO_KEY_PRESSED :                  // 没有按键按下
            if({V4,V3,V2,V1} != 4'b1111)
                {H4,H3,H2,H1} <= 4'b1110;
            else
                begin
                {H4,H3,H2,H1} <= 4'b0000;
                key_flag <= 0;       // 清键盘按下标�?
                end    
        SCAN_H1 :                       // 扫描�?0�?
            if({V4,V3,V2,V1} != 4'b1111)
                {H4,H3,H2,H1} <= 4'b1110;
            else
                {H4,H3,H2,H1} <= 4'b1101;    
        SCAN_H2 :                      // 扫描�?1�?
            if({V4,V3,V2,V1} != 4'b1111)                   
                  {H4,H3,H2,H1} <= 4'b1101;    
            else  
                  {H4,H3,H2,H1} <= 4'b1011; 
        SCAN_H3 :                       // 扫描�?2�?
             if({V4,V3,V2,V1} != 4'b1111)                   
                  {H4,H3,H2,H1} <= 4'b1011;    
             else  
                  {H4,H3,H2,H1} <= 4'b0111;  
        SCAN_H4 :                       // 扫描�?3�?
            if({V4,V3,V2,V1} != 4'b1111)                   
                 {H4,H3,H2,H1} <= 4'b0111;    
            else  
                 {H4,H3,H2,H1} <= 4'b0000;     
        KEY_PRESSED :                     // 有按键按�?
            begin              
                case ({H4,H3,H2,H1,V4,V3,V2,V1})
                    8'b1110_1110 :  begin      key_val <= 4'h1;  key_flag <= 1'b1; end
                    8'b1110_1101 :  begin      key_val <= 4'h2;  key_flag <= 1'b1; end
                    8'b1110_1011 :  begin      key_val <= 4'h3;  key_flag <= 1'b1; end
                    8'b1110_0111 :  begin      key_val <= 4'hA;  key_flag <= 1'b1; end
                                    
                    8'b1101_1110 :  begin      key_val <= 4'h4;  key_flag <= 1'b1; end
                    8'b1101_1101 :  begin      key_val <= 4'h5;  key_flag <= 1'b1; end
                    8'b1101_1011 :  begin      key_val <= 4'h6;  key_flag <= 1'b1; end
                    8'b1101_0111 :  begin      key_val <= 4'hB;  key_flag <= 1'b1; end
                                   
                    8'b1011_1110 :  begin      key_val <= 4'h7;  key_flag <= 1'b1; end
                    8'b1011_1101 :  begin      key_val <= 4'h8;  key_flag <= 1'b1; end
                    8'b1011_1011 :  begin      key_val <= 4'h9;  key_flag <= 1'b1; end
                    8'b1011_0111 :  begin      key_val <= 4'hC;  key_flag <= 1'b1; end
                                    
                    8'b0111_1110 :  begin      key_val <= 4'h0;  key_flag <= 1'b1; end
                    8'b0111_1101 :  begin      key_val <= 4'hF;  key_flag <= 1'b1; end
                    8'b0111_1011 :  begin      key_val <= 4'hE;  key_flag <= 1'b1; end
                    8'b0111_0111 :  begin      key_val <= 4'hD;  key_flag <= 1'b1; end
                   default:         begin      key_val <=key_val;key_flag <= 1'b0; end
                       
              endcase
              
            end
		default:
			if({V4,V3,V2,V1} != 4'b1111)
                {H4,H3,H2,H1} <= 4'b1110;
            else
                begin
					{H4,H3,H2,H1} <= 4'b0000;
					key_flag <= 0;       // 清键盘按下标�?
                end 
      endcase
endmodule
