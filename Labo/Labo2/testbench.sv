/*
 *	ELEC2531: TP VERILOG 2
 *	FB, 2013.
 */

`timescale 1ns/1ps




module my_wonderful_testbench();
	
	/*
	 *	Define some signals.
	 *	In general, every INPUT to the Device Under Test should be a 'register', every
	 *	OUTPUT a wire. But hey, don't believe me if you don't want to, try anything you wish.
	 */
	reg 		clk;
	reg 		reset;
	reg	[31:0]	A;
	reg	[31:0]	B;
	
	wire [31:0]	cnt;
	wire [31:0]	sum;
	wire		even;
	
	// Instantiate the DUT.
	my_sync_design dut (
		.clk			(clk),
		.reset			(reset),

		.A				(A),
		.B				(B),
	
		.sum			(sum),
		.count			(cnt),
		.sum_is_even	(even)
	);

	
	// synthesis translate_off
	/*
	 *	And set the signals!
	 *	Since we are in lovely simulator land, we can use all sorts of
	 *	non-synthesisable constructs! :)
	 */
	always	#10 clk = ~clk;
	
	initial begin
		clk		= 1'b0;
		reset	= 1'b1;
		A		= 32'h44;
		B		= 32'h45;
		#100;
		reset	= 1'b0;
		#20;
		A		= 32'h45;
		B		= 32'h58;
		#20;
		A		= 32'h43;
		B		= 32'h50;
		#20;
		A		= 32'h41;
		B		= 32'h52;
		#20;
		A		= 32'h46;
		B		= 32'h45;
		#20;
		A		= 32'h20;
		B		= 32'h53;
		#20;
		A		= 32'h49;
		B		= 32'h53;
		#20;
		A		= 32'h53;
		B		= 32'h4F;
		#20;
		A		= 32'h20;
		B		= 32'h20;
		#20;
		A		= 32'h42;
		B		= 32'h49;
		#20;
		A		= 32'h41;
		B		= 32'h53;
		#20;
		A		= 32'h44;
		B		= 32'h20;
		#20;
		A		= 32'h20;
		B		= 32'h42;
		#20;
		A		= 32'h43;
		B		= 32'h45;
		#20;
		A		= 32'h4F;
		B		= 32'h54;
		#20;
		A		= 32'h46;
		B		= 32'h54;
		#20;
		A		= 32'h46;
		B		= 32'h45;
		#20;
		A		= 32'h45;
		B		= 32'h52;
		#20;
		A		= 32'h45;
		B		= 32'h2E;
	end
	// synthesis translate_on
endmodule


