module Homework_1 (
    input   [7:0]   MyInput,
    input   [1:0]   MyConstantSelect,  // 0: Constant = 1, 1: Constant = 3, 2: Constant = 5, 3: Constant = 7
    input           MyOperation,       // 1 for Subtraction, 0 for Addition
    output  [7:0]   MyOutput);

wire c1, c2, c3, c4, c5, c6, c7, c8;
logic [7:0] b;

always @(*) begin
    if (MyOperation == 0) begin
        if (MyConstantSelect == 0) begin
            b = 8'b00000001;
        end
        else if (MyConstantSelect == 1) begin
            b = 8'b00000011;
        end
        else if (MyConstantSelect == 2) begin
            b = 8'b00000101;
        end
        else if (MyConstantSelect == 3) begin
            b = 8'b00000111;
        end
    end
    else begin
        if (MyConstantSelect == 0) begin
            b = 8'b11111111;
        end
        else if (MyConstantSelect == 1) begin
            b = 8'b11111101;
        end
        else if (MyConstantSelect == 2) begin
            b = 8'b11111011;
        end
        else if (MyConstantSelect == 3) begin
            b = 8'b11111001;
        end
    end
end
 
full_adder_1_bit FA0 ( 
    .a(MyInput[0]),
    .b(b[0]),
    .c_in(1'b0),
    .sum(MyOutput[0]),
    .c_out(c1));

full_adder_1_bit FA1 (
    .a(MyInput[1]),
    .b(b[1]),
    .c_in(c1),
    .sum(MyOutput[1]),
    .c_out(c2));

full_adder_1_bit FA2 (
    .a(MyInput[2]),
    .b(b[2]),
    .c_in(c2),
    .sum(MyOutput[2]),
    .c_out(c3));

full_adder_1_bit FA3 (
    .a(MyInput[3]),
    .b(b[3]),
    .c_in(c3),
    .sum(MyOutput[3]),
    .c_out(c4));

full_adder_1_bit FA4 (
    .a(MyInput[4]),
    .b(b[4]),
    .c_in(c4),
    .sum(MyOutput[4]),
    .c_out(c5));

full_adder_1_bit FA5 (
    .a(MyInput[5]),
    .b(b[5]),
    .c_in(c5),
    .sum(MyOutput[5]),
    .c_out(c6));

full_adder_1_bit FA6 (
    .a(MyInput[6]),
    .b(b[6]),
    .c_in(c6),
    .sum(MyOutput[6]),
    .c_out(c7));

full_adder_1_bit FA7 (
    .a(MyInput[7]),
    .b(b[7]),
    .c_in(c7),
    .sum(MyOutput[7]),
    .c_out(c8));

endmodule

module full_adder_1_bit ( 
	input  logic a,
	input  logic b,
	input  logic c_in,
	output logic sum,
	output logic c_out);

assign sum = a ^ b ^ c_in;
assign c_out = (a & b) | ((a ^ b) & c_in);

endmodule