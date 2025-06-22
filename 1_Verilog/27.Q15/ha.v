`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati 
// 
// Create Date: 22.06.2025 21:42:27
// Design Name: 
// Module Name: ha
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


module ha(
    input  wire a,
    input  wire b,
    output wire sum,
    output wire carry
    );
    
    assign sum   = a ^ b;
    assign carry = a & b; 
endmodule
