`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 18:13:15
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
reg clk,clr,t;
wire q;
tff t1 (q,clk,clr,t);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin
#0 clr=1'b0;t=1'bx;
#10 clr=1'b1;t=1'b0;
#10 clr=1'b1;t=1'b1;
#10 clr=1'b1;t=1'b0;
#10 clr=1'b1;t=1'b1;
#100 $finish;
end

endmodule
