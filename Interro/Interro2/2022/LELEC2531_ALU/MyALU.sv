module MyALU(
    input  logic [31:0] a, b,
    input  logic [2:0]  ALUControl,
    output logic [31:0] Result,
    output logic [3:0]  ALUFlags
);

    // logic [31:0] res;
    // logic cout;
    // // assign b_tmp = {1'b0, ~b} + 1;


    // always_comb begin
    //     case (ALUControl)
    //         3'b000: {cout,Result} = a + b;
    //         3'b001: {cout,Result} = a + ~b + 1;
    //         3'b100: Result = a & b;
    //         3'b101: Result = a | b;
    //         3'b110: Result = a ^ b;
    //         3'b111: Result = a & ~b;
    //         default: Result = 32'bx;   
    //     endcase
    
    //     ALUFlags[0] =  ~(ALUControl[0]^a[31]^b[31]) & (Result[31] ^ a[31]) & ~ALUControl[2];
    //     ALUFlags[1] = ~ALUControl[2] & cout;
    //     ALUFlags[2] = (Result == 0);
    //     ALUFlags[3] = Result[31];
    // end

    logic cout,C,N,V,Z;
    logic [31:0] notb;

    always_comb begin
        notb = ~b; 
        cout = 1'bx;
        case (ALUControl)
            3'b000 : {cout,Result} = a + b;
            3'b001 : {cout,Result} = a + notb + 1;
            3'b100 : Result = a & b;
            3'b101 : Result = a | b;
            3'b110 : Result = a ^ b;
            3'b111 : Result = a & notb;
            default: Result = 32'bx;
        endcase

        N = Result[31];
        Z = Result == 32'b0;
        C = ~ALUControl[2] & cout;
        V = ~(ALUControl[0]^a[31]^b[31]) & (Result[31] ^ a[31]) & ~ALUControl[2];

        ALUFlags = {N, Z, C, V};
    end
    
endmodule