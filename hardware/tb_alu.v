module tb_alu
#(
	parameter DATA_WIDTH = 32,
	parameter OP_WIDTH   = 3
)();

  reg         [  OP_WIDTH-1:0] op;
  reg  signed [DATA_WIDTH-1:0] in1, in2;
  wire signed [DATA_WIDTH-1:0] out_alu;

  alu #(.DATA_WIDTH(DATA_WIDTH),
        .OP_WIDTH(OP_WIDTH)) dut (op, 
                                  in1, in2, 
                                  out_alu);

  initial begin
    // Test addition
    op = 3'b000;
    in1 = 32'd5;
    in2 = 32'd8;
    #10; // Wait 10 time units

    // Test subtraction
    op = 3'b001;
    in1 = 32'd10;
    in2 = 32'd3;
    #10;

    // Test comparison (equal)
    op = 3'b010;
    in1 = 32'd15;
    in2 = 32'd15;
    #10;

    // Test comparison (greater than)
    op = 3'b011;
    in1 = 32'd20;
    in2 = 32'd10;
    #10;

    // Test other operations (simple examples)
    op = 3'b100; // Multiplication (using lower 16 bits)
    in1 = 32'd4;
    in2 = 32'd8;
    #10;

    op = 3'b101; // Bitwise inversion
    in1 = 32'hFFFF;
    in2 = 32'd0;
    #10;

    // Add more test cases here for other functionalities

    $finish;
  end

  always @(posedge dut.out_alu) begin
    // Print the results
    $display("Operation: %d, Input1: %d, Input2: %d, Output: %d", op, in1, in2, out_alu);
  end

endmodule