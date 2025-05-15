`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati 
// 
// Create Date: 13.05.2025 12:22:45
// Design Name: 
// Module Name: FSM_3
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


module FSM_3(
    input  wire clk ,
    input  wire rstn,
    input  wire in  ,
    output wire out
    );
    
    reg [3:0] state,next_state;
    
    parameter S0 = 4'b0000;
    parameter S1 = 4'b0001;
    parameter S2 = 4'b0010;
    parameter S3 = 4'b0011;
    parameter S4 = 4'b0100;
    parameter S5 = 4'b0101;
    parameter S6 = 4'b0110;
    parameter S7 = 4'b0111;
    parameter S8 = 4'b1000;
    
    
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
                      if(in) begin
                          next_state = S1;
                      end else begin
                          next_state = S2;
                      end
            end
            S1  : begin
                      if(in) begin
                          next_state = S3;
                      end else begin
                          next_state = S0;
                      end
            end
            S2  : begin
                      if(in) begin
                          next_state = S6;
                      end else begin
                          next_state = S2;
                      end
            end
            S3  : begin
                      if(in) begin
                          next_state = S3;
                      end else begin
                          next_state = S4;
                      end
            end                           
            S4  : begin
                      if(in) begin
                          next_state = S6;
                      end else begin
                          next_state = S5;
                      end
            end                     
            S5  : begin
                      if(in) begin
                          next_state = S6;
                      end else begin
                          next_state = S2;
                      end
            end            
            S6  : begin
                      if(in) begin
                          next_state = S3;
                      end else begin
                          next_state = S7;
                      end
            end            
            S7  : begin
                      if(in) begin
                          next_state = S8;
                      end else begin
                          next_state = S2;
                      end
            end            
            S8  : begin
                      if(in) begin
                          next_state = S3;
                      end else begin
                          next_state = S7;
                      end
            end  
     default   : begin
                    next_state = S0;
            end                      
        endcase
    end
    
    wire out1,out2,out3;
    assign out1 = (state == S8) && (in == 1'b1); 
    assign out2 = (state == S5) && (in == 1'b1); 
    assign out3 = (state == S5) && (in == 1'b0); 
    
    assign out = out1 | out2 | out3;
endmodule
