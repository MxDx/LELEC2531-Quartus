module Homework_3(input logic clk,
    input logic reset,
    input logic left, right,
    output logic la, lb, lc, ra, rb, rc);

Thunderbird TBleft(
    .clk(clk),
    .reset(reset),
    .active(left),
    .a(la),
    .b(lb),
    .c(lc)
);

Thunderbird TBright(
    .clk(clk),
    .reset(reset),
    .active(right),
    .a(ra),
    .b(rb),
    .c(rc)
);

endmodule

module Thunderbird(input logic clk,
    input logic reset,
    input logic active,
    output logic a, b, c);

    reg [1:0] state, nextstate;

    parameter S0 = 2'b00;
    // parameter S1 = 2'b01;
    // parameter S2 = 2'b10;
    // parameter S3 = 2'b11;

    always_ff @(posedge clk) begin 
        if (reset) state <= S0;
        else state <= nextstate;
    end

    always_comb 
        case (state)
            S0: nextstate = (active) ? state + 1 : state;
            default: nextstate = state + 1;
        endcase
    
    assign a = state[0] | state[1];
    assign b = state[1];
    assign c = state[0] & state[1];
        
endmodule