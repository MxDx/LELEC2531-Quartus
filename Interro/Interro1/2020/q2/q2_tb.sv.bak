`timescale 1ns/1ps

module testbench_2();
	
	/*
	 *	Define some signals.
	 *	In general, every INPUT to the Device Under Test should be a 'register', every
	 *	OUTPUT a wire. But hey, don't believe me if you don't want to, try anything you wish.
	 */
	reg 		clk;
	wire        [15:0]   counterOut;
    reg        [15:0]   counterInData;
	reg         counterInMSB, counterInLSB;
	reg         doReset;	
    reg         doLoad;		       
	reg         doIncrement;		       
	reg         doDecrement;		       
	reg         doShiftL2R;			       
	reg         doShiftR2L;		       
	

	q2 q2_tsb (
		.Clock		(clk),
		.CounterOut (counterOut),
        .CounterInData(counterInData),
		.CounterInMSB (counterInMSB),
		.CounterInLSB (counterInLSB),
		.DoReset (doReset),
        .DoLoad (doLoad),
		.DoIncrement (doIncrement),
		.DoDecrement (doDecrement),
		.DoShiftL2R (doShiftL2R),
		.DoShiftR2L (doShiftR2L)
	);

	
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

        #50
        doShiftR2L  = 1'b0;
        doLoad = 1'b1;
        counterInData = 16'b1010101010101010;

        #50
        $stop;
				
		end
endmodule