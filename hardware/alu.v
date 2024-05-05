// Arithmetic Logic Unit ALU

module alumux
(
	input 				[ 2:0] 	op,
	input 		signed 	[31:0] 	op1,
	input 		signed 	[31:0] 	op2,
	input 		signed 	[31:0] 	sum,
	input 		signed 	[31:0] 	mul,
	input      					equ,	
	input						grt,
	input 				[31:0]	inv,
	
	output	reg	signed	[31:0]	out_mux
);

always @ (*) begin
	case (op)
		3'd0	: out_mux <= op2;
		3'd1 	: out_mux <= op1;
		3'd2 	: out_mux <= sum;
		3'd3 	: out_mux <= mul;
		3'd4 	: out_mux <= equ;
		3'd5 	: out_mux <= grt;
		3'd6 	: out_mux <= inv;
		default:  out_mux <= 32'dx;
	endcase
end

endmodule


module alu
(
	input             [ 2:0] op,
	input      signed [31:0] in1, in2,
	output reg signed [31:0] out_alu
);

wire signed [15:0] pr1 = in1[15:0];
wire signed [15:0] pr2 = in2[15:0];

wire signed [31:0] 	sum = in1+in2;
wire signed [31:0] 	mul = pr1*pr2;
wire				equ = (in1==in2);
wire				grt = (in1<in2);
wire		[31:0]	inv = -in2;

wire signed [31:0]  out_alu_wire = out_alu;

alumux mux(.op(op),.op1(in1),.op2(in2),.sum(sum),.mul(mul),.equ(equ),.grt(grt),.inv(inv),.out_mux(out_alu_wire));


endmodule 