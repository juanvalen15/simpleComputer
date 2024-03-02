// Processor

module processor
(
	input                clk, rst,

	input         [11:0] instr,   // memória de instrução
	output        [ 7:0] instr_addr,
	
	output               mem_wr,
	output        [ 7:0] mem_addr,  // acesso à memória de dados 
	input  signed [31:0] mem_data_in,
	output signed [31:0] mem_data_out
);

// ALU ------------------------------------------------------------------------

wire        [ 1:0] alu_op  = instr[9:8];
wire signed [31:0] alu_in1 = mem_data_in;
wire signed [31:0] alu_in2;
wire signed [31:0] alu_out;

alu alu(alu_op, alu_in1, alu_in2, alu_out);

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

pc pc(clk, rst, instr[11], instr_addr);

// Data memory interface  -----------------------------------------------------

assign mem_data_out = acc;
assign mem_addr     = instr[7:0];
assign mem_wr       = instr[10];

endmodule 