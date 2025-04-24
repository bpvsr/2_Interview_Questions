`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 10.04.2025 14:40:22
// Design Name: 
// Module Name: prob1
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


module prob1(
    input   wire clk,
    input   wire rstn,
    output  reg [7:0] out 
    );
    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            out    <= 8'b1100_0000;
        end else begin
            out[7] <= out[7];
            out[6] <= out[0];
            out[5] <= out[6];
            out[4] <= out[5];
            out[3] <= out[4];
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];
      end
    end
endmodule
