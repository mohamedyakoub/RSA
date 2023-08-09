`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 12:00:23 PM
// Design Name: 
// Module Name: Bram
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


module Bram#(parameter addr=18,data_width=6)(
    input clk,
    input [addr-1:0] address,
    output reg [data_width-1:0] data
    );
    (*rom_style = "block"*) reg [data_width-1:0] mem [0:2**addr -2**12 -1];
    
    initial begin
    
     $readmemb("binary.txt",mem);
     
    end
    always@(posedge clk)begin
      data<=mem[address];
    end
endmodule
