`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:56:52
// Design Name: 
// Module Name: dff
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


module dff(
    input d,
    input clk,
    input clr,
    output reg q
    );
    always@(posedge clk,negedge clr)
    begin
    if(!clr)
    q=1'b0;
    else
    begin
    case(d)
    1'b0:q=1'b0;
    1'b1:q=1'b1;
    endcase
    end
    end
endmodule
