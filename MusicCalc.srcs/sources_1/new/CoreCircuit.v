`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/27 09:25:39
// Design Name: 
// Module Name: CoreCircuit
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


module CoreCircuit(
    input  wire       clk,
    input  wire       rst,
    input  wire [7:0] SRCH, SRCL, DSTH, DSTL,
    input  wire [2:0] ALU_OP,
    input  wire       finish,
    input  wire       OP_flag,
    input  wire       num_flag,
    input  wire [7:0] S,
    input  wire       carry_out,
    input  wire [1:0] Nzero,
    input  wire       select_state,
    
    output reg [2:0]  state =3'b000,
//    output reg [15:0] SRC, DST, result,
//    output reg        OP_changed,
//    output reg        sign,
//    output reg [2:0]  OP,
//    output reg        mark,
//    output reg [15:0] DST,
    
    output reg        out_less,
    output reg        out_zero,
    output reg        carry_flag,
    
    output reg  [7:0] data_H, data_L, data_a, data_b,
    output reg  [2:0] CS,
    output reg        out_sign,
    output reg        carry_in
    );

	parameter INPUT = 0, READY = 1, LIN = 2, LOUT =3, HIN = 4,  HOUT= 5, RESULT = 6, JUDGE = 7;
	parameter ADD = 3'b000, MIN = 3'b001, AND = 3'b010, OR = 3'b011, COMP = 3'b100;
    
//	reg [2:0]  state =3'b000 ;   
    reg [15:0] SRC,  result; 
    reg [15:0] DST;
    reg        sign;
    reg [2:0]  OP;
    reg        OP_changed;
    
    reg [2:0]  OP_record;
    reg        OP_SIGN;
	reg        mark;

always @ (posedge clk or posedge rst) 
	begin
		if (rst)
			begin
				state <= INPUT;
				
				SRC <= 16'b0;
				DST <= 16'b0; 
				result <= 16'b0;
				OP <= 3'b0;
				carry_flag <= 1'b0;
				OP_changed <= 1'b0;
				OP_SIGN <= 1'b0;
				sign <= 1'b0;
				OP_record <= 3'b0;
				
//				mark <= 0;
                out_less<= 1'b0;
//                out_zero<= 1'b0;
//                carry_flag<= 1'b0;
				
				data_H <= 8'b0;
				data_L <= 8'b0;
				data_a <= 8'b0;
				data_b <= 8'b0;
				carry_in <= 1'b0;
				CS <= 3'b0;
				out_sign <= 1'b0;
				mark <= 1'b0;
			end
		else
			case (state)
				INPUT:
				    begin
						if( (DST != 16'b0 || Nzero>2'b0 )&&(OP_flag||finish) )
							state <= READY;
						else
							state <= INPUT;
							
//						if(DST != 16'b0 || (DST == 16'b0 && Nzero>2'b00) )
                        if((select_state==1'b1)&&(DST != 16'b0 || (DST == 16'b0 && Nzero>2'b00) ))
							begin
                                {data_H,data_L} <= {DSTH,DSTL};
                                DST <= {DSTH,DSTL};
                                
//                                mark <= 1;
                            end
						else
						    begin
                                sign <= 0;
                                {data_H,data_L} <= {SRCH,SRCL};
                                SRC <= {SRCH,SRCL};
                                DST <= {DSTH,DSTL};
                            end
						
						out_sign <= 0;	
						out_less<= 1'b0;
//                        out_zero<= 1'b0;
                        carry_flag<= 1'b0;
						mark <= 1'b0;
				    end
				READY:
				    begin
						state <= LIN;
						
						if( sign == 1 &&(OP_record== AND)||(OP_record== OR))
                            begin    
                                SRC[15:0] <= (~result[15:0]) + 16'h0001;
                                result[15:0] <= (~result[15:0]) + 16'h0001;
//                                OP <= OP_record;
                            end
						
						if(OP_changed)
                            begin
                                OP_changed <= 1'b0;
                                if(sign == 1 && OP_record == ADD)
                                    OP <= MIN;
                                else if(sign == 1 && ((OP_record== MIN)||(OP_record== COMP)) )
                                    OP <= ADD;
//                                else if(sign == 1 && ((OP_record== AND)||(OP_record== OR)))
//                                    begin    
//                                        SRC[15:0] <= (~result[15:0]) + 16'h0001;
//                                        OP <= OP_record;
//                                    end
                                else
                                    OP <= OP_record;	
                            end
                        else
                            OP <= ALU_OP;
				    end
				LIN:
				    begin
						state <= LOUT;
						
						data_a <= SRC[7:0];
						data_b <= DST[7:0];
						if( (OP == MIN)||(OP == COMP) )
							carry_in <= 1;
						else
							carry_in <= 0;
						CS <= OP;
				    end
				LOUT:
				    begin
						state <= HIN;
						
						result[7:0] <= S;
						carry_flag <= carry_out;
				    end
				HIN:
				    begin
						state <= HOUT;
						
						data_a <= SRC[15:8];
						data_b <= DST[15:8];
						carry_in <= carry_flag;
						CS <= OP;
				    end
				HOUT:
				    begin
						state <= RESULT;
												
						if( (OP==MIN||OP==COMP)&&(carry_out==0) )
							begin								
								OP_SIGN <= 1;
								result[15:0] <= ~({S,result[7:0]}+16'hffff);
							end
						else
							begin
								OP_SIGN <= 0;
								result[15:8] <= S ;
							end						                       
                        
				    end
				RESULT:
				    begin
						if(num_flag)
							state <= JUDGE;
						else
							state <= RESULT;
							
						{data_H, data_L} <= result;
						
						if( (OP==AND || OP==OR) ) 
							begin
								if(result[15]==1'b1)
									begin
										result[15:0] <= ~(result[15:0]+16'hffff);
										out_sign <= 1'b1;
										mark <= 1'b1;
									end
								else if(mark == 1'b1)
									out_sign <= 1'b1;
								else
									out_sign <= 1'b0;							
							end                        
						else if(result==16'b0)
                            begin
//                                out_zero <= 1'b1;
                                out_sign <= 1'b0;
						    end
                        else
                            out_sign <= (OP_SIGN & (~sign)) | (sign & (~OP_SIGN));
                            
						if(OP_flag)
                            begin
                                OP_changed <= 1;
                                OP_record <= ALU_OP;
                            end
						
						
						if( ALU_OP==COMP && out_sign == 1'b1  )
						    out_less <= 1'b1;
						else
						    out_less <= 1'b0;
						
				    end
				JUDGE:
				    begin
						state <= INPUT;
						
						if(OP_changed)
							begin
								sign <= out_sign;
								SRC <= result;								
							end
						else
							begin
								SRC <= 16'b0;
								DST <= 16'b0;
								sign <= 0;
							end	
				    end
            endcase
end

always@(state,result,out_zero)
    begin
        if(state == RESULT)
            if(result==0)
                out_zero <= 1;
            else
                out_zero <= 0;
        else
            out_zero <= 0;
    end




endmodule
