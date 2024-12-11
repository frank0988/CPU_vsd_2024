module mem(
  input clk ,
  input wen,
  input [31:0] wdata ,addr,
  output[31:0] rdata
);
  reg [7:0] mem[31:0]; 
  always @(posedge clk)
    begin
      if (wen)
        begin
          mem[addr]   <= wdata[7:0];
          mem[addr+1] <= wdata[15:8];
          mem[addr+2] <= wdata[23:16];
          mem[addr+3] <= wdata[31:24];
        end
    end
	
assign rdata[7:0]   = mem[addr];
assign rdata[15:8]  = mem[addr+1];
assign rdata[23:16] = mem[addr+2];
assign rdata[31:24] = mem[addr+3];	
	
endmodule
