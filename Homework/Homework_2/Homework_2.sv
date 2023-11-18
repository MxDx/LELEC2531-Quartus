module Homework_2 (
    input  logic		Clock,
    output logic	    [7:0]	CounterOut,		 
    input  logic 		CounterInMSB, CounterInLSB,	// Input bit when loading serially
    input  logic		DoReset,			        // DoReset = 1     -> CounterOut = 0
    input  logic		DoIncrement,		        // DoIncrement = 1 -> CounterOut++
    input  logic 		DoDecrement,		        // DoDecrement = 1 -> CounterOut--
    input  logic		DoShiftL2R,			        // DoShiftL2R = 1  -> CounterOut = (CounterOut >> 1) + CounterInMSB * (2**7)
    input  logic		DoShiftR2L			        // DoShiftR2L = 1  -> CounterOut = (CounterOut << 1) + CounterInLSB 
    );

    reg [7:0] sum;

    always_ff @(posedge Clock) begin
        if (DoReset)
            sum <= 0;
        
        else if (DoIncrement)
            sum <= sum + 1;
        
        else if (DoDecrement)
            sum <= sum - 1;
        
        else if (DoShiftL2R)
            sum <= (sum >> 1) + CounterInMSB * (2**7);
        
        else if (DoShiftR2L)
            sum <= (sum << 1) + CounterInLSB;
        
    end

    assign CounterOut = sum;

endmodule