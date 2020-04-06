`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2019 00:11:37
// Design Name: 
// Module Name: jkcnt
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
reg clk,clr;
wire q1,q0;
cnt c1 (clk,clr,q1,q0);
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

module cnt(clk,clr,q1,q0);
input clk ,clr;
output q1,q0;
initial begin
q0=1'b0;
q1=1'b0;
end
jk j1 (q0,q0,clk,clr,q1);
jk j2 (1,1,clk,clr,q0);
endmodule


module jkff(
    input j,
    input k,
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


