`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2019 00:26:29
// Design Name: 
// Module Name: jksinmod16
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

module cnt_tb();
wire [3:0] q;
reg clk,clr;

cnt c1 (q,clk,clr);

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

module cnt (q,clk,clr);
output [3:0] q;
input clk,clr;
wire w1, w2;
and a1 (w1,q[1],q[0]);
and a2 (w2,w1,q[2]);
jkff j1 (1,1,clk,clr,q[0]);
jkff j2 (q[0],q[0],clk,clr,q[1]);
jkff j3 (w1,w1,clk,clr,q[2]);
jkff j4 (w2,w2,clk,clr,q[3]);
endmodule


module jkff(
    input  j,
    input  k,
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
    case({j,k})
    2'b00:q=q;
    2'b01:q=2'b10;
    2'b10:q=2'b01;
    2'b11:q=~q;
    endcase
    end
    end
endmodule