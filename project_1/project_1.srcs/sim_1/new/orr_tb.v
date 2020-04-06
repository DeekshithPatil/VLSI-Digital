`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2019 17:24:22
// Design Name: 
// Module Name: orr_tb
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


module orr_tb(

    );
    wire y;
    reg a,b;
    orr x1(a,b,y);
    initial begin
    #0 a=1'b0;b=1'b0;
    #10 a=1'b1;b=1'b0;
    #10 $finish;
    end
endmodule
