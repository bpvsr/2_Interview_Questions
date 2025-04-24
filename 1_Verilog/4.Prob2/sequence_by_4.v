`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2025 15:23:28
// Design Name: 
// Module Name: sequence_by_4
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


module sequence_by_4(
    input  wire clk,
    input  wire rstn,
    output reg  [5:0] count
    );

    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            count <= 6'd1;
        end else begin
            count[0] <=  1'b1; 
            count[1] <=  1'b0;
            count[2] <= ~count[2];
            count[3] <=  count[2] ^ count[3] ;
            count[4] <= (count[2] && count[3])?~count[4] : count[4];
            count[5] <= (count[2] && count[3]&& count[4])?~count[5] : count[5];
        end
     end
endmodule
