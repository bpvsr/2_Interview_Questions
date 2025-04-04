`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 02.04.2025 10:38:56
// Design Name: 
// Module Name: tb_Fibonacci
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


module tb_Fibonacci();
    
    parameter WIDTH1 = 10;
    
    reg  clk;
    reg  rstn;
    wire [WIDTH1-1:0] out;
    
   
    
    Fibonacci #(WIDTH1)DUT(
        .clk (clk ),
        .rstn(rstn),
        .out (out )
    );
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(posedge clk) rstn <= 1'b0;
        @(posedge clk) rstn <= 1'b1;
        #100 $finish;
    end 
endmodule
