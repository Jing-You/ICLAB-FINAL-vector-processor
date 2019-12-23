module EX_MEM(

	input clk,
	input rst_n,
	input [15:0] PC_i,
	input RegWrite_i,
	input [31:0] alu_result_i,
	input wirte_enable,	// low activa for sram
  	input [4:0] write_addr_i,	// register addr
    input [31:0] write_data_i, // mem data

	input MemRead_i,	// low activa
  	input zero_i,
	input MemtoReg_i,
	input branch_i,
    input read_data2_i,

	// output
	output reg RegWrite_o,
	output reg [31:0] alu_result_o,
	output reg MemRead_o, // high activa
	output reg [15:0] PC_o,
  	output reg [4:0] write_addr_o, // register addr

    output reg [31:0] write_data_o, // mem data
  	output reg zero_o,
	output reg MemtoReg_o,
	output reg branch_o,
    output reg read_data2_o


);
always @(posedge clk) begin
    if (!rst_n) begin
        RegWrite_o      <= 0;
        alu_result_o    <= 0;
        MemRead_o       <= 1;
        PC_o            <= 0;
        write_addr_o    <= 0;
        write_data_o    <= 0;
        zero_o          <= 0;
        MemtoReg_o      <= 0;
        branch_o        <= 0;
        read_data2_o    <= 0;

    end
    else begin
        RegWrite_o      <= RegWrite_i;
        alu_result_o    <= alu_result_i;
        MemRead_o       <= MemRead_i;
        PC_o            <= PC_i;
        write_addr_o    <= write_addr_i;
        write_data_o    <= write_data_i;
        zero_o          <= zero_i;
        MemtoReg_o      <= MemtoReg_i;
        branch_o        <= branch_i;
        read_data2_o    <= read_data2_i;

    end
end


endmodule