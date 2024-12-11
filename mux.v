module mux_2to1 (in_0, in_1, sel, out);
input [31:0] in_0, in_1;
input sel;
output reg [31:0] out;
	always @(in_0 or in_1 or sel) begin
		case (sel)
		1'b0:
		  out = in_0;
		1'b1:
		  out = in_1;
		endcase
	end
endmodule

module mux_3to1 (in_0, in_1 , in_2, sel, out);

    input [31:0] in_0, in_1,in_2;
    input [1:0] sel;
    output reg [31:0] out;

    always @(*)
    casex(sel)
        2'b00:
            out = in_0;
        2'b01:
            out = in_1;
        2'b10:
            out = in_2;
        default:
            out = 32'bx;
    endcase
endmodule

module mux_4to1 (in_0, in_1 , in_2 , in_3 , sel , out);

    input [31:0] in_0, in_1,in_2,in_3;
    input [1:0] sel;
    output reg [31:0] out;

    always @(*)
    casex(sel)
        2'b00:
            out = in_0;
        2'b01:
            out = in_1;
        2'b10:
            out = in_2;
		2'b11:
            out = in_3;	
    endcase
endmodule