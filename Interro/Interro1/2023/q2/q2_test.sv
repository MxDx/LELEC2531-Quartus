module q2_test ( 
    Clock, 
    CounterOut, 
    CounterInData, 
    CounterInMSB, CounterInLSB, 
    DoReset, 
    DoLoad, 
    DoSet,
    DoIncrement, DoDecrement, 
    DoShiftL2R, DoShiftR2L 
    ); 
    input logic Clock; 
    output logic [31:0] CounterOut; 
    input logic [31:0] CounterInData; // Input data when load in parallel 
    input logic CounterInMSB, CounterInLSB; // Input bit when load serially 
    input logic DoReset; // DoReset = 1 -> CounterOut = 0 
    input logic DoLoad; // DoLoad = 1 -> CounterOut = CounterInData
    input logic DoSet; // DoSet = 1 -> CounterOut = 1 
    input logic DoIncrement; // DoIncrement = 1 -> CounterOut++ 
    input logic DoDecrement; // DoDecrement = 1 -> CounterOut-- 
    input logic DoShiftL2R; 
    // DoShiftL2R = 1 -> CounterOut = (CounterOut>> 1) + CounterInMSB * (2**31) 
    input logic DoShiftR2L; 
    // DoShiftR2L = 1 -> CounterOut = (CounterOut << 1) + CounterInLSB

    reg [31:0] sum;

    always_ff @(posedge Clock) begin
        if (DoReset)
            sum <= 0;
        
        else if (DoIncrement)
            sum <= sum + 1;
        
        else if (DoDecrement)
            sum <= sum - 1;
        
        else if (DoShiftL2R)
            sum <= (sum >> 1) + CounterInMSB * (2**31);
        
        else if (DoShiftR2L)
            sum <= (sum << 1) + CounterInLSB;

        else if (DoLoad)
            sum <= CounterInData;
        
        else if (DoSet)
            sum <= 1;
        
    end

    assign CounterOut = sum; 

endmodule