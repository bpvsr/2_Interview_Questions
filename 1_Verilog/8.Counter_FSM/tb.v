`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 12.05.2025 14:59:47
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
    reg clk ;
    reg rstn;
    reg in  ;
    wire [1:0]count;
    
    fsm_counter DUT(
        .clk   (clk) ,
        .rstn  (rstn),
        .in    (in  ),
        .count (count)
    );
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(posedge clk) rstn <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        $finish;
    end
endmodule
