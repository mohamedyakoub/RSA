`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2023 01:46:48 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );
parameter clk_period = 10;
	/*
	reg clkp = 0;
	reg clkn = 1;
	always #(clk_period/2) clkp = ~ clkp;
	always #(clk_period/2) clkn = ~ clkn;
	*/
	
	reg clk = 0;
	always #(clk_period/2) clk = ~ clk;
	reg start_tb;
	reg [5:0] data_tb,N_tb,key_tb;
	wire[5:0] result_tb;
	wire Done_tb;
	
	RSA_top dut (
    .clk(clk),
    .start(start_tb), 
    .exponent(key_tb), 
    .Base(data_tb), 
    .N(N_tb), 
    .result(result_tb), 
    .valid(Done_tb)
    );
	 
	initial begin
	
		start_tb = 1;
		data_tb = 6'd23;
		N_tb = 6'd10;
		key_tb = 6'd50;
		#(3*clk_period);
		start_tb = 0;
		#(50*clk_period);
		
		
		
		start_tb = 1;
		data_tb = 6'd40;
		N_tb = 6'd36;
		key_tb = 6'd15;
		#(3*clk_period);
		start_tb = 0;
		#(50*clk_period);
		
		
		start_tb = 1;
		data_tb = 6'd43;
		N_tb = 6'd20;
		key_tb = 6'd10;
		#(3*clk_period);
		start_tb = 0;
		#(50*clk_period);
	end

endmodule
