// Stack pointer

module stack_pointer
#(
	parameter ADDR_WIDTH = 8
)
(
	input        			clk, rst,
	input        			push, pop,
	output [ADDR_WIDTH-1:0] addr
);

reg         [ADDR_WIDTH-1:0] cnt = {ADDR_WIDTH{1'b1}};
wire signed [ADDR_WIDTH-1:0] pm  = (push) ? -{{ADDR_WIDTH-1{1'b0}},{1'b1}} : {{ADDR_WIDTH{1'b0}},{1'b1}};

always @ (posedge clk or posedge rst) begin
	if (rst)
		cnt <= {ADDR_WIDTH{1'b1}};
	else if (push | pop)
		cnt <= cnt + pm;
end

assign addr = (push) ? cnt : cnt + pm;

endmodule 