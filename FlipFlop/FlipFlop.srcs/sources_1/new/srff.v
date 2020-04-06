`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:26:47
// Design Name: 
// Module Name: srff
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


module srff(
    input [1:0] sr,
    input clk,
    input clr,
    output reg q
    );
    always@(posedge clk, negedge clr)
    begin
    if(!clr)
    q=1'b0;
    else
    begin
    case(sr)
    2'b00:q=q;
    2'b01:q=1'b0;
    2'b10:q=1'b1;
    2'b11:q=2'bzz;
    endcase
    end
    end
    
endmodule
