`timescale 1ms/1ms

module testbench_homework_3();

    logic clk, reset, left, right;
    logic la, lb, lc, ra, rb, rc;

    Homework_3 hw3(
        .clk(clk),
        .reset(reset),
        .left(left),
        .right(right),
        .la(la),
        .lb(lb),
        .lc(lc),
        .ra(ra),
        .rb(rb),
        .rc(rc)
    );

    always 
        begin
            clk = 0;
            #500;
            clk = 1;
            #500;
        end

    initial begin
        clk = 0;
        reset = 1;
        left = 0;
        right = 0;
        #3000
        reset = 0;
        left = 1;
        #3000
        left = 0;
        right = 1; 
        #3000
        reset = 1;
        #2000

        $stop;       
    end

endmodule