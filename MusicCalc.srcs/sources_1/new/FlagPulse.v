`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/28 09:58:21
// Design Name: 
// Module Name: FlagPulse
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


module FlagPulse(
    input  wire  clk,
    input  wire  rst,
    input  wire  num_flag,
    
    output reg   num_flag_pulse
);

    reg [1:0] state;
    parameter IDLE = 2'b00,  PULSE = 2'b01, HIGH = 2'b11; 


always@(posedge clk,posedge rst)
    begin
        if(rst)
            begin
                state <= IDLE;
                num_flag_pulse <= 1'b0;
            end
        else
			case(state)
				IDLE:
					begin
						if(num_flag)
							state <= PULSE;
						else
							state <= IDLE;
							
						num_flag_pulse <= 1'b0;
					end
				PULSE:
					begin
						state <= HIGH;
						
						num_flag_pulse <= 1'b1;
					end				
				HIGH:
					begin
						if(num_flag)
							state <= HIGH;
						else
							state <= IDLE;
							
						num_flag_pulse <= 1'b0;
					end				
				default:
					begin
						state <= IDLE;
						num_flag_pulse <= 1'b0;
					end
			endcase
    end
endmodule
