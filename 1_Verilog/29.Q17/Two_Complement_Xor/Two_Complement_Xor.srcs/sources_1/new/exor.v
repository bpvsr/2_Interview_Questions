`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 12:49:16
// Design Name: 
// Module Name: exor
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


module exor_p(
    input wire [3:0] a,
    output wire [3:0] out1,
    output wire [3:0] out2,
    output wire [3:0] out3
    );
    
    wire sum1,carry1,sum2,carry2,sum3,carry3,sum4,carry4;
    ha ha1(.a(~a[0]),.b(1'b1)  ,.sum(sum1),.carry(carry1));
    ha ha2(.a(~a[1]),.b(carry1),.sum(sum2),.carry(carry2));
    ha ha3(.a(~a[2]),.b(carry2),.sum(sum3),.carry(carry3));
    ha ha4(.a(~a[3]),.b(carry3),.sum(sum4),.carry(carry4));
    assign out1 = {sum4,sum3,sum2,sum1};
    
    wire [3:0]b;
    assign b[0] = 1 ^ a[0];
    assign b[1] = b[0] ^ a[1];
    assign b[2] = b[1] ^ a[2];
    assign b[3] = b[2] ^ a[3];
    
    assign out2 = {~b[3],~b[2],~b[1],~b[0]};
    
    wire [3:0]c;
    assign c[0] = a[0];
    assign c[1] = a[0] ^ a[1];
    assign c[2] = (a[0] | a[1]) ^ a[2];
    assign c[3] = (a[0] | a[1] | a[2]) ^ a[3];
    
    assign out3 = c;
/*    assign b[0] = a[0] ^ 0;
    assign b[1] = a[1] ^ b[0];
    assign b[2] = a[2] ^ b[1];
    assign b[3] = a[3] ^ b[2];

    assign out = {~b[3],~b[2],~b[1],~b[0]};     
*/
endmodule
