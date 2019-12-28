module EXE_stage(
	//input
	PC,
	//en_exe,
	RegDst,
	read_data1,
	read_data2,
	rd_addr,
	//rs_addr,
	rt_addr,
	shamt,
	funct,
	immd,
	ALUOp,
    ALUSrc,


	read_data_v1_0,
	read_data_v1_1,
	read_data_v1_2,
	read_data_v1_3,
	read_data_v1_4,
	read_data_v1_5,
	read_data_v1_6,
	read_data_v1_7,
	read_data_v2_0,
	read_data_v2_1,
	read_data_v2_2,
	read_data_v2_3,
	read_data_v2_4,
	read_data_v2_5,
	read_data_v2_6,
	read_data_v2_7,
	cnt,
	vlen,




	//output
	write_addr,
	alu_result,
	alu_overflow,
	zero,
	PC_out,

	alu_result_v0,
	alu_result_v1,
	alu_result_v2,
	alu_result_v3,
	alu_result_v4,
	alu_result_v5,
	alu_result_v6,
	alu_result_v7
    
);

input [15:0]PC;
//input en_exe;
input RegDst;
//input [4:0]rs_addr;
input [4:0]rt_addr;
input [4:0]rd_addr;
input [4:0]shamt;
input [5:0]funct;
input signed [31:0]immd;			//input signed extension immediate[15:0] 
input signed [31:0]read_data1;
input signed [31:0]read_data2;
input [1:0]ALUOp;
input ALUSrc;

output reg[4:0] write_addr;
output signed [31:0]alu_result;
output alu_overflow;
output zero;
output reg [15:0]PC_out;

input [31:0] read_data_v1_0;
input [31:0] read_data_v1_1;
input [31:0] read_data_v1_2;
input [31:0] read_data_v1_3;
input [31:0] read_data_v1_4;
input [31:0] read_data_v1_5;
input [31:0] read_data_v1_6;
input [31:0] read_data_v1_7;
input [31:0] read_data_v2_0;
input [31:0] read_data_v2_1;
input [31:0] read_data_v2_2;
input [31:0] read_data_v2_3;
input [31:0] read_data_v2_4;
input [31:0] read_data_v2_5;
input [31:0] read_data_v2_6;
input [31:0] read_data_v2_7;
input [4:0]  cnt;
input [31:0] vlen;


output [31:0] alu_result_v0;
output [31:0] alu_result_v1;
output [31:0] alu_result_v2;
output [31:0] alu_result_v3;
output [31:0] alu_result_v4;
output [31:0] alu_result_v5;
output [31:0] alu_result_v6;
output [31:0] alu_result_v7;

always@(*) begin
	if(RegDst==1'b1) begin
		if (cnt > 0)  write_addr = rd_addr + cnt - 1;	// vector LW
		else write_addr = rd_addr;
	end
	else begin
		write_addr = rt_addr;
	end
end
//for PC counter of BEQ

wire [31:0] shift_immd = immd<<<2;

always@(*) begin
	PC_out = PC + shift_immd[15:0];
end

alu alu(
	//input
	//.en_exe(en_exe),
	.cnt(cnt),
	.read_data1(read_data1),
	.read_data2(read_data2),
	.immd(immd),
	.funct(funct),
	.shamt(shamt),
	.ALUOp(ALUOp),
	.ALUSrc(ALUSrc),
	//output
	.alu_result(alu_result),
	.alu_overflow(alu_overflow),
	.zero(zero),
	.read_data_v1_0(read_data_v1_0),
	.read_data_v1_1(read_data_v1_1),
	.read_data_v1_2(read_data_v1_2),
	.read_data_v1_3(read_data_v1_3),
	.read_data_v1_4(read_data_v1_4),
	.read_data_v1_5(read_data_v1_5),
	.read_data_v1_6(read_data_v1_6),
	.read_data_v1_7(read_data_v1_7),
	.read_data_v2_0(read_data_v2_0),
	.read_data_v2_1(read_data_v2_1),
	.read_data_v2_2(read_data_v2_2),
	.read_data_v2_3(read_data_v2_3),
	.read_data_v2_4(read_data_v2_4),
	.read_data_v2_5(read_data_v2_5),
	.read_data_v2_6(read_data_v2_6),
	.read_data_v2_7(read_data_v2_7),
	.alu_result_v0(alu_result_v0),
	.alu_result_v1(alu_result_v1),
	.alu_result_v2(alu_result_v2),
	.alu_result_v3(alu_result_v3),
	.alu_result_v4(alu_result_v4),
	.alu_result_v5(alu_result_v5),
	.alu_result_v6(alu_result_v6),
	.alu_result_v7(alu_result_v7)
);


endmodule
