`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati 
// 
// Create Date: 12.05.2025 14:46:39
// Design Name: 
// Module Name: fsm_counter
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


module fsm_counter(
    input  wire clk ,
    input  wire rstn,
    input  wire in  ,
    output wire [1:0]count
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
    
    always@(*)begin
        case(state) 
            S0  :   begin
                        next_state = S1;
            end
            S1  :   begin
                        next_state = S2;
            end
            S2  :   begin
                        if(in) begin
                            next_state = S3;
                        end else begin
                            next_state = S0; 
                        end 
            end
            S3  :   begin
                        next_state = S0;
            end
            default : begin
                          next_state = S0;
            end
        endcase
    end 
    
    assign count = state;
endmodule
