`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 12:00:23 PM
// Design Name: 
// Module Name: Mult
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


  (* USE_DSP="yes" *) module Mult(
    input [5:0] A,
    input [5:0] B,
    input done,
    output [11:0] C
    );
    assign C=(done)? B:A*B;
endmodule
