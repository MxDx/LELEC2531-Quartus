module q3_test(input logic clk,
    input logic reset,
    input logic left, right, brake, fog, alarm,
    output logic la, lb, lc, ra, rb, rc);

Thunderbird TBleft(
    .clk(clk),
    .reset(reset),
    .active(left),
    .brake(brake),
    .alarm(alarm),
    .fog(fog),
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
    .fog(fog),
    .a(ra),
    .b(rb),
    .c(rc)
);

endmodule

module Thunderbird(input logic clk,
    input logic reset,
    input logic active,
    input logic brake, fog, alarm,
    output logic a, b, c);

    reg [3:0] state, nextstate;

    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;

    always_ff @(posedge clk) begin 
        if (reset) state <= S0;
        else state <= nextstate;
    end

    always_comb 
        case (state)
            S0: 
                if (active) nextstate = nextstate + 1;
                else if (brake | alarm) nextstate = S3;
                else if (fog) nextstate = S4;
                else nextstate = S0;
            S1:
                if (alarm) nextstate = S0;
                else if (brake) nextstate = S3;
                else if (fog) nextstate = S4;
                else nextstate = S2;
            S2:
                if (alarm) nextstate = S0;
                else if (brake) nextstate = S3;
                else if (fog) nextstate = S4;
                else nextstate = S3;
            S3: 
                if (alarm) nextstate = S0;
                else if (brake) nextstate = S3;
                else if (fog) nextstate = S4;
                else nextstate = S0;
            S4:
                if (fog) nextstate = S4;
                else if (brake) nextstate = S3;
                else if (alarm) nextstate = S0;
                else nextstate = S0;
            default: 
                if (alarm) nextstate = S0;
                else if (fog) nextstate = S4;
                else if (brake) nextstate = S3;
                else nextstate = nextstate + 1;
        endcase
    
    assign a = state[0] | state[1] | state[2];
    assign b = state[1];
    assign c = state[0] & state[1];
        
endmodule