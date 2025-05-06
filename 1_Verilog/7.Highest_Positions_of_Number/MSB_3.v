`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bharadwaja Pisupati 
// 
// Create Date: 05.05.2025 15:25:13
// Design Name: 
// Module Name: MSB_3
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


module MSB_3(
    input   wire [7:0] in    ,
    output  wire [2:0] pos1  ,
    output  wire       valid , 
    output  wire [2:0] pos2  ,
    output  wire       valid1,     
    output  wire [2:0] pos3  ,
    output  wire       valid2    
);
    
    Pe8x3 One(
        .in   (in   )  ,
        .out  (pos1 )  ,
        .valid(valid)    
    );
    
    wire [7:0] out1,out2,out3,out4,out5;
    decoder3x8 Two(
        .in   (pos1 ),
        .en   (valid),
        .out  (out1 )
    );
    
    assign out2 = out1 ^ in;
    
    Pe8x3 Three(
        .in   (out2  )  ,
        .out  (pos2  )  ,
        .valid(valid1)    
    );
    
    decoder3x8 Four(
        .in   (pos2  ),
        .en   (valid1),
        .out  (out3  )
    );
    
    assign out4 = out3 ^ out2;
    
    Pe8x3 Five(
        .in   (out4  )  ,
        .out  (pos3  )  ,
        .valid(valid2)    
    );
    
    decoder3x8 Six(
        .in   (pos3  ),
        .en   (valid2),
        .out  (out5  )
    );
    
    
endmodule
