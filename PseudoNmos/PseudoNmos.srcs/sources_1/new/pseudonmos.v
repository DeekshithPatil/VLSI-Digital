`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2019 23:56:36
// Design Name: 
// Module Name: pseudonmos
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


module pseudonmos(
    input a,
    output y
    );
    supply1 vdd;
    supply0 gnd;
    wire w1;
    rpmos p1 (w1,vdd,gnd);
    nmos n1 (w1,gnd,a);
    rpmos p2 (y,vdd,gnd);
    nmos n2 (y,gnd,w1);
    
endmodule
