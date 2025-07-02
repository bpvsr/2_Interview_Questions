`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 13:59:17
// Design Name: 
// Module Name: two_tb
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


module two_tb();
    reg  [3:0] a;
    wire [3:0] b;
    wire [3:0] b2;
    wire [3:0] b3;
    
    exor_p DUT(
        a,b,b2,b3
    );
    
    integer i;
    initial begin
        for(i=0;i<16;i=i+1) begin
            a = i;
            #1;
        end  
        $finish;
    end
    
    initial begin
        $monitor("a = %b b = %b, b2 = %b b3 = %b",a,b,b2,b3);
    end
endmodule
