`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Bharadwaja Pisupati 
// 
// Create Date: 05.05.2025 15:18:14
// Design Name: 
// Module Name: decoder3x8
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


module decoder3x8(
    input  wire [2:0] in,
    input  wire en,
    output reg  [7:0] out
);
    always@* begin
        if(en) begin
            case(in)
                3'b000  :   out = 8'b0000_0001;
                3'b001  :   out = 8'b0000_0010;
                3'b010  :   out = 8'b0000_0100;
                3'b011  :   out = 8'b0000_1000;
                3'b100  :   out = 8'b0001_0000;
                3'b101  :   out = 8'b0010_0000;
                3'b110  :   out = 8'b0100_0000;
                3'b111  :   out = 8'b1000_0000;
                default :   out = 8'bxxxx_xxxx;
            endcase
        end else begin
            out = 8'd0;
        end
    end
endmodule
