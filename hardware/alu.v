// Arithmetic Logic Unit ALU

module alu
(
	input             [ 1:0] op,
	input      signed [31:0] in1, in2,
	output reg signed [31:0] out
);

wire signed [15:0] pr1 = in1[15:0];
wire signed [15:0] pr2 = in2[15:0];

always @ (*) begin
	case (op)
		2'd0: out <= in2;
		2'd1: out <= in1;
		2'd2: out <= in1+in2;
		2'd3: out <= pr1*pr2;
	endcase
end

endmodule 