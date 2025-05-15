`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati
// 
// Create Date: 13.05.2025 12:51:39
// Design Name: 
// Module Name: fsm_3_sim
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


module fsm_3_sim();

    reg clk ;
    reg rstn;
    reg in  ;
    wire out;
    
    FSM_3 DUT(
        .clk (clk ),
        .rstn(rstn),
        .in  (in  ),
        .out (out )
        );
        
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end        

    task test_1100(); begin
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
    end
    endtask
    
    task test_11001(); begin
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
    end
    endtask    
    
    task test_01011(); begin
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
    end
    endtask        
    
   
    
    initial begin
        @(posedge clk) rstn <= 1'b0; 
        test_1100();test_1100();test_1100();
         @(posedge clk) rstn <= 1'b0;
        test_11001();test_11001();test_11001();         
         @(posedge clk) rstn <= 1'b0;
       test_01011();test_01011();test_01011();         
         @(posedge clk) rstn <= 1'b0;
      test_1100();test_11001();test_01011();         
         @(posedge clk) rstn <= 1'b0;
      test_11001();test_1100();test_01011();         
         @(posedge clk) rstn <= 1'b0;
      test_01011();test_11001();test_1100();      
         @(posedge clk) rstn <= 1'b0;
   test_1100();test_01011();test_11001();                                       
        @(posedge clk);
/*        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1;
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b1; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0; 
        @(posedge clk) rstn <= 1'b1;in <= 1'b0;        
*/        
        @(posedge clk);
        $finish; 
    end
    
 
    
endmodule
