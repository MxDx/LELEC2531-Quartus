module q1_test (  
    input [7:0] MyInput,
    input [1:0] MyConstantSelect,
    // 0: Constant = 1, 1: Constant = 3, 
    // 2: Constant = 5, 3: Constant = 7 
    input [2:0] MyOperation, 
    // 0 for Addition : MyOutput = MyInput + Constant
    // 1 for Subtract : MyOutput = MyInput - Constant
    // 2 for NAND : MyOutput = MyInput NAND Constant
    // 3 for NOR : MyOutput = MyInput NOR Constant
    // 4 for XOR : MyOutput = MyInput XOR Constant
    // 5-7 : not used 
    output MyStatus, 
    // if MyOutput is equal to 0 then MyStatus = 1 
    // else MyStatus = 0 
    output [7:0] MyOutput
    );

    logic [7:0] Constant;
    logic [7:0] Output;  
    logic Status;

    always_comb begin
        case(MyConstantSelect)
            2'b00: Constant = 1;
            2'b01: Constant = 3;
            2'b10: Constant = 5;
            2'b11: Constant = 7;
            default: Constant = 0;
        endcase
        case(MyOperation)
            3'b000: Output = MyInput + Constant;
            3'b001: Output = MyInput - Constant;
            3'b010: Output = ~(MyInput & Constant);
            3'b011: Output = ~(MyInput | Constant);
            3'b100: Output = MyInput ^ Constant;
            default: Output = 0;
        endcase
        if(Output == 0)
            Status = 1;
        else
            Status = 0;
    end 

    assign MyOutput = Output;
    assign MyStatus = Status;

endmodule