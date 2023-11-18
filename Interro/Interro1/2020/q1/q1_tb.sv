`timescale 1ns/1ps

module testbench_1();

    logic [7:0] MyInput;
    logic [7:0] MyOutput;
    logic [1:0] MyConstantSelect;
    logic [1:0] MyOperation;
    logic MyStatus;

    q1 q1_inst(
        .MyInput(MyInput),
        .MyOutput(MyOutput),
        .MyConstantSelect(MyConstantSelect),
        .MyOperation(MyOperation),
        .MyStatus(MyStatus)
    );

    initial begin
        MyInput = 0;
        MyConstantSelect = 0;
        MyOperation = 0;
        #10;
        MyInput = 7;
        MyConstantSelect = 3;
        MyOperation = 1;
        #10;
        MyInput = 8'b00000011;
        MyConstantSelect = 1;
        MyOperation = 2;
        #10;
        MyInput = 8'b00000011;
        MyConstantSelect = 2;
        MyOperation = 3;
        $stop;

    end

endmodule