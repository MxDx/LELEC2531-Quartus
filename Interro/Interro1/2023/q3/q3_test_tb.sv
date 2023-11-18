`timescale 1ms/1ms

module testbench_3();

    logic clk, reset, left, right, brake, alarm, fog;
    logic la, lb, lc, ra, rb, rc;

    q3_test q3_tsb(
        .clk(clk),
        .reset(reset),
        .left(left),
        .right(right),
        .brake(brake),
        .alarm(alarm),
        .fog(fog),
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
        brake = 0;
        alarm = 0;
        fog = 0;
        #3000
        reset = 0;
        left = 1;
        #4000
        left = 0;
        #3000
        right = 1; 
        #4000
        right = 0;
        reset = 0;
        #2000
        reset = 0;
        brake = 1;
        #3000
        brake = 0;
        #3000
        alarm = 1;
        #6000
        alarm = 0;
        #4000
        fog = 1;
        #3000
        brake = 1;
        fog = 0;
        #3000
        brake = 0;
        #6000
        left = 1;
        #1000
        left = 0;
        #6000

        $stop;       
    end

endmodule