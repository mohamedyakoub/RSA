`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 12:00:23 PM
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
    input [5:0] A,
    input [5:0] B,
    input sel,
    output  [5:0] C
    );
       
    assign C=(sel)? A:B; 
//    always@(*)begin
//     case(sel)
//        1'b0:C=A;
//        1'b1:C=B;
//     endcase
//    end
     
endmodule
