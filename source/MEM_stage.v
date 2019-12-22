module MEM_stage(

	input clk,
	input rst_n,
	input [31:0] write_data,
	input MemRead,
	input [31:0] alu_result_i,
	output reg mem_read_data
);
endmodule
