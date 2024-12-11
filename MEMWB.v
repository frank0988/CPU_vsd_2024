module MEMWB(
  input clk,rst,
  input [31:0] mem_rdata,
  input [31:0] result_alu_in, 
  input [4:0] Rd_in,                //EX MEM output
  input memtoreg_in, regwrite_in ,   //ex mem output as mem wb inputs
  output reg [31:0] mem_rdata_out, 
  output reg [31:0] result_alu_out,
  output reg [4:0] rd,
  output reg Memtoreg, Regwrite
);
  
  always @(posedge clk) begin
      if (rst == 1'b1)begin
          mem_rdata_out <= 31'b0;
          result_alu_out <= 31'b0;
          rd <= 5'b0;
          Memtoreg <= 1'b0;
          Regwrite <= 1'b0;  
      end
      else begin
          mem_rdata_out <= mem_rdata;
          result_alu_out <= result_alu_in;
          rd <= Rd_in;
          Memtoreg <= memtoreg_in;
          Regwrite <= regwrite_in;
        end
    end
endmodule