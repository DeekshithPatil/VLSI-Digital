`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 21:37:16
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
module asyncnt_tb();
reg clk,clr;
wire [3:0] q;
asyncnt a1 (q,clk,clr);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;
#10 clr=1'b1;
#150 $finish;
end 
endmodule


module asyncnt(q,clk,clr);
output [3:0] q;
input clk,clr;
wire w1,w2,w3,w4,w5;
not n1 (w1,q[0]);
not n2 (w2,q[2]);
nand a1 (w3,q[1],w1,q[3],w2);
and a2 (w4,w3,clr);
tff t1 (q[0],clk,w4,1);
tff t2 (q[1],q[0],w4,1);
tff t3 (q[2],q[1],w4,1);
tff t4 (q[3],q[2],w4,1);
endmodule


module tff(
    output reg q,
    input clk,
    input clr,
    input t
    );
   
    always@(negedge clr, negedge clk)
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
