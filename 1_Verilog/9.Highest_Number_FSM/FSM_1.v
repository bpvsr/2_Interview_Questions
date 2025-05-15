`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Bharadwaja Pisupati
// 
// Create Date: 12.05.2025 11:05:06
// Design Name: 
// Module Name: FSM_1
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


module FSM_1(
    input  wire clk,
    input  wire rstn,
    input  wire [1:0] in,
    output wire [1:0] out
    );
    
    reg [1:0] state,next_state;
    
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            state <= S0; 
        end else begin
            state <= next_state;
        end
    end    
    
    always@(*) begin
        case(state) 
            S0  : begin
                      if(in == 2'b01) begin
                          next_state = S1;
                      end else if(in == 2'b10) begin
                          next_state = S2;
                      end else if(in == 2'b11) begin
                          next_state = S3;
                      end else begin
                          next_state = S0;
                      end
           end
           S1  : begin
                     if (in == 2'b10) begin
                         next_state = S2;
                     end else if(in == 2'b11) begin
                         next_state = S3; 
                     end else begin
                         next_state = S1;
                     end    
           end              
           S2  :begin
                    if(in == 2'b11) begin
                        next_state = S3;
                    end else begin
                        next_state = S2;
                    end
           end   
           S3  :begin
                    next_state = S3;
           end
           default : next_state = S0;         
        endcase 
    end
    
    assign out = state;
endmodule
