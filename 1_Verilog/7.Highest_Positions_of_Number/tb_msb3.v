`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 05.05.2025 15:37:00
// Design Name: 
// Module Name: tb_msb3
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


module tb_msb3();
   
    reg  [7:0] in    ;
    wire [2:0] pos1  ;
    wire       valid ; 
    wire [2:0] pos2  ;
    wire       valid1;     
    wire [2:0] pos3  ;
    wire       valid2;    
   
   
    MSB_3 DUT(
        .in    (in    ),
        .pos1  (pos1  ),
        .valid (valid ), 
        .pos2  (pos2  ),
        .valid1(valid1),     
        .pos3  (pos3  ),
        .valid2(valid2)    
     );
     
     initial begin
         in <= 8'b1001_0010;#10;
         in <= 8'b0011_1000;#10;
         in <= 8'b0000_1010;#10;
         in <= 8'b0000_1000;#10;
         $finish;
     end
     
     initial begin
         $monitor("in = %b pos1 = %0d pos2 = %0d pos3 = %0d",in,pos1,pos2,pos3);
     end
endmodule
