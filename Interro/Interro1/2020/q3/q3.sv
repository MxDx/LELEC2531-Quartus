module q3(input logic clk,
    input logic reset,
    input logic left, right, brake, alarm,
    output logic la, lb, lc, ra, rb, rc);

Thunderbird TBleft(
    .clk(clk),
    .reset(reset),
    .active(left),
    .brake(brake),
    .alarm(alarm),
    .a(la),
    .b(lb),
    .c(lc)
);

Thunderbird TBright(
    .clk(clk),
    .reset(reset),
    .active(right),
    .brake(brake),
    .alarm(alarm),
    .a(ra),
    .b(rb),
    .c(rc)
);

endmodule

module Thunderbird(input logic clk,
    input logic reset,
    input logic active,
    input logic brake, alarm,
    output logic a, b, c);

    reg [1:0] state, nextstate;

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;

    always_ff @(posedge clk) begin 
        if (reset) state <= S0;
        else state <= nextstate;
    end

    always_comb 
        case (state)
            S0: 
                if (active & !brake & !alarm) nextstate = nextstate + 1;
                else if (brake | alarm) nextstate = S3;
                else nextstate = S0;
            default: 
                if (alarm) nextstate = S0;
                else if (brake) nextstate = S3;
                else nextstate = nextstate + 1;
        endcase
    
    assign a = state[0] | state[1];
    assign b = state[1];
    assign c = state[0] & state[1];
        
endmodule