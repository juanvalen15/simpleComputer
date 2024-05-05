// Program Counter

module pc
(
	input        clk, rst,
	input 		 load,
	input  [7:0] data,

	output [7:0] addr
);

reg [7:0] cnt;

always @ (posedge clk or posedge rst) begin
	if (rst)
		cnt <= 0;
	else
		cnt <= (load) ? data : cnt + 8'd1;
end

assign addr = cnt;

endmodule 