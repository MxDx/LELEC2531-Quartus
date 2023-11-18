`timescale 1ps/1ps
module testbench_homework_4();
    logic clk;
    logic [31:0] a, b, Result, ResultExpected;
    logic [1:0] ALUControl;
    logic [3:0] ALUFlags, ALUFlagsExpected;
    logic [31:0] vectornum, errors;
    logic [101:0] testvectors[0:1000];


    // instantiate device under test
    Homework_4 hw4(
        .a(a),
        .b(b),
        .Result(Result),
        .ALUControl(ALUControl),
        .ALUFlags(ALUFlags)
    );
    // generate clock
    always
    begin
        clk = 1; #5; clk = 0; #5;
    end
    // at start of test, load vectors
    // and pulse reset
    initial
    begin
        $readmemb("Homework_4.tv", testvectors);
        vectornum = 0; errors = 0;
    end
    // apply test vectors on rising edge of clk 
    always @(posedge clk)
    begin
        #1; {ALUControl, a, b, ResultExpected, ALUFlagsExpected} = testvectors[vectornum];
    end
    // check results on falling edge of clk
    always @(negedge clk)
        begin // skip during reset
            if ((Result !== ResultExpected) | (ALUFlags !== ALUFlagsExpected)) begin // check result
                $display("Error: inputs = %b", {a, b, ALUControl});
                $display(" outputs = %b %b (%b %b expected)", Result, ALUFlags, ResultExpected, ALUFlagsExpected);
                errors = errors + 1;
            end
            vectornum = vectornum + 1;
            if (ALUFlagsExpected == 4'bx) begin
                $display("%d tests completed with %d errors",
                vectornum, errors);
                $finish;
            end
        end
endmodule