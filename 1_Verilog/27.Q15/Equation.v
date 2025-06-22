`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 21:42:06
// Design Name: 
// Module Name: Equation
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


module Equation(
    input  wire [1:0] x,
    input  wire [3:0] y,
    output wire [4:0] z
    );
    
    //x*x
    wire [3:0] xsq;
    wire s0,t0;
    wire s1,t1;
     
    ha One(
        .a    (x[1]),
        .b    (x[0]),
        .sum  (s0),
        .carry(t0) 
    );
    
    ha Two(
        .a    (x[1]),
        .b    (t0  ),
        .sum  (s1  ),
        .carry(t1  ) 
    );
    assign xsq = {t1,s1,s0,x[0]};
    
    //2*x
    wire [3:0] twox ;
    assign twox = {1'b0,x[1],x[0],1'b0};
    
    //first RCA 
    wire [4:0] rca_out1;
    RCA Three(
        .a(xsq),
        .b(twox),
        .sum(rca_out1[3:0]),
        .carry(rca_out1[4]) 
    ); 
    
    RCA Four(
            .a(rca_out1[3:0]),
            .b(y),
            .sum(z[3:0]),
            .carry(z[4]) 
        ); 
    
    
endmodule
