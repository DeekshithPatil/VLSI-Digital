`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:30:57
// Design Name: 
// Module Name: srff_tb
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


module srff_tb();
reg [1:0] sr;
reg clk,clr;
wire q;
srff s1 (sr,clk,clr,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;sr=2'bxx;
#10 clr=1'b1;sr=2'b00;
#10 clr=1'b1;sr=2'b01;
#10 clr=1'b1;sr=2'b10;
#10 clr=1'b1;sr=2'b11;
#10 $finish;
end

endmodule
