`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 23:37:14
// Design Name: 
// Module Name: mod4syn
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
module mod4_tb();
wire [3:0]q;
reg clr;
reg clk;
mod4syn z1(clr,clk,q);
initial begin
#0 clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;
#10 clr=1'b1;
#200 $finish;
end 
endmodule
module mod4syn(
    input clr,
    input clk,
    output [3:0] q
    );
    wire w1,w2,w3,w4,w5,w6,w7;
    not m1(w3,q[0]);
    not m2(w4,q[2]);
    and m3(w5,w3,w4,q[3],q[1]);
    not m4(w6,w5);
    and(w7,clr,w6);
    and x1(w1,q[1],q[0]);
    and x2(w2,w1,q[2]);
    tff t1(q[0],clk,w7,1);
    tff t2(q[1],clk,w7,q[0]);
    tff t3(q[2],clk,w7,w1);
    tff t4(q[3],clk,w7,w2);
    
endmodule

module tff(
    output reg q,
    input clk,
    input clr,
    input t
    );
   
    always@(negedge clr, posedge clk)
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
