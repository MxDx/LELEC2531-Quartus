`timescale 1ns/1ps

module testbench_homework_2();
	
	/*
	 *	Define some signals.
	 *	In general, every INPUT to the Device Under Test should be a 'register', every
	 *	OUTPUT a wire. But hey, don't believe me if you don't want to, try anything you wish.
	 */
	reg 		clk;
	wire        [7:0]   counterOut;
	reg         counterInMSB, counterInLSB;
	reg         doReset;			       
	reg         doIncrement;		       
	reg         doDecrement;		       
	reg         doShiftL2R;			       
	reg         doShiftR2L;		       
	

	Homework_2 hw2 (
		.Clock		(clk),
		.CounterOut (counterOut),
		.CounterInMSB (counterInMSB),
		.CounterInLSB (counterInLSB),
		.DoReset (doReset),
		.DoIncrement (doIncrement),
		.DoDecrement (doDecrement),
		.DoShiftL2R (doShiftL2R),
		.DoShiftR2L (doShiftR2L)
	);

	
	// synthesis translate_off
	/*
	 *	And set the signals!
	 *	Since we are in lovely simulator land, we can use all sorts of
	 *	non-synthesisable constructs! :)
	 */
	always	#10 clk = ~clk;
	
	initial 
		begin
		clk		= 1'b0;
		doReset	= 1'b1;
		counterInMSB 	= 1'b0;
		counterInLSB 	= 1'b0;
		doIncrement 	= 1'b0;
		doDecrement 	= 1'b0;
		doShiftL2R 	= 1'b0;
		doShiftR2L 	= 1'b0;
		
		#25;
		
		doReset	= 1'b0;
		doIncrement 	= 1'b1;
		
		#500
		
		doIncrement 	= 1'b0;
		doDecrement 	= 1'b1;
		
		#1000
		
		doDecrement 	= 1'b0;
		doIncrement 	= 1'b1;
		
		#100
		
		doIncrement 	= 1'b0;
		doShiftL2R	= 1'b1;
		
		#150
		
		doShiftL2R	= 1'b0;
		doIncrement 	= 1'b1;
		
		#500
		
		doIncrement 	= 1'b0;
		doShiftR2L 	= 1'b1;
		
		#30
		
		doShiftR2L 	= 1'b0;
		counterInMSB     = 1'b1;
		counterInLSB     = 1'b1;
		doShiftL2R	= 1'b1;
		
		#50
		
		doShiftL2R	= 1'b0;
		doShiftR2L 	= 1'b1;
				
		end


endmodule


