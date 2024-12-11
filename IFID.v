module IFID(
    input clk,
    input rst,
    input [31:0] ir,
    input [31:0] pc_IF, 
    input flush, 
    input hazard_ifid, 
    output reg [31:0] ir_out,//instruction out,
    output reg [31:0] pc_ID
  );
  always @(posedge clk) begin
      if (rst == 1'b1 || flush == 1'b1) begin
          ir_out  <= 32'b0;
          pc_ID <= 32'b0;
      end
      else if (hazard_ifid) begin
          ir_out <= ir_out;
          pc_ID <= pc_ID;
      end 
	  else begin
          ir_out <= ir;
          pc_ID <= pc_IF;
      end
    end
endmodule