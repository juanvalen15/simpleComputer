// Program Counter

module pc
#(
	parameter INSADDR_WIDTH = 32
)
(
	input       			   clk, rst,
	input 		 			   load,
	input  [INSADDR_WIDTH-1:0] data,

	output [INSADDR_WIDTH-1:0] addr
);

reg [INSADDR_WIDTH-1:0] cnt;

always @ (posedge clk or posedge rst) begin
	if (rst)
		cnt <= 0;
	else
		cnt <= (load) ? data : cnt + {{INSADDR_WIDTH-1{1'b0}},{1'b1}};
end

assign addr = cnt;

endmodule 