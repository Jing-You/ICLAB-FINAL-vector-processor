module MEM_stage(

	input clk,
	input rst_n,
	input [31:0] write_data,
	input MemWrite,
	input [31:0] alu_result_i,
	output [31:0] mem_read_data
);

//write peripheral memory if memory write address > 256
// wire peri_web = ~(MemWrite ? |instn[15:8] : 1'b0);
// wire [15:0] peri_addr  = ~peri_web ?   instn[15:0] : 16'b0;
// wire [15:0] peri_datao = ~peri_web ? sw_data[15:0] : 16'b0;


// wire dcache_web = MemWrite ? ~peri_web : 1'b1;

/*
dsram dcache(
.addr(data_addr),
.clk(clk),
.en_wr(dcache_web),
.in(sw_data),
.out(dsram_out)
);
*/

wire dcache_web = MemWrite ? 1'b0 : 1'b1;

dsram dcache(
.addr(alu_result_i[7:0]),
.clk(clk),
.en_wr(dcache_web),
.in(write_data),
.out(mem_read_data)
);

endmodule
