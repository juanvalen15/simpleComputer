module tb_simpleProcessor
#(
	parameter DATA_WIDTH 	= 32,						   // data  
	parameter OPCODE_WIDTH 	= 4, 						   // opcode
	parameter ALU_OP_WIDTH  = 3,						   // ALU operation
	parameter DATAMEM_WIDTH = 8, 						   // data memory 
	parameter INSADDR_WIDTH	= 8, 						   // instruction memory address (INSADDR_WIDTH <= DATAMEM_WIDTH)
	parameter INS_WIDTH		= OPCODE_WIDTH + DATAMEM_WIDTH // instruction memory
)();

// Clock and reset generation --------------------------------------------------
reg clk, rst;

initial begin
	    clk = 1'b0;
	    rst = 1'b1;
	#5  rst = 1'b0;
end

always #10 clk = ~clk;

// Processor ------------------------------------------------------------------
wire        [    INS_WIDTH-1:0] instr;
wire        [INSADDR_WIDTH-1:0] instr_addr;

wire        	   				mem_wr;
wire        [DATAMEM_WIDTH-1:0] mem_addr;
wire signed [	DATA_WIDTH-1:0] mem_data_in;
wire signed [	DATA_WIDTH-1:0] mem_data_out;

processor #(.DATA_WIDTH(DATA_WIDTH),
			.OPCODE_WIDTH(OPCODE_WIDTH),
			.ALU_OP_WIDTH(ALU_OP_WIDTH),
			.DATAMEM_WIDTH(DATAMEM_WIDTH),
			.INSADDR_WIDTH(INSADDR_WIDTH),
			.INS_WIDTH(INS_WIDTH)) processor(.clk(clk), .rst(rst), 
             								 .instr(instr), .instr_addr(instr_addr), 
             								 .mem_wr(mem_wr), .mem_addr(mem_addr), 
											 .mem_data_in(mem_data_in), .mem_data_out(mem_data_out));

// Instruction memory -------------------------------------------------------
mem_instr #(.ADDR_WIDTH(INSADDR_WIDTH),
			.DATA_WIDTH(INS_WIDTH))     minstr(.clk(clk), 
											    .addr(instr_addr), 
											    .data(instr));

// Data memory -----------------------------------------------------------
mem_data #(.ADDR_WIDTH(DATAMEM_WIDTH),
		   .DATA_WIDTH(DATA_WIDTH))     mdata(.clk(clk), 
		   								      .wr(mem_wr), 
										      .addr(mem_addr), 
										      .data_in(mem_data_out), 
										      .data_out(mem_data_in));


endmodule 