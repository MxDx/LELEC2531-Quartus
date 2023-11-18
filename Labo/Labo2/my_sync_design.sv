/*
 *	ELEC2531: TP VERILOG 2
 *	FB, 2013
 */

module my_sync_design(
	// New signals for use in synchronous designs:
	input	clk,
	input	reset,
	
	// Other signals used for functionality
	input	[31:0]	A,
	input	[31:0]	B,
	
	output	[31:0]	sum,
	output	[31:0]	count,
	output			sum_is_even
);


	// Define a series of registers. These are actual, physical registers as the signals are used in an always_ff block.
	reg		[31:0]	register_A;
	reg		[31:0]	register_B;
	reg		[31:0]	calculator;
	
	
	/*
	 *	Now we define a 'sensitivity list' for the block.
	 *	The always block will only execute when one of the listed conditions is TRUE.
	 *	The _ff indicates that this should be implemented physically using a Flip-Flop.
	 */
	always_ff @ (posedge clk, posedge reset)
	begin
		
		/*
		 *	Because we are now doing synthesis, we can no longer use constructs such as "initial", since
		 *	these have no physical meaning. Instead, we rely on a 'reset' signal to give initial values
		 *	to our registers. Not doing this is BAAAD!
		 */
		if(reset) begin
			register_A	<=	32'b0; // Parallel assignation
			register_B	<=	32'b0;
			calculator	<=	32'b0;
		end
		
		/*
		 *	If not reset, then we are simply being called by the clock, let's do something useful!
		 */
		else begin
		
			/*
			 *	The following copies the values of A and B into the respective registers at the positive edge of the clock.
			 *	After that, the values of A and B can change, but the registers will still hold the old value. Cool, huh?
			 */
			register_A	<=	A;
			register_B	<=	B;
			
			/*
			 *	Now do something useful with the data. Store the sum of the register contents in the 'calculator' register.
			 *	NOTICE: we are currently using non-blocking assignments (" <= "), which means that the operation actually
			 *	takes 2 clock cycles to complete. See the tutorial for more details.
			 *	(by the way, we made you do the sum the hard way in the last session. It is often easier to just use '+', it
			 *	it automatically recognised by most tools and will implement the 'standard' full adder. If you need more control
			 *	over it, you can go back to implementing it by hand).
			 */
			calculator	<=	register_A + register_B;
		
		end
	
	end
	
	
	/*
	 *	Now we have the values stored in the registers, lets map their output values onto the output pins...
	 *	We also instantiate two modules to perform other random tasks.
	 */
	assign sum = calculator;
	
	// The clock counter
	// Notice that we send a parameter value (#...) to the counter. 
	counter #(.number_of_bits(32))	my_clock_counter (.reset(reset), .clk(clk), .count(count));
	
	// The comparator (notice: a purely combinatorial module)
	even_or_odd my_oddity (.data_in(sum), .data_out(sum_is_even));
	
endmodule




/*
 *	This module tests bit0 of the input to determine parity.
 *	It is a purely combinatorial function (why waste a perfectly good clock cycle? :p).
 */
module even_or_odd (
	input	[31:0]	data_in,
	output			data_out
);

	assign	data_out = data_in[0] ? 1'b0 : 1'b1;
	
endmodule





/*
 *	This module is a counter.
 *	It is reset by a reset signal, and otherwise counts the number of positive clock edges.
 *	To make things more fun, we can parameterise it to have a variable number of output bits. This is
 *	set to a particular value once it is instanciated. If not specified then, the default value defined
 *	below will be used.
 */
module counter #(
	parameter							number_of_bits = 12			// Define a parameter that defaults to 12 bits.
) (
	input								reset,
	input								clk,
	output	reg	[number_of_bits-1:0]	count						// This defines a REGISTER (and an output).
);
	
	
	// Same as usual:
	always_ff @ (posedge clk, posedge reset)
	begin
		
		if(reset)	count	<=	'b0;				// Notice the missing width indication. By default this fits the target signal, but we can also be less subtle
													// about it, eg: {number_of_bits{1'b0}}.
		else		count	<=	count + 'd1;
		
	end
	
endmodule
