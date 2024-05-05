// Processor
module processor
(
	input          clk, rst,
    
    // instruction memory
	input          [11:0] instr,
	output         [ 7:0] instr_addr,
	
	// data memory
	output         mem_wr,
	output         [ 7:0] mem_addr,
	input  signed  [31:0] mem_data_in,
	output signed  [31:0] mem_data_out
);

// Instruction Decoder -------------------------------------------------
wire signed	[31:0] 	id_nzero = mem_data_out;
wire    	[ 2:0] 	id_alu_op;
wire    			id_pc_load;
wire    			id_mem_wr;

instr_decoder id(.opcode(instr[11:8]) , .acc(id_nzero), .alu_op(id_alu_op), .pc_load(id_pc_load), .mem_wr(id_mem_wr));

// ALU ------------------------------------------------------------------------
wire signed [31:0] alu_in1 = mem_data_in;
wire signed [31:0] alu_in2;
wire signed [31:0] alu_out;

alu alu(.op(id_alu_op), .in1(alu_in1), .in2(alu_in2), .out_alu(alu_out));

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
wire 		pc_load = id_pc_load;
wire [7:0]  pc_data = instr[7:0];

pc pc(.clk(clk), .rst(rst), .load(pc_load), .data(pc_data), .addr(instr_addr));

// Data memory interface  -----------------------------------------------------
assign mem_data_out = acc;
assign mem_addr     = instr[7:0];
assign mem_wr       = id_mem_wr;

endmodule 