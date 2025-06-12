`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 12.06.2025 07:20:40
// Design Name: 
// Module Name: tb
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


module tb();
        reg clk;
        reg rstn;
        wire out;
    
    ckt1 DUT(clk,rstn,out);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end 
    
    initial begin
        @(posedge clk) rstn <= 1'b0;
        @(posedge clk) rstn <= 1'b1;
        #200;
        $finish;
    end 
    endmodule
