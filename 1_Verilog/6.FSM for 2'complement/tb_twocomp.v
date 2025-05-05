`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Bharadwaja Pisupati 
// 
// Create Date: 05.05.2025 14:28:28
// Design Name: 
// Module Name: tb_twocomp
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


module tb_twocomp();
    reg  clk ;
    reg  rstn;
    reg  in  ;
    wire out ;
    
    twos_comp DUT(
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
        @(posedge clk) rstn <= 1'b1;in<= 1'b1;
        @(posedge clk) rstn <= 1'b1;in<= 1'b0;
        @(posedge clk) rstn <= 1'b1;in<= 1'b1;
        @(posedge clk) rstn <= 1'b1;in<= 1'b1;
        @(posedge clk) rstn <= 1'b1;in<= 1'b1;
        @(posedge clk) rstn <= 1'b1;in<= 1'b0;
        @(posedge clk);
        $finish;
    end
endmodule
