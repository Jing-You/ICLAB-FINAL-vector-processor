module ID_stage(
	////////////////////////input///////////////////
	clk,
	rst_n,
	WB_RegWrite,
	write_addr,
	write_data,

	write_data_v0,
	write_data_v1,
	write_data_v2,
	write_data_v3,
	write_data_v4,
	write_data_v5,
	write_data_v6,
	write_data_v7,



	instn,
	///////////////////////output//////////////////////
	read_data1,
	read_data2,
	dsram_out,			//dsram Read data
	//instruction type
	opcode,
	rd_addr,
	rs_addr,
	rt_addr,
	shamt,  
	funct, 
	immd,
	//control signals
	//Execution/Address Calculation stage control lines
	RegDst,
	ALUOp,
	ALUSrc,
	//Memory access stage control lines
	branch,
	//MemRead,
	MemWrite,
	//Write-back stage control lines
	RegWrite,
	MemtoReg,
	//BEQ
	PCSrc,
	state,
	beq_enable,
	next_state,
    peri_web,
    peri_addr,
    peri_datao,

	read_data_v2_0,
	read_data_v2_1,
	read_data_v2_2,
	read_data_v2_3,
	read_data_v2_4,
	read_data_v2_5,
	read_data_v2_6,
	read_data_v2_7,
	read_data_v1_0,
	read_data_v1_1,
	read_data_v1_2,
	read_data_v1_3,
	read_data_v1_4,
	read_data_v1_5,
	read_data_v1_6,
	read_data_v1_7

);

input	clk;
input	rst_n;
input	WB_RegWrite;
input	[4:0]write_addr;
input	[31:0]write_data;
input   [31:0]instn;
input 	[1:0] state;
input	PCSrc;
input 	[31:0] write_data_v0;
input 	[31:0] write_data_v1;
input 	[31:0] write_data_v2;
input 	[31:0] write_data_v3;
input 	[31:0] write_data_v4;
input 	[31:0] write_data_v5;
input 	[31:0] write_data_v6;
input 	[31:0] write_data_v7;

output 	[31:0]read_data1;
output 	[31:0]read_data2;
output  [5:0]opcode;
output  [4:0]rd_addr, rs_addr, rt_addr;
output  [4:0]shamt;
output  [5:0]funct;
output  [31:0]immd;
output   RegDst;
output   [1:0]ALUOp;
output   ALUSrc;
output   branch;
// output   MemRead;
output   MemWrite;		
output   RegWrite;
output   MemtoReg;
output   [31:0]dsram_out;
output	[1:0] next_state;
output	beq_enable;

output  peri_web;
output [15:0] peri_addr;
output [15:0] peri_datao;

output [31:0] read_data_v1_0;
output [31:0] read_data_v1_1;
output [31:0] read_data_v1_2;
output [31:0] read_data_v1_3;
output [31:0] read_data_v1_4;
output [31:0] read_data_v1_5;
output [31:0] read_data_v1_6;
output [31:0] read_data_v1_7;
output [31:0] read_data_v2_0;
output [31:0] read_data_v2_1;
output [31:0] read_data_v2_2;
output [31:0] read_data_v2_3;
output [31:0] read_data_v2_4;
output [31:0] read_data_v2_5;
output [31:0] read_data_v2_6;
output [31:0] read_data_v2_7;

wire    [4:0]rt_addr, rs_addr;
wire    MemWrite;
//data memory
wire [31:0] sw_data;
wire [7:0] data_addr;


assign rs_addr = instn[25:21];
assign rt_addr = instn[20:16];
assign rd_addr = instn[15:11];
assign shamt   = instn[10:6];
assign funct   = instn[5:0];

assign immd    = {{16{instn[15]}}, instn[15:0]};
assign data_addr = instn[7:0];




regfile regfile(
	.clk(clk),
	.rst_n(rst_n),
	.read_data1(read_data1),
	.read_data2(read_data2),
	.write_addr(write_addr),
	.write_data(write_data),
	.write_data_v0(write_data_v0),
	.write_data_v1(write_data_v1),
	.write_data_v2(write_data_v2),
	.write_data_v3(write_data_v3),
	.write_data_v4(write_data_v4),
	.write_data_v5(write_data_v5),
	.write_data_v6(write_data_v6),
	.write_data_v7(write_data_v7),
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
	//.read(),
	.write(WB_RegWrite),
	.VRegWrite(WB_VRegWrite),
	//data memory
	.sw_data(sw_data)
);

controller controller(
	////////////////input//////////////
	.instn(instn),
	////////////////output//////////////
	//instruction type
	.opcode(opcode),
	//control signals
	//Execution /Address Calculation stage control lines
	.RegDst(RegDst),
	.ALUOp(ALUOp),
	.ALUSrc(ALUSrc),
	//Memory access stage control lines
	.branch(branch),
	.MemWrite(MemWrite),
	//Write-back stage control lines
	.RegWrite(RegWrite),
	.MemtoReg(MemtoReg),
	//beq
	.PCSrc(PCSrc),
	.state(state),
	.next_state(next_state),
	.beq_enable(beq_enable)

);


endmodule
