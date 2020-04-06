`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:49:33
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb();
reg [1:0] jk;
reg clk,clr;
wire q;
jkff j1 (jk,clk,clr,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;jk=2'bxx;
#10 clr=1'b1;jk=2'b00;
#10 clr=1'b1;jk=2'b01;
#10 clr=1'b1;jk=2'b10;
#10 clr=1'b1;jk=2'b11;
#10 $finish;
end
endmodule
