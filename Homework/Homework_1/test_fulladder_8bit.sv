`timescale 1ns/1ps 		// time unit / compiler time precision

module test_fulladder_8bit();

// Set up variables

logic [7:0] INPUT;
logic [1:0] CONSTANT;
logic OPERATION;

logic [7:0] SUM;

// Instantiate the 8bit full adder module

Homework_1 FA8bit(
    .MyInput(INPUT[7:0]),
    .MyConstantSelect(CONSTANT),
    .MyOperation(OPERATION),
    .MyOutput(SUM[7:0])
);

// Initialize the inputs
initial
    begin
        // Additions
        OPERATION = 1'b0;

        // 0 + 0 = 0 
        INPUT = 8'b00000000;
        CONSTANT = 2'd0;

        #5
        // 15 + 7 = 22
        // SUM = 8'b00010110
        INPUT = 8'b00001111;
        CONSTANT = 2'd3; 

        #5
        // Subtractions
        OPERATION = 1'b1;

        // 127 - 5 = 122 
        // SUM = 8'b01111010
        INPUT = 8'b01111111;
        CONSTANT = 2'd2;
        
        #5
        // 1 - 7 = -6
        // SUM = 8'b11111010
        INPUT = 8'b00000001;
        CONSTANT = 2'd3;

        #5
        // 32 - 5 = 27
        // SUM = 8'b00011011
        INPUT = 8'b00100000;
        CONSTANT = 2'd2;
        
    end

endmodule