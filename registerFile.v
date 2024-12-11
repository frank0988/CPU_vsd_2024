module registerFile(
  input clk,
//  input reset,
  input [4:0] rs1,
  input [4:0] rs2,
  input [4:0] rd,
  input [31:0] wdata,
  input wen,
  output reg[31:0] rdata1,
  output reg[31:0] rdata2
//  output [63:0] r8,
//  output [63:0] r19,
//  output [63:0] r20,
//  output [63:0] r21,
//  output [63:0] r22
);
  integer i;
  reg [31:0] registers [31:0];

//  assign r8 = registers[8];
//  assign r19 = registers[19];
//  assign r20 = registers[20];
//  assign r21 = registers[26];
//  assign r22 = registers[27];
 
  always @ (*)
    begin
//      if (reset)
//        begin
//          rdata1 = 32'd0;
//          rdata2 = 32'd0;
//        end
//      else
//        begin
          rdata1 = registers[rs1];
          rdata2 = registers[rs2];
        end
//    end
  always@(negedge clk)
    begin
      if (wen == 1)
        registers[rd] = wdata;
    end
endmodule
