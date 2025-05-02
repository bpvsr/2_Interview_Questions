`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2025 15:44:59
// Design Name: 
// Module Name: seq3
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


// Code your design here
module seq_gen(
    input  wire       clk , 
    input  wire       rstn,
    output reg  [3:0] out
);
  
    reg [3:0] count;
    reg valid;
    reg [3:0] state;
  
    parameter S0 = 4'd0; parameter S1 = 4'd1; parameter S2 = 4'd2; parameter S3 = 4'd3;
    parameter S4 = 4'd4; parameter S5 = 4'd5; parameter S6 = 4'd6; parameter S7 = 4'd7;
    parameter S8 = 4'd8; parameter S9 = 4'd9;
  
  
    always@(posedge clk or negedge rstn) begin
        if(!rstn) begin
            count <= 4'd0;  
        end else if(valid)begin
            count <= count + 1'b1;
        end else begin
            count <= 4'd0;
        end
    end
  
    always@(posedge clk or negedge rstn) begin
      if(!rstn) begin
          state <= S0;
          out   <= 4'd0;
      end else begin
          case(state)
              S0	: begin
                          out        <= 4'd0;
                          state      <= S1; 
              end 
              S1	: begin
                          out        <= 4'd1;
                          state      <= S2;
                          valid      <= 1'b1;
              end
              S2	: begin
                          out        <= 4'd2;
                          if(count == 1) begin
                              state      <= S3;
                              valid      <= 1'b1; 
                          end else if(count == 0) begin
                              state      <= S2;
                              valid      <= 1'b0; 
                          end else begin 
                              state      <= state;
							  valid      <= valid;
                          end   
              end
              S3	: begin
                          out <= 4'd3;
                          if(count == 2) begin
                                state <= S4;
                                valid <= 1'b0;
                          end else if(count == 1) begin
                               state <= S3;
                               valid <= 1'b0;
                          end else if(count >= 0) begin
                               state <= S3;
                               valid <= 1'b1;
                          end else begin  
                               state <= state;
                               valid <= valid;                
                          end         
              end
              S4	: begin
                          out <= 4'd4;
                          if(count == 2) begin
                              state <= S5;
                              valid <= 1'b1;
                          end else if(count == 1) begin
                              state <= S4;
                              valid <= 1'b0;
                          end else if(count < 2) begin
                              state <= S4;
                              valid <= 1'b1;
                          end else begin
                              state <= state;
                              valid <= valid;                            
                          end
              end
              S5	: begin
              	          out <= 4'd5;
                          if(count == 4) begin
                              state <= S6;
                              valid <= 1'b1;
                          end else if(count == 3) begin
                              state <= S5;
                              valid <= 1'b0;
                          end else if(count <= 2) begin
                              state <= S5;
                              valid <= 1'b1;
                          end else begin
                              state <= state;
                              valid <= valid;                            
                          end                         
              end
              S6    : begin
                          out <= 4'd6;   
                          if(count == 5) begin
                              state <= S7;
                              valid <= 1'b1;
                          end else if(count == 4) begin
                              state <= S6;
                              valid <= 1'b0;
                          end else if(count <= 4) begin
                              state <= S6;
                              valid <= 1'b1;
                          end else begin
                              state <= state;
                              valid <= valid;                            
                          end            
              end
              S7	: begin
                          out <= 4'd7; 
                          if(count == 6) begin
                              state <= S8;
                              valid <= 1'b1;
                          end else if(count == 5) begin
                              state <= S7;
                              valid <= 1'b0;
                          end else if(count <= 5) begin
                              state <= S7;
                              valid <= 1'b1;
                          end else begin
                              state <= state;
                              valid <= valid;                            
                          end  
              end
              S8	: begin
                          out <= 4'd8;
                          if(count == 7) begin
                              state <= S9;
                              valid <= 1'b1;
                          end else if(count == 6) begin
                              state <= S8;
                              valid <= 1'b0;
                          end else if(count <= 6) begin
                              state <= S8;
                              valid <= 1'b1;
                          end else begin
                              state <= state;
                              valid <= valid;                            
                          end                        
              end
              S9	: begin
                         out <= 4'd9;
                         if(count == 8) begin
                             state <= S1;
                             valid <= 1'b0;
                         end else if(count == 7) begin
                             state <= S9;
                             valid <= 1'b0;
                         end else if(count <= 7) begin
                             state <= S9;
                             valid <= 1'b1;
                         end else begin
                             state <= state;
                             valid <= valid;                            
                         end                                    
              end
          endcase
      end
    end
endmodule
  