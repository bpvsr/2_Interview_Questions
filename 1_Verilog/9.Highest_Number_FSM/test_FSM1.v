`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Bharadwaja Pisupati
// 
// Create Date: 12.05.2025 11:56:04
// Design Name: 
// Module Name: test_FSM1
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


module test_FSM1();
    
    reg  clk;
    reg  rstn;
    reg  [1:0] in;
    wire [1:0] out;
    
    FSM_1 DUT(
        .clk (clk ),
        .rstn(rstn),
        .in  (in  ),
        .out (out ) 
    );
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        @(posedge clk) rstn <= 1'b0;
        @(posedge clk) rstn <= 1'b1; in <= 0;
        @(posedge clk) rstn <= 1'b1; in <= 1;
        @(posedge clk) rstn <= 1'b1; in <= 0;
        @(posedge clk) rstn <= 1'b1; in <= 2;
        @(posedge clk) rstn <= 1'b1; in <= 1;
        @(posedge clk) rstn <= 1'b1; in <= 0;
        @(posedge clk) rstn <= 1'b1; in <= 3;
        @(posedge clk) rstn <= 1'b1; in <= 1;
        @(posedge clk) rstn <= 1'b1; in <= 2;
        @(posedge clk) rstn <= 1'b1; in <= 0;
        @(posedge clk);
        $finish;
    end 
endmodule
