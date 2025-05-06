`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati 
// 
// Create Date: 05.05.2025 15:06:24
// Design Name: 
// Module Name: Pe8x3
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


module Pe8x3(
    input  wire [7:0] in ,
    output reg  [2:0] out,
    output reg  valid    
);
    always@* begin
        if(in[7]) begin
            out   = 3'd7;
            valid = 1'b1;
        end else if(in[6]) begin
            out   = 3'd6;
            valid = 1'b1;
        end else if(in[5]) begin
            out   = 3'd5;
            valid = 1'b1;
        end else if(in[4]) begin
            out   = 3'd4;
            valid = 1'b1;
        end else if(in[3]) begin
            out   = 3'd3;
            valid = 1'b1;
        end else if(in[2]) begin
            out   = 3'd2;
            valid = 1'b1;
        end else if(in[1]) begin
            out   = 3'd1;
            valid = 1'b1;
        end else if(in[0]) begin
            out   = 3'd0;
            valid = 1'b1;
        end else begin
            out   = 3'd0;
            valid = 1'b0;
        end
    end
    
endmodule
