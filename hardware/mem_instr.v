module mem_instr
(
	input      [ 7:0] addr,
	output reg [11:0] data
);

reg [11:0] mem [255:0];

initial $readmemb("./instr.mif", mem);

always @ (addr) data <= mem[addr];

endmodule 