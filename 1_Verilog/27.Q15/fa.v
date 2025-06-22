`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 21:46:18
// Design Name: 
// Module Name: fa
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

module fa(
    input  wire a,b,c,
    output wire sum,carry
);
    wire sum_1,carry_1,carry_2;
    ha ha1(
        .a    (a      ),
        .b    (b      ),
        .sum  (sum_1  ),
        .carry(carry_1)
);

    ha ha2(
        .a    (sum_1  ),
        .b    (c      ),
        .sum  (sum    ),
        .carry(carry_2)
);

    assign carry = carry_1 | carry_2;
endmodule
