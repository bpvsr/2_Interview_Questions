`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 21:47:22
// Design Name: 
// Module Name: RCA
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

module RCA(
    input  wire [3:0] a,b,
    output wire [3:0] sum,
    output wire carry 
);
    wire [2:0]c;
    
    ha ha_0( 
        .a    (a[0]  ),
        .b    (b[0]  ),
        .sum  (sum[0]),
        .carry(c[0]  )
    );
    
    fa fa_1(
        .a    (a[1]  ),
        .b    (b[1]  ),
        .c    (c[0]  ),
        .sum  (sum[1]),
        .carry(c[1]  )
    );
    fa fa_2(
        .a    (a[2]  ),
        .b    (b[2]  ),
        .c    (c[1]  ),
        .sum  (sum[2]),
        .carry(c[2]  )
    );
    
   fa fa_3(
        .a    (a[3]  ),
        .b    (b[3]  ),
        .c    (c[2]  ),
        .sum  (sum[3]),
        .carry(carry )
    );
endmodule

