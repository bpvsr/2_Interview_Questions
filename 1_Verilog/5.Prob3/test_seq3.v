`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Bharadwaja Pisupati
// 
// Create Date: 02.05.2025 15:48:58
// Design Name: 
// Module Name: test_seq3
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


// Code your testbench here
// or browse Examples
module test_seq3();
  
    reg   clk;
    reg   rstn;
    wire  [3:0] out;
  
    seq_gen DUT(
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
      #1000;
      $finish;
    end
  
    initial begin
      $dumpfile("test.vcd");
      $dumpvars(2);
    end
  
    initial begin
      $timeformat(-9,0,"ns",10);
    end
  
    initial begin
      $monitor("$time = %0t out = %0d",$time,out);
    end
  
endmodule
