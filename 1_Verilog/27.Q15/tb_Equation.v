`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 21:57:32
// Design Name: 
// Module Name: tb_Equation
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


module tb_Equation();
    
    reg [1:0] x;
    reg [3:0] y;
    wire[4:0] z;
    
    Equation DUT(
    .x(x),
    .y(y),
    .z(z)
    );
    
    initial begin
        x = 2'b11; y = 4'b1111;
        #10;
        x = 2'b00; y = 4'b0000;
        #10;
        $finish;         
    end 
endmodule
