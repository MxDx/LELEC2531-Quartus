module Homework_4(
    input  logic [31:0] a, b,
    input  logic [1:0]  ALUControl, // 00: add, 01: sub, 10: and, 11: or
    output logic [31:0] Result,
    output logic [3:0]  ALUFlags // 3: negative, 2: zero, 1: carry out, 0: overflow
    );

    logic [32:0] res, b_tmp;
    // assign b_tmp = {1'b0, ~b} + 1;


    always_comb begin
        case (ALUControl)
            2'b00:
                res = a + b;
            2'b01:
                // b_tmp = {1'b0, ~b} + 1;
                res = a + {1'b0, ~b} + 1;
                // res[32] = b_tmp[32];
            2'b10:
                res = a & b;
            2'b11:
                res = a | b;
        endcase
    end

    assign Result = res;

    assign ALUFlags[0] = ~ALUControl[1] ? ~(ALUControl[0] ^ a[31] ^ b[31]) & (res[31] ^ a[31]) : 0;
    assign ALUFlags[1] = ~ALUControl[1] ? res[32]: 0;
    assign ALUFlags[2] = (Result == 0);
    assign ALUFlags[3] = res[31];

endmodule