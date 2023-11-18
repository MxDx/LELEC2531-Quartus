`timescale 1ns/1ps 		// time unit / compiler time precision

module test_fulladder_4bit ();

// Set up variables 

logic [3:0] A, B;
logic C_IN;

// define wires (signals) to record output 
 
logic [3:0] SUM;
logic C_OUT;

// instantiante the 4-bit full adder that we call FA_4BIT   

full_adder_4_bit FA_4BIT ( 
	.a(A),
	.b(B),
	.c_in(C_IN),
	.sum(SUM),
	.c_out(C_OUT));
						   
// Stimulate Inputs 

initial 
	begin
		A = 4'd0; //  4' indicates the width in bits of the value which is given in decimal (0).  
		B = 4'd0;
		C_IN = 1'b0;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd3; 
		B = 4'd4;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd2; 
		B = 4'd5;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd9; 
		B = 4'd9;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd10; 
		B = 4'd15;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd10; 
		B = 4'd5;
		
		# 5 // wait after 5 delay time 
		
		A = 4'd0; 
		B = 4'd0;
		
	end 

endmodule  
		
		
		
		
							