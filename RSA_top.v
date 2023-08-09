`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 01:29:24 PM
// Design Name: 
// Module Name: RSA_top
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


module RSA_top(
    input clk,
    input start,
    input [5:0] exponent,
    input [5:0] Base,
    input [5:0] N,
    output [5:0] result,
    output valid
    );
    
    wire sel_mult,done;
    wire [5:0] result_path,mux_out;
    wire [11:0] mult_out;
    
    Bram modulo(
     .clk(clk),
     .address({N-1'b1,mult_out}),
     .data(result_path)
    );
    
    mux_2x1 mux(
     .A(result_path),
     .B(Base),
     .sel(sel_mult),
     .C(mux_out)
    );
    
     Mult mult(
     .A(Base),
     .B(mux_out),
     .done(done),
     .C(mult_out)
    );
    
    counter cntr(
     .clk(clk),
    .reset(!start),
    .exponent(exponent),
    .sel(sel_mult),
    .done(done)
    );
    
    assign valid=done;
    assign result= (done==1)? result_path:0;
endmodule
