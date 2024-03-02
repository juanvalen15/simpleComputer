// Data memory

module mem_data
(
	input                    clk,
	input                    wr,
	input             [ 7:0] addr,
	input      signed [31:0] data_in,
	output reg signed [31:0] data_out
);

reg [31:0] mem [255:0];

initial $readmemb("./data.mif", mem);

always @ (*) begin
	data_out <= mem[addr];
end

always @ (posedge clk) begin
	if (wr) mem[addr] <= data_in;
end

endmodule 