module FloatingPointAdder (
    input  logic        clk,
    input  logic [31:0] Data_Addr,
    input  logic [31:0] Data_In,
    output logic [31:0] Result
);

    logic [31:0] A;
    logic [31:0] B;

    logic Z;
    logic N;
    logic V;
    logic C;

    logic        A_sign;
    logic        B_sign;
    logic [7:0]  A_exp;
    logic [7:0]  B_exp;
    logic [23:0] A_mant;
    logic [23:0] B_mant;

    logic        S_sign;
    logic [7:0]  S_exp;
    logic [24:0] S_mant;

    logic [31:0] S;

    always_ff @(negedge clk) begin
        if (Data_Addr == 32'h00000480) begin
            A <= Data_In;
        end
        else if (Data_Addr == 32'h00000484) begin
            B <= Data_In;
        end
    end     

    always_ff @(posedge clk) begin
        case (Data_Addr) 
            32'h00000488: Result <= Z;
            32'h0000048C: Result <= N;
            32'h00000490: Result <= V;
            32'h00000494: Result <= C;
            default: Result <= S;
        endcase
    end



    always_comb begin

        A_sign = A[31];
        B_sign = B[31];

        A_exp = A[30:23];
        B_exp = B[30:23];

        A_mant = A[22:0];
        A_mant[23] = 1'b1; // Add implicit 1
        B_mant = B[22:0];
        B_mant[23] = 1'b1; // Add implicit 1

        if (A_exp > B_exp) begin
            S_exp = A_exp;
            B_mant = B_mant >> (A_exp - B_exp);
        end
        else begin
            S_exp = B_exp;
            A_mant = A_mant >> (B_exp - A_exp);
        end

        if (A_sign == B_sign) begin
            S_sign = A_sign;
            S_mant = A_mant + B_mant;
        end
        else begin
            if (A_mant > B_mant) begin
                S_sign = A_sign;
                S_mant = A_mant - B_mant;
            end
            else begin
                S_sign = B_sign;
                S_mant = B_mant - A_mant;
            end
        end
        
        if (S_mant[24] == 1) begin
            S_mant = S_mant >> 1;
            S_exp = S_exp + 1;
        end

        if (S_exp == 255) begin
            S_mant = 0;
            S_exp = 0;
        end

        if (S_exp == 0) begin
            S_mant = 0;
        end

        if (S_mant == 0) begin
            S_exp = 0;
        end
    
    end

    assign S[31] = S_sign;
    assign S[30:23] = S_exp;
    assign S[22:0] = S_mant;

    assign Z = (S_exp == 0 && S_mant == 0);
    assign N = (S_sign == 1);
    assign V = (S_exp == 255 && S_mant != 0);
    assign C = (S_exp == 255 && S_mant == 0);

endmodule