module top(
	clk,
	rst_n,
	//input (icache input)
	boot_up,
	// boot_addr,
	// boot_datai,
	// boot_web,
	//output (peripheral write)
	peri_web,
	peri_addr,
	peri_datao,
	// MEM_stage
	MEM_alu_result,
	MEM_write_data,
	mem_read_data,
	MEM_MemWrite,
	// IF_cache
	IF_PC,
	PC_run,
    instn
);


input clk, rst_n;
input boot_up;
// input [7:0] boot_addr;
// input [31:0] boot_datai;
// input boot_web;

output  peri_web;
output [15:0] peri_addr;
output [15:0] peri_datao;

// MEM_stage
output [31:0] MEM_alu_result;
output [31:0] MEM_write_data;
output  MEM_MemWrite;
input  [31:0] mem_read_data;

// IF_icahe
output PC_run;
output [15:0] IF_PC;
input [31:0] instn;

wire [31:0]instn;
wire [15:0] IF_PC;




wire MEM_RegWrite;
wire [4:0] MEM_write_addr;
wire [31:0] ID_read_data1;
wire [31:0] ID_read_data2;
// wire [31:0]dsram_out;
// wire [5:0] ID_opcode;
wire [4:0] ID_rd_addr;
// wire [4:0] ID_rs_addr;
wire [4:0] ID_rt_addr;
wire [4:0] ID_shamt;
wire [5:0] ID_funct;
wire [31:0] ID_immd;
wire ID_RegDst;
wire [1:0]ID_ALUOp;
wire ID_ALUSrc;
wire ID_branch;
wire ID_MemWrite;
wire ID_RegWrite;
wire ID_MemtoReg;
wire [15:0]ID_PC;
wire [31:0]ID_instn;

wire [15:0]EXE_PC;
// wire [5:0]EXE_opcode;
// wire [4:0]EXE_rs_addr;
wire [4:0]EXE_rt_addr;
wire [4:0]EXE_rd_addr;
wire [4:0]EXE_shamt;
wire [5:0]EXE_funct;
wire [31:0]EXE_immd;
wire [15:0] PC_out;
wire EXE_RegWrite;
wire EXE_MemtoReg;
wire [31:0]EXE_read_data1;
wire [31:0]EXE_read_data2;
wire EXE_RegDst;
wire EXE_branch;
wire EXE_MemWrite;
wire [1:0]EXE_ALUOp;
wire EXE_ALUSrc;
wire MEM_MemtoReg;
// wire EXE_alu_overflow;
wire [31:0] WB_write_back_data;
wire [4:0] EXE_write_addr;
wire [31:0] EXE_alu_result;
wire [15:0] MEM_PC;

wire [31:0] MEM_alu_result;
wire [31:0] MEM_write_data;
wire [31:0] mem_read_data;
// wire [31:0] MEM_read_data2;
wire MEM_zero;
wire MEM_branch;
wire MEM_MemWrite;
wire MEM_MemRead;
wire [15:0]Branch_in;
wire EXE_zero;
wire PCSrc;
wire PC_run;
// wire [31:0] WB_read_data;
wire [31:0] WB_alu_result;
wire [1:0] state,next_state;
wire beq_enable;
wire [4:0] WB_write_addr;

// wire [31:0] vlen;
wire [31:0] cnt;
wire [31:0] EXE_cnt;


wire [31:0] ID_read_data_v1_0;
wire [31:0] ID_read_data_v1_1;
wire [31:0] ID_read_data_v1_2;
wire [31:0] ID_read_data_v1_3;
wire [31:0] ID_read_data_v1_4;
wire [31:0] ID_read_data_v1_5;
wire [31:0] ID_read_data_v1_6;
wire [31:0] ID_read_data_v1_7;
wire [31:0] ID_read_data_v2_0;
wire [31:0] ID_read_data_v2_1;
wire [31:0] ID_read_data_v2_2;
wire [31:0] ID_read_data_v2_3;
wire [31:0] ID_read_data_v2_4;
wire [31:0] ID_read_data_v2_5;
wire [31:0] ID_read_data_v2_6;
wire [31:0] ID_read_data_v2_7;


wire [31:0] WB_write_data_v0;
wire [31:0] WB_write_data_v1;
wire [31:0] WB_write_data_v2;
wire [31:0] WB_write_data_v3;
wire [31:0] WB_write_data_v4;
wire [31:0] WB_write_data_v5;
wire [31:0] WB_write_data_v6;
wire [31:0] WB_write_data_v7;

wire [31:0] EXE_alu_result_v0;
wire [31:0] EXE_alu_result_v1;
wire [31:0] EXE_alu_result_v2;
wire [31:0] EXE_alu_result_v3;
wire [31:0] EXE_alu_result_v4;
wire [31:0] EXE_alu_result_v5;
wire [31:0] EXE_alu_result_v6;
wire [31:0] EXE_alu_result_v7;

wire [31:0] MEM_alu_result_v0;
wire [31:0] MEM_alu_result_v1;
wire [31:0] MEM_alu_result_v2;
wire [31:0] MEM_alu_result_v3;
wire [31:0] MEM_alu_result_v4;
wire [31:0] MEM_alu_result_v5;
wire [31:0] MEM_alu_result_v6;
wire [31:0] MEM_alu_result_v7;

wire [31:0] WB_alu_result_v0;
wire [31:0] WB_alu_result_v1;
wire [31:0] WB_alu_result_v2;
wire [31:0] WB_alu_result_v3;
wire [31:0] WB_alu_result_v4;
wire [31:0] WB_alu_result_v5;
wire [31:0] WB_alu_result_v6;
wire [31:0] WB_alu_result_v7;

assign PCSrc = MEM_zero & MEM_branch;

//reset signal for all module (also reset when bootup), except PC
wire rstn_system = rst_n & PC_run;

IF_stage IF_stage(
	// input
	.clk(clk),
	.rst_n(rst_n),
    .boot_up(boot_up),
    // .boot_addr(boot_addr),
    // .boot_datai(boot_datai),
    // .boot_web(boot_web),
	.Branch_in(Branch_in),
	.PCSrc(PCSrc),
    .PC_run(PC_run),
	// .instn(instn),	
	.PC_add(IF_PC)	// to do PC +4
);


IF_ID IF_ID(
	//input
	.clk(clk),
	.rst_n(rstn_system),
	.IF_PC(IF_PC),
	.instn(instn),
	.beq_enable(beq_enable),
	//output
	.ID_PC(ID_PC),
	.ID_instn(ID_instn)
);


ID_stage ID_stage(
	////////////////////////input///////////////////
	.clk(clk),
	.rst_n(rstn_system),
	.WB_RegWrite(WB_RegWrite),
	.WB_VRegWrite(WB_VRegWrite),
	.write_addr(WB_write_addr),
	.write_data(WB_write_back_data),
	.instn_new(ID_instn),
	.write_data_v0(WB_write_data_v0),
	.write_data_v1(WB_write_data_v1),
	.write_data_v2(WB_write_data_v2),
	.write_data_v3(WB_write_data_v3),
	.write_data_v4(WB_write_data_v4),
	.write_data_v5(WB_write_data_v5),
	.write_data_v6(WB_write_data_v6),
	.write_data_v7(WB_write_data_v7),

	///////////////////////output//////////////////////
	.read_data1(ID_read_data1),
	.read_data2(ID_read_data2),
	// .dsram_out(dsram_out),
	//instruction type
	// .opcode(ID_opcode),
	.rd_addr(ID_rd_addr),
	// .rs_addr(ID_rs_addr),
	.rt_addr(ID_rt_addr),
	.shamt(ID_shamt),  // for shifting
	.funct(ID_funct), 
	.immd(ID_immd),
	//control signals
	//Execution/Address Calculation stage control lines
	.RegDst(ID_RegDst),
	.ALUOp(ID_ALUOp),
	.ALUSrc(ID_ALUSrc),
	//Memory access stage control lines
	.branch(ID_branch),
	// .MemRead(ID_MemRead),
	.MemWrite(ID_MemWrite),
	//Write-back stage control lines
	.RegWrite(ID_RegWrite),
	.MemtoReg(ID_MemtoReg),
	.VRegWrite(ID_VRegWrite),
	//beq
	.PCSrc(PCSrc),
	.state(state),
	.next_state(next_state),
	.beq_enable(beq_enable),
    .peri_web(peri_web),
    .peri_addr(peri_addr),
    .peri_datao(peri_datao),
	.read_data_v1_0(ID_read_data_v1_0),
	.read_data_v1_1(ID_read_data_v1_1),
	.read_data_v1_2(ID_read_data_v1_2),
	.read_data_v1_3(ID_read_data_v1_3),
	.read_data_v1_4(ID_read_data_v1_4),
	.read_data_v1_5(ID_read_data_v1_5),
	.read_data_v1_6(ID_read_data_v1_6),
	.read_data_v1_7(ID_read_data_v1_7),
	.read_data_v2_0(ID_read_data_v2_0),
	.read_data_v2_1(ID_read_data_v2_1),
	.read_data_v2_2(ID_read_data_v2_2),
	.read_data_v2_3(ID_read_data_v2_3),
	.read_data_v2_4(ID_read_data_v2_4),
	.read_data_v2_5(ID_read_data_v2_5),
	.read_data_v2_6(ID_read_data_v2_6),
	.read_data_v2_7(ID_read_data_v2_7),
	.cnt(cnt)
	// .vlen(vlen)

);

ID_EXE ID_EXE(
	//input
	.clk(clk),
	.rst_n(rstn_system),
	.ID_PC(ID_PC),
	// .ID_opcode(ID_opcode),
	// .ID_rs_addr(ID_rs_addr),
	.ID_rt_addr(ID_rt_addr),
	.ID_rd_addr(ID_rd_addr),
	.ID_shamt(ID_shamt),
	.ID_funct(ID_funct),
	.ID_immd(ID_immd),
	.ID_VRegWrite(ID_VRegWrite),	
	//.ID_read_data1(ID_read_data1),
	//.ID_read_data2(ID_read_data2),
    //.ID_read(ID_read),
    .ID_write(ID_MemWrite),
	// .ID_MemRead(ID_MemRead),
	.ID_branch(ID_branch),
	.ID_RegDst(ID_RegDst),
	.ID_ALUOp(ID_ALUOp),
	.ID_ALUSrc(ID_ALUSrc),
	.ID_RegWrite(ID_RegWrite),
    .ID_MemtoReg(ID_MemtoReg),
	.cnt_i(cnt),




	//output
	.EXE_PC(EXE_PC),
	// .EXE_rs_addr(EXE_rs_addr),
	.EXE_rt_addr(EXE_rt_addr),
	.EXE_rd_addr(EXE_rd_addr),
	.EXE_shamt(EXE_shamt),
	.EXE_funct(EXE_funct),
	.EXE_immd(EXE_immd),
	//.EXE_read(),
	.EXE_write(EXE_MemWrite),
	.EXE_VRegWrite(EXE_VRegWrite),	
	//.EXE_read_data1(EXE_read_data1),
	//.EXE_read_data2(EXE_read_data2),
	.EXE_RegDst(EXE_RegDst),
	.EXE_branch(EXE_branch),
	.EXE_ALUOp(EXE_ALUOp),
	.EXE_ALUSrc(EXE_ALUSrc),
	.EXE_RegWrite(EXE_RegWrite),
	.EXE_MemtoReg(EXE_MemtoReg),
	.cnt_o(EXE_cnt),






	// .EXE_MemRead(EXE_MemRead),
	//beq
	.state(state),
	.next_state(next_state)
);

EXE_stage EXE_stage(
	//input
	.PC(EXE_PC),
	//.en_exe(),
	.RegDst(EXE_RegDst),
	.read_data1(ID_read_data1),
	.read_data2(ID_read_data2),
	.rd_addr(EXE_rd_addr),
	//.rs_addr(EXE_rs_addr),
	.rt_addr(EXE_rt_addr),
	.shamt(EXE_shamt),
	.funct(EXE_funct),
	.immd(EXE_immd),
	.ALUOp(EXE_ALUOp),
    .ALUSrc(EXE_ALUSrc),

	.read_data_v1_0(ID_read_data_v1_0),
	.read_data_v1_1(ID_read_data_v1_1),
	.read_data_v1_2(ID_read_data_v1_2),
	.read_data_v1_3(ID_read_data_v1_3),
	.read_data_v1_4(ID_read_data_v1_4),
	.read_data_v1_5(ID_read_data_v1_5),
	.read_data_v1_6(ID_read_data_v1_6),
	.read_data_v1_7(ID_read_data_v1_7),
	.read_data_v2_0(ID_read_data_v2_0),
	.read_data_v2_1(ID_read_data_v2_1),
	.read_data_v2_2(ID_read_data_v2_2),
	.read_data_v2_3(ID_read_data_v2_3),
	.read_data_v2_4(ID_read_data_v2_4),
	.read_data_v2_5(ID_read_data_v2_5),
	.read_data_v2_6(ID_read_data_v2_6),
	.read_data_v2_7(ID_read_data_v2_7),
	.cnt(EXE_cnt),
	// .vlen(vlen),

	//output
	.alu_result(EXE_alu_result),
	// .alu_overflow(EXE_alu_overflow),
	.zero(EXE_zero),
	.PC_out(PC_out),
	.write_addr(EXE_write_addr),

	.alu_result_v0(EXE_alu_result_v0),
	.alu_result_v1(EXE_alu_result_v1),
	.alu_result_v2(EXE_alu_result_v2),
	.alu_result_v3(EXE_alu_result_v3),
	.alu_result_v4(EXE_alu_result_v4),
	.alu_result_v5(EXE_alu_result_v5),
	.alu_result_v6(EXE_alu_result_v6),
	.alu_result_v7(EXE_alu_result_v7)

);

EX_MEM EX_MEM(
	// input
	.clk(clk),
	.rst_n(rstn_system),
	.PC_i(PC_out),
	.RegWrite_i(EXE_RegWrite),
	.alu_result_i(EXE_alu_result),
  	.write_addr_i(EXE_write_addr),	// register addr
	// .write_data_i(EXE_write_data),  // mem data
	.write_data_i(ID_read_data2), // mem data
	.MemRead_i(EXE_MemWrite),	// low activa
  	.zero_i(EXE_zero),
	.MemtoReg_i(EXE_MemtoReg),
	.branch_i(EXE_branch),
	// .read_data2_i(ID_read_data2),
	.alu_result_v0_i(EXE_alu_result_v0),
	.alu_result_v1_i(EXE_alu_result_v1),
	.alu_result_v2_i(EXE_alu_result_v2),
	.alu_result_v3_i(EXE_alu_result_v3),
	.alu_result_v4_i(EXE_alu_result_v4),
	.alu_result_v5_i(EXE_alu_result_v5),
	.alu_result_v6_i(EXE_alu_result_v6),
	.alu_result_v7_i(EXE_alu_result_v7),

	.VRegWrite_i(EXE_VRegWrite),	
	// output
	.RegWrite_o(MEM_RegWrite),
	.alu_result_o(MEM_alu_result),
	.MemRead_o(MEM_MemWrite), // low activa
	.PC_o(Branch_in),
  	.write_addr_o(MEM_write_addr), // register addr
	.write_data_o(MEM_write_data), // mem data
  	.zero_o(MEM_zero),
	.MemtoReg_o(MEM_MemtoReg),
	.branch_o(MEM_branch),
	.VRegWrite_o(MEM_VRegWrite),	
	// .read_data2_o(MEM_read_data2),

	.alu_result_v0_o(MEM_alu_result_v0),
	.alu_result_v1_o(MEM_alu_result_v1),
	.alu_result_v2_o(MEM_alu_result_v2),
	.alu_result_v3_o(MEM_alu_result_v3),
	.alu_result_v4_o(MEM_alu_result_v4),
	.alu_result_v5_o(MEM_alu_result_v5),
	.alu_result_v6_o(MEM_alu_result_v6),
	.alu_result_v7_o(MEM_alu_result_v7)

);
/*
// MEM_stage
wire dcache_web = MEM_MemWrite ? 1'b0 : 1'b1;

dsram dcache(
.addr(MEM_alu_result[7:0]),
.clk(clk),
.en_wr(dcache_web),
.in(MEM_write_data),
.out(mem_read_data)
);
*/

/*
MEM_stage MEM_stage(
	// input
	.clk(clk),
	.rst_n(rstn_system),
	.write_data(MEM_write_data),
	.MemWrite(MEM_MemWrite),	// low activa

	.alu_result_i(MEM_alu_result),
	// output
	.mem_read_data(mem_read_data)
);
*/
MEM_WB_stage MEM_WB_stage(
	// input

	.alu_result_v0_i(MEM_alu_result_v0),
	.alu_result_v1_i(MEM_alu_result_v1),
	.alu_result_v2_i(MEM_alu_result_v2),
	.alu_result_v3_i(MEM_alu_result_v3),
	.alu_result_v4_i(MEM_alu_result_v4),
	.alu_result_v5_i(MEM_alu_result_v5),
	.alu_result_v6_i(MEM_alu_result_v6),
	.alu_result_v7_i(MEM_alu_result_v7),
	.VRegWrite_i(MEM_VRegWrite),	
	.clk(clk),
	.rst_n(rstn_system),
	.RegWrite_i(MEM_RegWrite),
	.alu_result_i(MEM_alu_result),
	// .read_data_i(mem_read_data),
	.write_addr_i(MEM_write_addr), // register addr
	.MemtoReg_i(MEM_MemtoReg),
	// output
	.RegWrite_o(WB_RegWrite),
	.alu_result_o(WB_alu_result),
	// .read_data_o(WB_read_data),
	.write_addr_o(WB_write_addr),
	.MemtoReg_o(WB_MemtoReg),
	.VRegWrite_o(WB_VRegWrite),	
	.alu_result_v0_o(WB_write_data_v0),
	.alu_result_v1_o(WB_write_data_v1),
	.alu_result_v2_o(WB_write_data_v2),
	.alu_result_v3_o(WB_write_data_v3),
	.alu_result_v4_o(WB_write_data_v4),
	.alu_result_v5_o(WB_write_data_v5),
	.alu_result_v6_o(WB_write_data_v6),
	.alu_result_v7_o(WB_write_data_v7)

);

WB_stage WB_stage(
	// input
	.alu_result(WB_alu_result),
	// .read_data(WB_read_data), // no pipe
	.read_data(mem_read_data),
	.MemtoReg(WB_MemtoReg),
	// output
	.WB_write_back_data(WB_write_back_data)
);

endmodule
