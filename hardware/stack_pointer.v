module stack_pointer
(
	input        clk, rst,
	input        push, pop,
	output [7:0] addr
);

reg         [7:0] cnt = 8'hff;
wire signed [7:0] pm  = (push) ? -8'd1 : +8'd1;

always @ (posedge clk or posedge rst) begin
	if (rst)
		cnt <= 8'hff;
	else if (push | pop)
		cnt <= cnt + pm;
end

assign addr = (push) ? cnt : cnt + pm;

endmodule 