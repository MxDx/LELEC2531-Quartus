
module DE0_NANO(
	input	logic			CLOCK_50,
	input	logic [1:0]		KEY,
	output	logic [7:0]		LED
);

	/*
	 *		Lets define a few internal signals ...
	 */
	logic [31:0]	cnt;
	logic			   mode;
	logic			   reset;
	logic 		   key1_pressed;
	
	logic [7:0]		display1;
	logic [15:0]	display2;

	/*
	 *		And assign some values to them!
	 */
	assign reset		= ~KEY[0];	// KEYS are active-LOW ! (KEY=1 when unpressed and KEY=0 when pressed)
	
	assign display1	= (8'b1 << (cnt[25:23]));
	assign display2	= (16'h00FF << (cnt[25:22]));
	assign LED			= (mode)	?	display1 : display2[15:8];

	/*
	 *		Now for the sequential part
	 */
	always_ff @ (posedge CLOCK_50, posedge reset)
	begin
	
		// We always need a reset so that everything has a known state from the start.
		if(reset)	begin
			cnt			     <= 32'b0;
			mode			   <= 1'b1;
			key1_pressed <= 1'b0;
		end
		
		else	begin
			//	1) Increment counter. This is FAST as the clock is at 50MHz. So we will use the MSBs for the LED display.
			cnt	<= cnt + 32'd1;
			
			// 2) Change mode on button press, key1_pressed avoids changing the mode at each clock cycle!
			if(~KEY[1] & ~key1_pressed) begin
				key1_pressed <= 1'b1;
				mode         <= ~mode;
			end
			
			if(KEY[1])
				key1_pressed <= 1'b0;
		end
	end

endmodule
