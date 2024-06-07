// Instruction memory

module mem_instr
#(
	parameter ADDR_WIDTH = 8,
	parameter DATA_WIDTH = 12
)
(
	input 			  			clk,
	input      [ADDR_WIDTH-1:0] addr,
	output reg [DATA_WIDTH-1:0] data
);

reg [DATA_WIDTH-1:0] mem [2**ADDR_WIDTH-1:0];

initial $readmemb("./instr.mif", mem);

always @ (*) data <= mem[addr];

endmodule 