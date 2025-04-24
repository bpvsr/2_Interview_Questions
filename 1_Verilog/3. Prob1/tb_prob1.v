`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 10.04.2025 14:55:58
// Design Name: 
// Module Name: tb_prob1
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


module tb_prob1();


    reg clk;
    reg rstn;
    wire [7:0] out;
    
    prob1 DUT(
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
        #200 $finish;
    end
    
    initial begin
        $monitor("out = %0d",out);
    end
    
    
endmodule
