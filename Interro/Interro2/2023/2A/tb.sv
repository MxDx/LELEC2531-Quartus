
module myTests();

logic [31:0] a,b,Result,y;
logic [2:0] ALUControl;
logic [3:0] ALUFlags,FlagsExcepted; 
logic [32*3+3+4-1:0] testvector [0:1000];
logic [31:0] index, errors;
logic clk;

MyALU dut(.a(a), .b(b), .Result(Result), .ALUControl(ALUControl), .ALUFlags(ALUFlags));

always #10 clk = ~clk;


initial begin
    $readmemh("myTest.tv", testvector);
    index = 0; errors = 0;
    clk = 0;
end

always @(posedge clk) begin
    {ALUControl, a, b, y, FlagsExcepted} = testvector[index];
end

always @(negedge clk) begin
    if (y !== Result || ALUFlags !== FlagsExcepted) begin
        $display("Errors at line %.0f in Homework_4.tv : ", index+1);
        $display("Result = %h !== %h", Result, y);
        $display("ALUFlags = %b !== %b", ALUFlags, FlagsExcepted);
        $display("Input  = {a = %h, b = %h, ALUControl = %b}", a, b, ALUControl);
        errors = errors + 1;
    end
    index = index + 1;
    $display("index = %.0f", index);

    #5;
    if (testvector[index] === 103'bx) begin
        $display("The execution finished with %.0f error(s)", errors);
        $finish;
    end
end

endmodule