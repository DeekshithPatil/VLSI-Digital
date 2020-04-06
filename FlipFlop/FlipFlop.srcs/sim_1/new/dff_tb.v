`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 19:00:22
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg d,clk,clr;
wire q;
dff d1(d,clk,clr,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;d=1'bx;
#10 clr=1'b1;d=1'b0;
#10 clr=1'b1;d=1'b1;
#10 clr=1'b1;d=1'b0;
#10 clr=1'b1;d=1'b1;
#10 $finish;
end
endmodule
