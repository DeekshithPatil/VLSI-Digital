`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2019 00:34:31
// Design Name: 
// Module Name: evenodd
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

module evenodd_tb();
reg in,clk;
wire [3:0] count;
evenodd e1 (in,clk,count);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
#0 in=0;
#100 in=1;
#100 $finish;
end
endmodule

module evenodd(
    input in,
    input clk,
    output reg [3:0] count=4'b0000
    );
    
    always@(posedge clk)
    begin
    if(!in)
    begin
            if(count[0]==1)
            count=count+1;
            else if (count==4'b1110)
            count=4'b0000;
            else
            count=count+2;
    end
    else
    begin
            if(count[0]==0)
            count=count+1;
            else if (count==4'b1111)
            count=4'b0001;
            else
            count=count+2;
    end
    end
endmodule
