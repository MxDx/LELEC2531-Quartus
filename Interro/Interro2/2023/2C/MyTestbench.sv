module MyTestbench();

  logic        clk;
  logic        reset;

  logic [15:0] ReadData;
  logic [15:0] WriteData;
  logic [12:0] Adr;
  logic        MemWrite;
  
  wire [33:0]	GPIO_0_PI;
  wire [33:0]	GPIO_1;
  wire [12:0]	GPIO_2;
	 
  // instantiate device to be tested
  MyDE0_Nano dut(
	.CLOCK_50(clk), 
	.GPIO_0_PI(GPIO_0_PI),
	.GPIO_1(GPIO_1),  
	.GPIO_2(GPIO_2)
	);

  assign GPIO_0_PI[1] = reset;
  assign MemWrite = GPIO_1[33];
  assign WriteData = GPIO_1[15:0];
  assign Adr = GPIO_2;
  assign ReadData = GPIO_1[31:16];
  
  // initialize test
  initial
    begin
      reset <= 1; # 22; reset <= 0;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end

  // check results
  always @(negedge clk)
    begin
      if(MemWrite) begin
        if(Adr === 100 & WriteData === 85) begin
          $display("Simulation succeeded");
          $stop;
        end else if (WriteData === 1 || WriteData === 0) begin
          $display("Simulation failed");
          $stop;
        end
      end
    end
     
endmodule