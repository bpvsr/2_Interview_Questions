`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja PVSR
// 
// Create Date: 20.06.2025 22:31:59
// Design Name: 
// Module Name: FSM_2
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


module FSM_2(
    input  wire clk,
    input  wire rstn,
    input  wire [1:0] in,
    output wire out
    );
    
    parameter s0 = 2'b00,s1 = 2'b01,
              s2 = 2'b10,s3 = 2'b10;
              
    reg [1:0] state,next_state;
    
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            state <= s0;
        end else begin
            state <= next_state;
        end
    end
    
    always@* begin
        case(state)
            s0  : begin
                    if(in == 2'b00) begin
                        next_state = s0; 
                    end else if(in == 2'b01) begin
                        next_state = s1;
                    end else if(in == 2'b10) begin
                        next_state = s0; 
                    end else if(in == 2'b11) begin
                        next_state = s2;
                    end  
            end
            s1  : begin
                    if(in == 2'b00) begin
                        next_state = s1;
                    end else if(in == 2'b01) begin
                        next_state = s1;
                    end else if(in == 2'b10) begin
                        next_state = s0;
                    end else if(in == 2'b11) begin
                        next_state = s3;
                    end              
            end
            s2  : begin
                    if(in == 2'b00) begin
                        next_state = s2;
                    end else if(in == 2'b01) begin
                        next_state = s1;  
                    end else if(in == 2'b10) begin
                        next_state = s0; 
                    end else if(in == 2'b11) begin
                        next_state = s3;
                    end              
            end
            s3  : begin
                    if(in == 2'b00) begin
                        next_state = s3;     
                    end else if(in == 2'b01) begin
                        next_state = s1;
                    end else if(in == 2'b10) begin
                        next_state = s0;
                    end else if(in == 2'b11) begin
                        next_state = s2;
                    end              
            end  
        endcase
    end
    
    assign out = ((state == s1) || (state == s3)) ? 1'b1 : 1'b0;
endmodule
