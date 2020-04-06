`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:10:35
// Design Name: 
// Module Name: tff
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


module tff(
    output reg q,
    input clk,
    input clr,
    input t
    );
   
    always@(posedge clk, negedge clr)
    begin
    if(!clr)
    q=1'b0;
    else
    begin
    case(t)
    1'b0:q=q;
    1'b1:q=~q;
    endcase
    end
    end
    
    
endmodule
