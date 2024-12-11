module IDEX(
  input clk,reset,
//  input [3:0] funct4_in,//funct4 of instruction from instruction memory
  input [31:0] pc_ID,//adder input, ouput of IFID carried forward
  input WB_ID,M_ID,EX_ID,
  input [31:0] rdata1_ID, //from regwrite
  input [31:0] rdata2_ID,//from regwrite
  input [31:0] imme_ID,//from data extractor
  input [4:0] rs1_ID,//from instruction parser
  input [4:0] rs2_ID, //from instruction parser
  input [4:0] rd_ID, //from instruction parser
  input branch_ID,
//  input branch_in,memread_in,memtoreg_in,memwrite_in,aluSrc_in,regwrite_in, //from control unit
//  input [1:0] Aluop_in,
  input flush, 
  output reg [31:0] pc_EX,
  output reg WB_EX,M_EX,
  output reg [4:0] rs1_EX,
  output reg [4:0] rs2_EX,
  output reg [4:0] rd_EX,
  output reg [31:0] imme_EX,
  output reg [31:0] rdata1_EX, //2bit mux
  output reg [31:0] rdata2_EX, //2bit mux
  output reg branch_EX
//  output reg [3:0] funct4_out,
//  output reg Branch,Memread,Memtoreg, Memwrite, Regwrite,Alusrc, 
//  output reg [1:0] aluop
);
  
  always @ (posedge clk)
    begin
      if (reset == 1'b1 || flush == 1'b1)
        begin
          pc_EX <= 32'b0;
          rs1_EX <= 5'b0;
          rs2_EX <= 5'b0;
          rd_EX <= 5'b0;
          imme_EX <= 32'b0;
          rdata1_EX <= 64'b0;
          rdata2_EX <= 64'b0;
//          funct4_out = 4'b0;
          branch_EX <= 1'b0;
//          Memread = 1'b0;
//          Memtoreg =1'b0;
//          Memwrite = 1'b0;
//          Regwrite = 1'b0;
//          Alusrc = 1'b0;
//          aluop = 2'b0;
	  WB_EX <= 1'b0;
	  M_EX <= 1'b0;
        end
      else
        begin
          pc_EX <= pc_ID;
          rs1_EX <= rs1_ID;
          rs2_EX <= rs2_ID;
          rd_EX <= rd_ID;
          imme_EX <= imme_ID;
          rdata1_EX <= rdata1_ID;
          rdata2_EX <= rdata2_ID;
//          funct4_out = funct4_in; //when connecting in top module Funct4 is wire containing this section of 31 bit instruction {instruction[30],instruction[14:12]}
          branch_EX <= branch_ID;
//          Memread = memread_in;
//          Memtoreg = memtoreg_in;
//          Memwrite = memwrite_in;
//          Regwrite = regwrite_in;
//          Alusrc = aluSrc_in;
//          aluop = Aluop_in;
	  WB_EX <= WB_ID;
	  M_EX <= M_ID;        
        end
    end
endmodule
