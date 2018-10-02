`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/29 15:08:55
// Design Name: 
// Module Name: MusicSheet
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


module MusicSheet(
    input wire [1:0] state,
    input wire [5:0] music_cnt,
    
    output reg [7:0]  note
    );
    
    parameter STOP = 2'b00 ,POSE = 2'b01 ,NEGA = 2'b10; 
    
always@(state,music_cnt)    
    begin
        if(state == POSE )
            case(music_cnt)
                0   :   note = 8'h23  ;
                1   :   note = 8'h23  ;
                2   :   note = 8'h21  ;
                3   :   note = 8'h21  ;
                4   :   note = 8'h22  ;
                5   :   note = 8'h22  ;
                6   :   note = 8'h16  ;
                7   :   note = 8'h16  ;
                
                8   :   note = 8'h23  ;
                9   :   note = 8'h22  ;
                10  :   note = 8'h21  ;
                11  :   note = 8'h22  ;
                12  :   note = 8'h16  ;
                13  :   note = 8'h16  ;
                14  :   note = 8'h16  ;
                15  :   note = 8'h16  ;
                
                16  :   note = 8'h23  ;
                17  :   note = 8'h23  ;
                18  :   note = 8'h21  ;
                19  :   note = 8'h21  ;
                20  :   note = 8'h22  ;
                21  :   note = 8'h22  ;
                22  :   note = 8'h22  ;
                23  :   note = 8'h22  ;
                
                24  :   note = 8'h25  ;
                25  :   note = 8'h23  ;
                26  :   note = 8'h17  ;
                27  :   note = 8'h17  ;
                28  :   note = 8'h21  ;
                29  :   note = 8'h21  ;
                30  :   note = 8'h21  ;
                31  :   note = 8'h17  ;
                
                32  :   note = 8'h16  ;
                33  :   note = 8'h16  ;
                34  :   note = 8'h17  ;
                35  :   note = 8'h21  ;
                36  :   note = 8'h22  ;
                37  :   note = 8'h22  ;
                38  :   note = 8'h15  ;
                39  :   note = 8'h15  ;
               
                40  :   note = 8'h26  ;
                41  :   note = 8'h25  ;
                42  :   note = 8'h23  ;
                43  :   note = 8'h23  ;
                44  :   note = 8'h23  ;
                45  :   note = 8'h23  ;
                46  :   note = 8'h23  ;
                47  :   note = 8'h22  ;
               
                48  :   note = 8'h21  ;
                49  :   note = 8'h21  ;
                50  :   note = 8'h22  ;
                51  :   note = 8'h23  ;
                52  :   note = 8'h22  ;
                53  :   note = 8'h23  ;
                54  :   note = 8'h22  ;
                55  :   note = 8'h23  ;
               
                56  :   note = 8'h25  ;
                57  :   note = 8'h00  ;
                58  :   note = 8'h25  ;
                59  :   note = 8'h00  ;
                60  :   note = 8'h25  ;
                61  :   note = 8'h00  ;
                62  :   note = 8'h25  ;
                63  :   note = 8'h25  ;
              
                default:
                    note = 8'h00;
            endcase
        else if(state == NEGA )
            case(music_cnt)
			   0   :   note = 8'h23  ;
			   1   :   note = 8'h23  ;
			   2   :   note = 8'h23  ;
			   3   :   note = 8'h25  ;
			   4   :   note = 8'h26  ;
			   5   :   note = 8'h31  ;
			   6   :   note = 8'h31  ;
			   7   :   note = 8'h26  ;
			   
			   8   :   note = 8'h25  ;
			   9   :   note = 8'h25  ;
			   10  :   note = 8'h25  ;
			   11  :   note = 8'h26  ;
			   12  :   note = 8'h25  ;
			   13  :   note = 8'h25  ;
			   14  :   note = 8'h25  ;
			   15  :   note = 8'h25  ;
			   
			   16  :   note = 8'h23  ;
			   17  :   note = 8'h22  ;
			   18  :   note = 8'h23  ;
			   19  :   note = 8'h25  ;
			   20  :   note = 8'h26  ;
			   21  :   note = 8'h31  ;
			   22  :   note = 8'h31  ;
			   23  :   note = 8'h26  ;
			   
			   24  :   note = 8'h25  ;
			   25  :   note = 8'h25  ;
			   26  :   note = 8'h25  ;
			   27  :   note = 8'h26  ;
			   28  :   note = 8'h25  ;
			   29  :   note = 8'h25  ;
			   30  :   note = 8'h25  ;
			   31  :   note = 8'h25  ;
			   
			   32  :   note = 8'h25  ;
			   33  :   note = 8'h25  ;
			   34  :   note = 8'h25  ;
			   35  :   note = 8'h25  ;
			   36  :   note = 8'h25  ;
			   37  :   note = 8'h25  ;
			   38  :   note = 8'h23  ;
			   39  :   note = 8'h25  ;
			  
			   40  :   note = 8'h26  ;
			   41  :   note = 8'h26  ;
			   42  :   note = 8'h26  ;
			   43  :   note = 8'h26  ;
			   44  :   note = 8'h25  ;
			   45  :   note = 8'h25  ;
			   46  :   note = 8'h25  ;
			   47  :   note = 8'h25  ;
			  
			   48  :   note = 8'h23  ;
			   49  :   note = 8'h23  ;
			   50  :   note = 8'h22  ;
			   51  :   note = 8'h23  ;
			   52  :   note = 8'h25  ;
			   53  :   note = 8'h25  ;
			   54  :   note = 8'h23  ;
			   55  :   note = 8'h22  ;
			  
			   56  :   note = 8'h21  ;
			   57  :   note = 8'h21  ;
			   58  :   note = 8'h21  ;
			   59  :   note = 8'h22  ;
			   60  :   note = 8'h21  ;
			   61  :   note = 8'h21  ;
			   62  :   note = 8'h21  ;
			   63  :   note = 8'h21  ;
			   default:
				   note = 8'h00;                     
            endcase  
        else
            note = 8'b0;       
    end
endmodule