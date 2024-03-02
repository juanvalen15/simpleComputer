// Program Counter

module pc
(
	input        clk, rst, en_cnt,
	output [7:0] addr
);

reg [7:0] cnt;

always @ (posedge clk or posedge rst) begin
	if (rst)
		cnt <= 0;
	else if (en_cnt)
		cnt <= cnt + 8'd1;
end

assign addr = cnt;

endmodule 