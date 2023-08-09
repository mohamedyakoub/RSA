`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 12:00:23 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input reset,
    input [5:0] exponent,
    output sel,
    output done
    );
    reg [5:0]Q_next,Q_reg;
    always@(posedge clk,negedge reset)begin
        if(!reset)
          Q_reg<='b0;
        else
          Q_reg<=Q_next;
    end
    
    always@(*)begin
    
    if(Q_reg!=exponent-1'b1)
      Q_next=Q_reg+1'b1;
    else begin
      Q_next=Q_reg;
    end
    
    end
    
    assign sel= (Q_reg)? 1'b1:1'b0;
    assign done= (Q_reg==exponent-1'b1);
endmodule
