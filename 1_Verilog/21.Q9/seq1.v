`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 02.05.2025 06:47:32
// Design Name: 
// Module Name: seq1
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


module seq1(
    input  wire clk,
    input  wire rstn,
    output reg  [3:0] out
);
    reg [3:0] state;
    parameter S0 = 4'd0;parameter S1 = 4'd1;parameter S2 = 4'd2;
    parameter S3 = 4'd3;parameter S4 = 4'd4;parameter S5 = 4'd5;
    parameter S6 = 4'd6;parameter S7 = 4'd7;parameter S8 = 4'd8;
    parameter S9 = 4'd9;
    reg [3:0] count;
    reg valid1;
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            count <= 4'd0;
        end else if(valid1)begin
            count <= count + 1'b1;
        end else begin
            count <= 4'd0;
        end
    end
    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            state  <= S0;
            valid1 <= 1'b0; 
        end else begin
            case(state)
                S0  : begin
                          state <= S1;
                end
                S1  : begin
                          out    <= 4'd1;
                          state  <= S2;
                          valid1 <= 1'b1;
                end
                S2  : begin
                          out <= 4'd2;
                          if(count == 1) begin
                              valid1 <= 1'b0;
                              state  <= S3  ;              
                          end else begin
                              valid1 <= 1'b1;
                              state  <= S2  ;
                          end
                end
                S3  : begin
                          out   <= 4'd3;
                          if(count == 2) begin
                              valid1<=1'b0 ;
                              state <=S4  ;
                          end else begin
                              valid1<=1'b1 ; 
                              state <= S3  ;
                          end    
                end      
            endcase
        end
    end 
endmodule
