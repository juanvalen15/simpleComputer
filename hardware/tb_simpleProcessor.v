module tb_simpleProcessor();

// Clock and reset generation --------------------------------------------------
reg clk, rst;

initial begin
	    clk = 1'b0;
	    rst = 1'b1;
	#5  rst = 1'b0;
end

always #10 clk = ~clk;

// Processor ------------------------------------------------------------------
wire        [11:0] instr;
wire        [ 7:0] instr_addr;

wire        	   mem_wr;
wire        [ 7:0] mem_addr;
wire signed [31:0] mem_data_in;
wire signed [31:0] mem_data_out;

processor pc(.clk(clk), .rst(rst), .instr(instr), .instr_addr(instr_addr), .mem_wr(mem_wr), .mem_addr(mem_addr), .mem_data_in(mem_data_in), .mem_data_out(mem_data_out));

// Instruction memory -------------------------------------------------------
mem_instr minstr(.clk(clk), .addr(instr_addr), .data(instr));

// Data memory -----------------------------------------------------------
mem_data mdata(.clk(clk), .wr(mem_wr), .addr(mem_addr), .data_in(reg_data_out), .data_out(mem_data_in));


endmodule 