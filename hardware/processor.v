// Processor
module processor
(
	input          clk, rst,
    
    // instruction memory
	input          [10:0] instr,
	output         [ 7:0] instr_addr,
	
	// data memory
	output         mem_wr,
	output         [ 7:0] mem_addr,
	input  signed  [31:0] mem_data_in,
	output signed  [31:0] mem_data_out
);

// Instruction Decoder -------------------------------------------------
wire    [1:0] id_alu_op;
wire    id_pc_en;
wire    id_mem_wr;

instr_decoder id(instr[10:8], id_ula_op, id_pc_en, id_mem_wr);

// ALU ------------------------------------------------------------------------
wire signed [31:0] alu_in1 = mem_data_in;
wire signed [31:0] alu_in2;
wire signed [31:0] alu_out;

alu alu(id_alu_op, alu_in1, alu_in2, alu_out);

// Accumulator register--------------------------------------------------------
reg signed [31:0] acc;

always @ (posedge clk or posedge rst) begin
	if (rst)
		acc <= 0;
	else
		acc <= alu_out;
end

assign alu_in2 = acc;

// Program Counter ------------------------------------------------------------
pc pc(clk, rst, id_pc_en, instr_addr);

// Data memory interface  -----------------------------------------------------
assign mem_data_out = acc;
assign mem_addr     = instr[7:0];
assign mem_wr       = id_mem_wr;

endmodule 