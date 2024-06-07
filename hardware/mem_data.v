// Data memory

module mem_data
#(
	parameter ADDR_WIDTH = 8,
	parameter DATA_WIDTH = 32
)
(
	input                    		 	clk,
	input                    		   	wr,
	input             [ADDR_WIDTH-1:0] 	addr,
	input      signed [DATA_WIDTH-1:0] 	data_in,
	output reg signed [DATA_WIDTH-1:0] 	data_out
);

reg [DATA_WIDTH-1:0] mem [2**ADDR_WIDTH-1:0];

initial $readmemb("./data.mif", mem);

always @ (posedge clk) begin
	if (wr)	mem[addr] <= data_in;
end

always @ (*) begin
	data_out <= mem[addr];
end

endmodule 