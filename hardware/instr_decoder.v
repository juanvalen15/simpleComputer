module instr_decoder
(
	input      [2:0] opcode,

	output reg [1:0] ula_op,
	output reg       pc_en,
	output reg       mem_wr
);

always @ (*) begin
	case (opcode)
		3'b000:  begin                     // NOP
						ula_op <= 2'd0;
						pc_en  <= 1'b1;
						mem_wr <= 1'b0;
					end
		3'b001:  begin                     // STOP
						ula_op <= 2'd0;
						pc_en  <= 1'b0;
						mem_wr <= 1'b0;
					end
		3'b010:  begin                     // LOAD
						ula_op <= 2'd1;
						pc_en  <= 1'b1;
						mem_wr <= 1'b0;
					end
		3'b011:  begin                     // SET
						ula_op <= 2'd0;
						pc_en  <= 1'b1;
						mem_wr <= 1'b1;
					end
		3'b100:  begin                     // ADD
						ula_op <= 2'd2;
						pc_en  <= 1'b1;
						mem_wr <= 1'b0;
					end
		3'b101:  begin                     // MULT
						ula_op <= 2'd3;
						pc_en  <= 1'b1;
						mem_wr <= 1'b0;
					end
		default: begin
						ula_op <= 2'dx;
						pc_en  <= 1'bx;
						mem_wr <= 1'bx;
					end
	endcase
end

endmodule 