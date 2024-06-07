// Processor

module processor
#(
	parameter DATA_WIDTH 	= 32,						   // data  
	parameter OPCODE_WIDTH 	= 4, 						   // opcode
	parameter ALU_OP_WIDTH  = 3,						   // ALU operation
	parameter DATAMEM_WIDTH = 8, 						   // data memory 
	parameter INSADDR_WIDTH	= 8, 						   // instruction memory address (INSADDR_WIDTH <= DATAMEM_WIDTH)
	parameter INS_WIDTH		= OPCODE_WIDTH + DATAMEM_WIDTH // instruction memory
)
(
	input          clk, rst,
    
    // instruction memory
	input          [	INS_WIDTH-1:0] 	instr,
	output         [INSADDR_WIDTH-1:0] 	instr_addr,
	
	// data memory
	output         mem_wr,
	output         [ DATAMEM_WIDTH-1:0]	mem_addr,
	input  signed  [	DATA_WIDTH-1:0] mem_data_in,
	output signed  [	DATA_WIDTH-1:0] mem_data_out
);

// Instruction Decoder -------------------------------------------------
wire signed	[  DATA_WIDTH-1:0]	id_nzero = mem_data_out;
wire    	[ALU_OP_WIDTH-1:0] 	id_alu_op;
wire    						id_pc_load;
wire    						id_mem_wr;
wire  							id_data_sp_push;
wire  							id_data_sp_pop;	



instr_decoder #(.DATA_WIDTH(DATA_WIDTH), 
				.OPCODE_WIDTH(OPCODE_WIDTH), 
				.ALU_OP_WIDTH(ALU_OP_WIDTH)) id(.opcode(instr[INS_WIDTH-1:INS_WIDTH-OPCODE_WIDTH]), 
												.acc(id_nzero), 
												.alu_op(id_alu_op),
												.pc_load(id_pc_load), 
												.mem_wr(id_mem_wr),
												.data_sp_push(id_data_sp_push),
												.data_sp_pop(id_data_sp_pop));

// ALU ------------------------------------------------------------------------
wire signed [DATA_WIDTH-1:0] alu_in1 = mem_data_in;
wire signed [DATA_WIDTH-1:0] alu_in2;
wire signed [DATA_WIDTH-1:0] alu_out;


alu #(.DATA_WIDTH(DATA_WIDTH), 
	  .OP_WIDTH(ALU_OP_WIDTH)) alu(.op(id_alu_op), 
	  								.in1(alu_in1), 
									.in2(alu_in2), 
									.out_alu(alu_out));

// Accumulator register--------------------------------------------------------
reg signed [DATA_WIDTH-1:0] acc;

always @ (posedge clk or posedge rst) begin
	if (rst)
		acc <= 0;
	else
		acc <= alu_out;
end

assign alu_in2 = acc;

// Program Counter ------------------------------------------------------------
wire 					  pc_load = id_pc_load;
wire [INSADDR_WIDTH-1:0]  pc_data = instr[INSADDR_WIDTH-1:0];

pc #(.INSADDR_WIDTH(INSADDR_WIDTH)) pc(.clk(clk), 
								 	   .rst(rst), 
								 	   .load(pc_load), 
								 	   .data(pc_data), 
								 	   .addr(instr_addr));

// Data Stack Pointer ---------------------------------------------------------
wire       				 data_sp_push = id_data_sp_push;
wire       				 data_sp_pop  = id_data_sp_pop;
wire [DATAMEM_WIDTH-1:0] data_sp_addr;

stack_pointer #(.ADDR_WIDTH(DATAMEM_WIDTH)) data_sp(.clk(clk), 
													.rst(rst), 
					  								.push(data_sp_push), 
													.pop(data_sp_pop), 
					  								.addr(data_sp_addr));

// Data memory interface  -----------------------------------------------------
wire 	pup_pop 		= data_sp_push | data_sp_pop;
assign 	mem_data_out 	= acc;
assign 	mem_addr    	= (pup_pop) ? data_sp_addr : instr[DATAMEM_WIDTH-1:0];
assign 	mem_wr       	= id_mem_wr;

endmodule 