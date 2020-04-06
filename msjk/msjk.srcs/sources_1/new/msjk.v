`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2019 10:39:00
// Design Name: 
// Module Name: msjk
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

module msjk(j,k,clk,clr,q,qb);
input j,k,clk,clr;
output q,qb;
wire w1,w2,w3;
not n1 (w3,clk);
jkff j1 (j,k,clk,clr,w1,w2);
jkff j2 (w1,w2,w3,clr,q,qb);
endmodule

module msjk_tb();
reg j,k,clk,clr;
wire q,qb;
msjk m1(j,k,clk,clr,q,qb);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 {j,k,clr}=3'b000;
#10 {j,k,clr}=3'b011;
#10 {j,k,clr}=3'b101;
#10 $finish;
end
endmodule

module jkff(
    input  j,k,
    input clk,
    input clr,
    output reg q, qb
    );
    always@(posedge clk, negedge clr)
    begin
    if(!clr)
    begin
    q=1'b0;
    qb=1'b1;
    end
    else
    begin
    case({j,k})
    2'b00:begin q=q; qb=qb; end
    2'b01:{q,qb}=2'b01;
    2'b10:{q,qb}=2'b10;
    2'b11:begin q=~q; qb=~qb; end
    endcase
    end
    end
endmodule

module jkff_tb();
reg j,k;
reg clk,clr;
wire q,qb;
jkff j1 (j,k,clk,clr,q,qb);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 clr=1'b0;{j,k}=2'bxx;
#10 clr=1'b1;{j,k}=2'b00;
#10 clr=1'b1;{j,k}=2'b01;
#10 clr=1'b1;{j,k}=2'b10;
#10 clr=1'b1;{j,k}=2'b11;
#10 $finish;
end
endmodule