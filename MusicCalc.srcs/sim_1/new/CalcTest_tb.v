`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/27 15:40:06
// Design Name: 
// Module Name: CalcTest_tb
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


module CalcTest_tb;
    reg     	clk;
    reg     	rst;
    reg [7:0] 	SRCH, SRCL, DSTH, DSTL;
    reg [2:0] 	ALU_OP;
    reg     	finish;
    reg     	OP_flag;
    reg     	num_flag;
    reg [1:0] 	Nzero;
    
//    wire[2:0] state;
//    wire [15:0] SRC, DST, result;
//    wire       OP_changed;
//    wire       sign;
//    wire [2:0] OP;
//    wire [7:0] S;
//    wire [7:0] data_a, data_b;
    
    wire[7:0] 	outH, outL;
    wire    	out_sign;
    
   parameter ADD = 3'b000, MIN = 3'b001, AND = 3'b010, OR = 3'b011, COMP = 3'b100;
   
CalcTest CalcTest_file
(
    .clk(clk),
    .rst(rst),
    .SRCH(SRCH), .SRCL(SRCL), .DSTH(DSTH), .DSTL(DSTL),
    .ALU_OP(ALU_OP),
    .finish(finish),
    .OP_flag(OP_flag),
    .num_flag(num_flag),
    .Nzero(Nzero),
    
//    .state(state),
//     .SRC(SRC), .DST(DST),.result(result),
//     .OP_changed(OP_changed),
//     .sign(sign),
//     .OP(OP),
//    .S(S),
//    .data_a(data_a), .data_b(data_b),
    
    .outH(outH), .outL(outL),
    .out_sign(out_sign)
);

initial begin
    clk = 1'b0;
    rst = 1'b0;
    SRCH=8'b0; SRCL=8'b0; DSTH=8'b0;  DSTL=8'b0;
    ALU_OP=3'b0;
    finish=1'b0;
    OP_flag=1'b0;
    num_flag=1'b0;
    Nzero = 2'b00;
   
   //4 - 9 = -5  
        #5000 {SRCH,SRCL} = 4;{DSTH,DSTL} = 0;
             num_flag = 1;
        #5000 num_flag = 0;
                
        #20000 ALU_OP = MIN;
             OP_flag=1;
        #20000 OP_flag=0;
        
        #20000 {DSTH,DSTL} = 9;
             num_flag = 1;
        #20000 num_flag = 0;
    
        #5000 finish = 1;
        #5000 finish = 0;
   
        #20000 ALU_OP = AND;
             OP_flag=1;
        #20000 OP_flag=0;   
   
        #5000 {DSTH,DSTL} = 8;
              num_flag = 1;
        #5000 num_flag = 0;
        #5000 {DSTH,DSTL} = 85;
             num_flag = 1;
        #5000 num_flag = 0;
        
        #5000 finish = 1;
        #5000 finish = 0;
//    //732 + 125 = 857  0x(359)
//    #20000 {SRCH,SRCL} = 7;{DSTH,DSTL} = 0;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {SRCH,SRCL} = 73;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {SRCH,SRCL} = 732;
//         num_flag = 1;
//    #5000 num_flag = 0;
    
//    #20000 ALU_OP = ADD;
//         OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 1;
//          num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 12;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 125;
//         num_flag = 1;
//    #5000 num_flag = 0;

//    #5000 finish = 1;
//    #5000 finish = 0;
    
//    //857 - 341 = 516  0x(204)
//    #20000 ALU_OP = MIN;
//         OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 3;
//           num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 34;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 341;
//         num_flag = 1;
//    #5000 num_flag = 0;
    
//    //516 - 641 = -125  0x(-7D)
//    #20000 ALU_OP = MIN;
//         OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 6;
//           num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 64;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 641;
//         num_flag = 1;
//    #5000 num_flag = 0;
    
//    #5000 finish = 1;
//    #5000 finish = 0;
    
//    //-125 -234 = -359  0x(-167)
//    #20000 ALU_OP = MIN;
//         OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 2;
//           num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 23;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 234;
//         num_flag = 1;
//    #5000 num_flag = 0;
    
//    //-359 + 400 = 41  0x(29)
//    #20000 ALU_OP = ADD;
//         OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 4;
//           num_flag = 1;
//    #5000 num_flag = 0;
//    #5000{DSTH,DSTL} = 40;
//         num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 400;
//         num_flag = 1;
//    #5000 num_flag = 0;
 
//    #5000 finish = 1;
//    #5000 finish = 0;   
    
//    // 354 & 125 = 96
//    #20000 {SRCH,SRCL} = 3;{DSTH,DSTL} = 0;
//        num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {SRCH,SRCL} = 35;
//        num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {SRCH,SRCL} = 354;
//        num_flag = 1;
//    #5000 num_flag = 0;

//    #20000 ALU_OP = AND;
//        OP_flag=1;
//    #20000 OP_flag=0;
    
//    #5000 {DSTH,DSTL} = 1;
//    #5000 num_flag = 1;
//          num_flag = 0;
//    #5000 {DSTH,DSTL} = 12;
//        num_flag = 1;
//    #5000 num_flag = 0;
//    #5000 {DSTH,DSTL} = 125;
//        num_flag = 1;
//    #5000 num_flag = 0;
    
//    #5000 finish = 1;
//    #5000 finish = 0;
    
//    // 354 | 125 = 383
//   #20000 {SRCH,SRCL} = 3;{DSTH,DSTL} = 0;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {SRCH,SRCL} = 35;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {SRCH,SRCL} = 354;
//       num_flag = 1;
//   #5000 num_flag = 0;

//   #20000 ALU_OP = OR;
//       OP_flag=1;
//   #20000 OP_flag=0;
   
//   #5000 {DSTH,DSTL} = 1;
//          num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {DSTH,DSTL} = 12;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {DSTH,DSTL} = 125;
//       num_flag = 1;
//   #5000 num_flag = 0;
   
//   #5000 finish = 1;
//   #5000 finish = 0;
    
    
//    //125 COMP 354 = -229
//   #20000 {SRCH,SRCL} = 1;{DSTH,DSTL} = 0;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {SRCH,SRCL} = 12;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {SRCH,SRCL} = 125;
//       num_flag = 1;
//   #5000 num_flag = 0;

//   #20000 ALU_OP = COMP;
//       OP_flag=1;
//   #20000 OP_flag=0;
   
//   #5000 {DSTH,DSTL} = 3;
//           num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {DSTH,DSTL} = 35;
//       num_flag = 1;
//   #5000 num_flag = 0;
//   #5000 {DSTH,DSTL} = 354;
//       num_flag = 1;
//   #5000 num_flag = 0;
   
//   #5000 finish = 1;
//   #5000 finish = 0;
    
end
always #1000 clk = ~clk;
endmodule
