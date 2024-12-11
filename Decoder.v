module Decoder(
  input [31:0] ir,
  output [4:0] rs1,
  output [4:0] rs2,
  output [4:0] rd,
  output [6:0] opcode,
  output [2:0] fun3,
  output [6:0] fun7
  );

	assign rs1 = ir[19:15];
	assign rs2 = ir[24:20];
	assign rd = ir[11:7];
	assign opcode = ir[6:0];
	assign fun3 = ir[14:12];
	assign fun7 = ir[31:25];

endmodule
