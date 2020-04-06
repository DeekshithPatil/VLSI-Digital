`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:46:52
// Design Name: 
// Module Name: jkff
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


module jkff(
    input [1:0] jk,
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
    case(jk)
    2'b00:q=q;
    2'b01:q=2'b10;
    2'b10:q=2'b01;
    2'b11:q=~q;
    endcase
    end
    end
endmodule
