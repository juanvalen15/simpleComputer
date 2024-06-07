module instr_decoder
#(
	parameter DATA_WIDTH   = 32,
	parameter OPCODE_WIDTH = 4,
	parameter ALU_OP_WIDTH = 3
)
(
	input      		[OPCODE_WIDTH-1:0]	opcode,
	input signed	[  DATA_WIDTH-1:0] 	acc,

	output reg 		[ALU_OP_WIDTH-1:0] 	alu_op,
	output reg      					pc_load,
	output reg       					mem_wr,
	output reg 							data_sp_push,
	output reg  						data_sp_pop
);

wire nzero = acc != {DATA_WIDTH{1'b0}};

always @ (*) begin
	case (opcode)
		// NOP: stops processing
		4'b0000:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;
					end
		// LOAD: data from memory into the accumulator register
		4'b0001:  begin                     
						alu_op 			<= 3'd1;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end					
		// SET: loads accumulator register value into memory
		4'b0010:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b1;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end				
		// ADD: adds memory data to the accumulator register
		4'b0011:  begin                     
						alu_op 			<= 3'd2;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b1;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;			
					end										
		// MULT: multiply memory data with data from the accumulator register
		4'b0100:  begin                     
						alu_op 			<= 3'd3;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end					
		// JNZ: jump to a new address if accumulator register is not zero
		4'b0101:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= nzero;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end				
		// JZ: jump to a new address if accumulator register is zero
		4'b0110:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= !nzero;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end		
		// JMP: jump to a new address
		4'b0111:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= 1'b1;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b0;						
					end
		// PUSH: loads accumulator register value into the data stack 
		4'b1000:  begin                     
						alu_op 			<= 3'd0;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b1;
						data_sp_push 	<= 1'b1;
						data_sp_pop 	<= 1'b0;						
					end					
		// POP: loads accumulator register value on top of the data stack
		4'b1001:  begin                     
						alu_op 			<= 3'd1;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b1;						
					end		
		// SADD: adds the accumulator register value with the top of the data stack doing POP
		4'b1010:  begin                     
						alu_op 			<= 3'd2;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b1;						
					end
		// SMLT: multiplies the accumulator register value with the top of the data stack doing POP
		4'b1011:  begin                     
						alu_op 			<= 3'd3;
						pc_load  		<= 1'b0;
						mem_wr 			<= 1'b0;
						data_sp_push 	<= 1'b0;
						data_sp_pop 	<= 1'b1;						
					end																							
		// DEFAULT
		default:  begin                     
						alu_op 			<= 3'dx;
						pc_load  		<= 1'bx;
						mem_wr 			<= 1'bx;
						data_sp_push 	<= 1'bx;
						data_sp_pop 	<= 1'bx;				
					end					

	endcase
end

endmodule 