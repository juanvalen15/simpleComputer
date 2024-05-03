module instr_decoder
(
	input      		[3:0]	opcode,
	input signed	[31:0] 	acc,

	output reg 		[2:0] 	ula_op,
	output reg      		pc_load,
	output reg       		mem_wr
);

wire nzero = acc != 0;

always @ (*) begin
	case (opcode)
		// NOP: stops processing
		4'b0000:  begin                     
						ula_op <= 3'd0;
						pc_en  <= 1'b0;
						mem_wr <= 1'b0;
					end
		// LOAD: data from memory into the accumulator register
		4'b0001:  begin                     
						ula_op <= 3'd1;
						pc_en  <= 1'b0;
						mem_wr <= 1'b0;
					end					
		// SET: loads accumulator register value into memory
		4'b0010:  begin                     
						ula_op <= 3'd0;
						pc_en  <= 1'b0;
						mem_wr <= 1'b1;
					end				
		// ADD: adds memory data to the accumulator register
		4'b0011:  begin                     
						ula_op <= 3'd2;
						pc_en  <= 1'b0;
						mem_wr <= 1'b1;
					end										
		// MULT: multiply memory data with data from the accumulator register
		4'b0100:  begin                     
						ula_op <= 3'd3;
						pc_en  <= 1'b0;
						mem_wr <= 1'b0;
					end					
		// JNZ: jump to a new address if accumulator register is not zero
		4'b0101:  begin                     
						ula_op <= 3'd0;
						pc_en  <= nzero;
						mem_wr <= 1'b0;
					end				
		// JZ: jump to a new address if accumulator register is zero
		4'b0110:  begin                     
						ula_op <= 3'd0;
						pc_en  <= !nzero;
						mem_wr <= 1'b0;
					end		
		// JMP: jump to a new address
		4'b0111:  begin                     
						ula_op <= 3'd0;
						pc_en  <= 1'b1;
						mem_wr <= 1'b0;
					end
		// DEFAULT
		default:  begin                     
						ula_op <= 3'dx;
						pc_en  <= 1'bx;
						mem_wr <= 1'bx;
					end					

	endcase
end

endmodule 