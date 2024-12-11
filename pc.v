module pc(
    input  clk, rst , pc_en, 
    input  [31:0] pc_in, 
    output reg [31:0] pc_out
);

    always @(posedge clk or posedge rst) begin
        if(rst) pc_out <= 0; 
        else if(pc_en) pc_out <= pc_in; // pc update
		else pc_out <= pc_out;
    end

endmodule
