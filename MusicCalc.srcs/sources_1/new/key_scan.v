`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/24 14:56:54
// Design Name: 
// Module Name: key_scan
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


module key_scan(
    input  wire       CLK,
    input  wire       RESET,
    input  wire       V1,V2,V3,V4,
    
//    output wire [1:0]  state,
//    output wire [15:0] input_val,
//    output wire [3:0]   num_val,
//    output wire [11:0] temp,

    output wire        select_state,
    output wire [1:0]  Nzero,  
    output wire       H1,H2,H3,H4,
    output wire [7:0] SRCH,
    output wire [7:0] SRCL,
    output wire [7:0] DSTH,
    output wire [7:0] DSTL,
    output wire [2:0] ALU_OP,
    output wire       finish,
    output wire       num_flag,
    output wire       OP_flag
    );
    
    wire [3:0]   key_val;
    wire         key_flag;
    wire [3:0]   num_val;
    wire         num_flag_pulse;
    wire [15:0]  input_val;
    
Key_Driver  Key_Driver
(
  .clk(CLK), //250Hz
  .rst(RESET),
  .V1(V1),.V2(V2),.V3(V3),.V4(V4),
  .H1(H1),.H2(H2),.H3(H3),.H4(H4),
  .key_val(key_val),
  .key_flag(key_flag)
);
 
 
PreKey PreKey
(
    .clk(CLK),
    .rst(RESET),
	.key_val(key_val),
    .key_flag(key_flag),
	
	.num_val(num_val),
	.ALU_OP(ALU_OP),
	.num_flag(num_flag),
	.OP_flag(OP_flag),
	.finish(finish)
);    

FlagPulse FlagPulse
(
    .clk(CLK),
    .rst(RESET),
    .num_flag(num_flag),
    
    .num_flag_pulse(num_flag_pulse)
);
  
  
NumInput NumInput
(
    .clk(CLK),
	.rst(RESET),
	.num_val(num_val),
	.num_flag_pulse(num_flag_pulse), 
	.OP_flag(OP_flag), 
	.finish(finish), 
	
//	.state(state),
//	.temp(temp),

	.Nzero(Nzero), 	
	.input_val(input_val)
);  
    
NumSelect NumSelect
(
    .clk(CLK),
	.rst(RESET),
	.num_flag(num_flag),
	.OP_flag(OP_flag), 
    .finish(finish), 
    .input_val(input_val),
    
    .select_state(select_state),
    .SRCH(SRCH),
    .SRCL(SRCL),
    .DSTH(DSTH),
    .DSTL(DSTL)
);    
    
endmodule
