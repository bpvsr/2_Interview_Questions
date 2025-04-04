`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 02.04.2025 10:30:58
// Design Name: 
// Module Name: Fibonacci
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
// First  Cycle 1 1 2 
// Second Cycle 1 2 3
// Third  Cycle 2 3 5 ..So on  
//////////////////////////////////////////////////////////////////////////////////


module Fibonacci#(parameter width = 10)(
    input  wire clk,
    input  wire rstn,
    output wire [width-1:0] out
    );
    
    reg [width-1:0] a, b;
    
    assign out = a + b;
    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            a   <= {width{1'b0}};
            b   <= 1;
        end else begin
            a   <= b    ;
            b   <= out  ;
        end
    end 
endmodule
