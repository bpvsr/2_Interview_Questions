`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja
// 
// Create Date: 05.05.2025 14:22:31
// Design Name: 
// Module Name: twos_comp
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


module twos_comp(
    input  wire clk,
    input  wire rstn,
    input  wire in,
    output wire out
);
    reg state,next_state;
    parameter S0 =1'b0;    
    parameter S1 =1'b1;    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            state <= S0;
        end else begin
            state <= next_state;
        end
    end
    
    always@* begin
        case(state) 
            S0  : begin
                      if(in) begin
                          next_state = S1;
                      end else begin
                          next_state = S0;
                      end     
            end
            S1  : begin
                      next_state = S1;        
            end
        endcase
    end
    
    
    assign out = state ^ in;
    
endmodule
