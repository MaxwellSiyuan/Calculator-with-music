`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/28 09:14:07
// Design Name: 
// Module Name: NumInput
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


module NumInput(
    input  wire       clk,
	input  wire       rst,
	input  wire [3:0] num_val,
	input  wire       num_flag_pulse, 
	input  wire       OP_flag, 
	input  wire       finish, 
	
//	output reg  [1:0]  state,
//	output reg  [11:0] temp,
	
	output reg  [1:0]  Nzero,	
	output reg  [15:0] input_val
);

	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

	reg  [1:0]  state;
	reg  [11:0] temp;
	
always @ (posedge clk or posedge rst) 
	begin
		if (rst)
			begin
				state <= S0;
				input_val <= 16'b0;
				temp <= 12'b0;
				Nzero  <= 2'b11;
			end
		else
			begin
				case (state)
					S0:
						begin
							if(num_flag_pulse==1'b1 )
                                 begin
                                    if( num_val==4'h0 )
                                        Nzero <= 2'b01;
                                        
                                    state <= S1;
                                    temp[3:0] <= num_val;	                                 
								end
							else
							    begin
                                    state <= S0;
                                    temp <= 12'b0;
                                    Nzero <= 2'b00;
                                end
						end
					S1:
					   begin
					        input_val <= temp[3:0];
						
							if(num_flag_pulse==1'b1)
                                begin
                                    if( num_val==4'h0 && Nzero == 2'b01)
                                        Nzero <= 2'b10;
                                        
                                    state <= S2;
                                    temp[7:4] <= num_val;
								end
							else if(OP_flag||finish)
								state <= S0;
							else
								state <= S1;									
						end
					S2:
						begin
						    input_val <=  temp[3:0]*4'hA + temp[7:4];
						    
							if(num_flag_pulse==1'b1)
                                begin
                                    if( num_val==4'h0 && Nzero == 2'b10)
                                        Nzero <= 2'b11;
                                
                                    state <= S3;
                                    temp[11:8] <= num_val;
								end
							else if(OP_flag||finish)
								state <= S0;
							else
								state <= S2;								
						end
					S3:
						begin
						    input_val <= temp[11:8] + temp[7:4]*4'hA + temp[3:0]*8'h64;
						
							if(OP_flag||finish)
								state <= S0;
							else
								state <= S3;								
						end
					default:
						state <= S0;
				endcase
				
//				input_val <= temp[11:8] + temp[7:4]*4'b1010 + temp[3:0]*8'b0110_0100;
			end	
	end

endmodule
