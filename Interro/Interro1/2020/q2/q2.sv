module q2 ( 
    Clock, 
    CounterOut, 
    CounterInData, 
    CounterInMSB, CounterInLSB, 
    DoReset, 
    DoLoad, 
    DoIncrement, DoDecrement, 
    DoShiftL2R, DoShiftR2L 
    ); 
    input logic Clock; 
    output logic [15:0] CounterOut; 
    input logic [15:0] CounterInData; // Input data when load in parallel 
    input logic CounterInMSB, CounterInLSB; // Input bit when load serially 
    input logic DoReset; // DoReset = 1 -> CounterOut = 0 
    input logic DoLoad; // DoLoad = 1 -> CounterOut = CounterInData 
    input logic DoIncrement; // DoIncrement = 1 -> CounterOut++ 
    input logic DoDecrement; // DoDecrement = 1 -> CounterOut-- 
    input logic DoShiftL2R; 
    // DoShiftL2R = 1 -> CounterOut = (CounterOut>> 1) + CounterInMSB * (2**15) 
    input logic DoShiftR2L; 
    // DoShiftR2L = 1 -> CounterOut = (CounterOut << 1) + CounterInLSB

    reg [15:0] sum;

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

        else if (DoLoad)
            sum <= CounterInData;
        
    end

    assign CounterOut = sum; 

endmodule