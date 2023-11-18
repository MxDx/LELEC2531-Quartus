`timescale 1ns/1ps

module testbench();
	
	/*
	 *	Define some signals for driving input ports and recording output ports.
	 */
	logic 		clk;
	logic 		reset;
	logic		KEY;
	
	logic [7:0]	LED;
	
	
	// Instantiate the DUT.
	DE0_NANO dut (
		.CLOCK_50		(clk),
		.KEY			({KEY, ~reset}),
		.LED			(LED)
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
		KEY		= 1'b1;
		reset	= 1'b1;
		
		// After a while, cancel reset and lets just observe what happens...
		#100;
		reset	= 1'b0;

	end
	// synthesis translate_on
endmodule


