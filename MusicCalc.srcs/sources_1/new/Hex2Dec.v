`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/28 17:25:14
// Design Name: 
// Module Name: Hex2Dec
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


module Hex2Dec(
    input  wire       clk,
    input  wire       rst,
    input  wire [7:0] data_H, 
    input  wire [7:0] data_L,
    
    output reg  [7:0] outH,
    output reg  [7:0] outL  
);
    reg [15:0] data;
    reg [2:0]  state;
	reg [3:0]  thou, hund, ten, one;
    parameter THOU = 3'b000,  HUND = 3'b001,  TEN = 3'b010,  ONE = 3'b011;
	parameter THOU1 = 3'b100, HUND1 = 3'b101, TEN1 = 3'b110, ONE1 = 3'b111;

always@(posedge clk, posedge rst)
begin	
    if(rst)
        begin
            outH <= 8'b0;
            outL <= 8'b0;
            data <= 16'b0;
            state <= ONE1;
			thou <= 4'b0;
			hund <= 4'b0;
			ten <= 4'b0;
			one <= 4'b0;
        end
    else
        begin
            {outH, outL} <= {thou, hund, ten, one};
            case(state)
				THOU:
					begin
						state <= THOU1;
					
						if(data>=9000)
							thou <= 9;
						else if(data<9000 && data>=8000)
							thou <= 8;
						else if(data<8000 && data>=7000)
							thou <= 7;
						else if(data<7000 && data>=6000)
							thou <= 6;
						else if(data<6000 && data>=5000)
							thou <= 5;
						else if(data<5000 && data>=4000)
							thou <= 4;
						else if(data<4000 && data>=3000)
							thou <= 3;
						else if(data<3000 && data>=2000)
							thou <= 2;	
						else if(data<2000 && data>=1000)
							thou <= 1;
						else 
							thou <= 0;	
					end
				THOU1:
					begin
						state <= HUND;
						
						data <= data - thou*1000;
					end
				HUND:
					begin
						state <= HUND1;
						
						if(data>=900)
							hund <= 9;
						else if(data<900 && data>=800)
							hund <= 8;
						else if(data<800 && data>=700)
							hund <= 7;
						else if(data<700 && data>=600)
							hund <= 6;
						else if(data<600 && data>=500)
							hund <= 5;
						else if(data<500 && data>=400)
							hund <= 4;
						else if(data<400 && data>=300)
							hund <= 3;
						else if(data<300 && data>=200)
							hund <= 2;	
						else if(data<200 && data>=100)
							hund <= 1;
						else 
							hund <= 0;	
					end
				HUND1:
					begin
						state <= TEN;
						
						data <= data - hund*100;
					end
				TEN:
					begin
						state <= TEN1;
						
						if(data>=90)
							ten <= 9;
						else if(data<90 && data>=80)
							ten <= 8;
						else if(data<80 && data>=70)
							ten <= 7;
						else if(data<70 && data>=60)
							ten <= 6;
						else if(data<60 && data>=50)
							ten <= 5;
						else if(data<50 && data>=40)
							ten <= 4;
						else if(data<40 && data>=30)
							ten <= 3;
						else if(data<30 && data>=20)
							ten <= 2;	
						else if(data<20 && data>=10)
							ten <= 1;
						else 
							ten <= 0;
					end
				TEN1:
					begin
						state <= ONE;
						
						data <= data - ten*10;
					end
				ONE:
					begin
						state <= ONE1;
						
						one <= data;
					end
				ONE1:
					begin
						state <= THOU;
						
						data <= {data_H, data_L};
					end	
                default:
                    state <= ONE1;
			endcase
        end
end
endmodule
