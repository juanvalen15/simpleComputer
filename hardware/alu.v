// Arithmetic Logic Unit ALU

module alumux
#(
	parameter DATA_WIDTH = 32,
	parameter OP_WIDTH	 = 3
)
(
	input 				[  OP_WIDTH-1:0] 	op,
	input 		signed 	[DATA_WIDTH-1:0] 	op1,
	input 		signed 	[DATA_WIDTH-1:0] 	op2,
	input 		signed 	[DATA_WIDTH-1:0] 	sum,
	input 		signed 	[DATA_WIDTH-1:0] 	mul,
	input      								equ,	
	input									grt,
	input 				[DATA_WIDTH-1:0]	inv,
	
	output	reg	signed	[DATA_WIDTH-1:0]	out_mux
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
		default:  out_mux <= {DATA_WIDTH{1'dx}};
	endcase
end

endmodule


module alu
#(
	parameter DATA_WIDTH = 32,
	parameter OP_WIDTH   = 3
)
(
	input             [  OP_WIDTH-1:0] op,
	input      signed [DATA_WIDTH-1:0] in1, in2,
	output reg signed [DATA_WIDTH-1:0] out_alu
);

wire signed [DATA_WIDTH/2-1:0] pr1 = in1[DATA_WIDTH/2-1:0];
wire signed [DATA_WIDTH/2-1:0] pr2 = in2[DATA_WIDTH/2-1:0];

wire signed [DATA_WIDTH-1:0]   sum = in1+in2;
wire signed [DATA_WIDTH-1:0]   mul = pr1*pr2;
wire						   equ = (in1==in2);
wire						   grt = (in1<in2);
wire		[DATA_WIDTH-1:0]   inv = ~in2;

wire signed [DATA_WIDTH-1:0]  w_out_alu;

alumux #(.DATA_WIDTH(DATA_WIDTH), 
		 .OP_WIDTH(OP_WIDTH)) mux(.op(op),
		   						  .op1(in1),.op2(in2),
		   						  .sum(sum),.mul(mul),
		   						  .equ(equ),.grt(grt),
		   						  .inv(inv),
		   						  .out_mux(w_out_alu));

always @ (*) begin
	out_alu <= w_out_alu;
end


endmodule 