module top(
	clk,
	rst_n,
        //input (icache input)
        boot_up,
        boot_addr,
        boot_datai,
        boot_web,
        //output (peripheral write)
        peri_web,
        peri_addr,
        peri_datao
);


input clk, rst_n;
input boot_up;
input [7:0] boot_addr;
input [31:0] boot_datai;
input boot_web;

output  peri_web;
output [15:0] peri_addr;
output [15:0] peri_datao;

wire [31:0]instn;
wire [15:0] IF_PC;


wire MEM_RegWrite;
wire [4:0] MEM_write_addr;
wire [31:0] ID_read_data1;
wire [31:0] ID_read_data2;
wire [31:0]dsram_out;
wire [5:0] ID_opcode;
wire [4:0] ID_rd_addr;
wire [4:0] ID_rs_addr;
wire [4:0] ID_rt_addr;
wire [4:0] ID_shamt;
wire [5:0] ID_funct;
wire [31:0] ID_immd;
wire ID_RegDst;
wire [1:0]ID_ALUOp;
wire ID_ALUSrc;
wire ID_branch;
wire ID_RegWrite;
wire ID_MemtoReg;
wire [15:0]ID_PC;
wire [31:0]ID_instn;

wire [15:0]EXE_PC;
wire [5:0]EXE_opcode;
wire [4:0]EXE_rs_addr;
wire [4:0]EXE_rt_addr;
wire [4:0]EXE_rd_addr;
wire [4:0]EXE_shamt;
wire [5:0]EXE_funct;
wire [31:0]EXE_immd;
wire EXE_RegWrite;
wire EXE_MemtoReg;
wire [31:0]EXE_read_data1;
wire [31:0]EXE_read_data2;
wire EXE_RegDst;
wire EXE_branch;
wire [1:0]EXE_ALUOp;
wire EXE_ALUSrc;
wire MEM_MemtoReg;
wire EXE_alu_overflow;
wire [31:0]write_data;
wire [4:0]EXE_write_addr;
wire [31:0]EXE_alu_result;
wire [15:0]MEM_PC;

wire [31:0]MEM_alu_result;
wire MEM_zero;
wire MEM_branch;
wire [15:0]Branch_in;
wire EXE_zero;
wire PCSrc;
wire PC_run;

wire [1:0] state,next_state;
wire beq_enable;

assign write_data = EXE_MemtoReg ? dsram_out : EXE_alu_result;		//select write back data from ALU or Data Memory
assign PCSrc = EXE_zero & EXE_branch;

//reset signal for all module (also reset when bootup), except PC
wire rstn_system = rst_n & PC_run;

IF_stage IF_stage(
	// input
	.clk(clk),
	.rst_n(rst_n),
    .boot_up(boot_up),
    .boot_addr(boot_addr),
    .boot_datai(boot_datai),
    .boot_web(boot_web),
	.Branch_in(Branch_in),
	.PCSrc(PCSrc),
    .PC_run(PC_run),
	.instn(instn),	
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
	.MEM_RegWrite(WB_RegWrite),
	.write_addr(EXE_write_addr),
	.write_data(write_data),
	.instn(ID_instn),
	///////////////////////output//////////////////////
	.read_data1(ID_read_data1),
	.read_data2(ID_read_data2),
	.dsram_out(dsram_out),
	//instruction type
	.opcode(ID_opcode),
	.rd_addr(ID_rd_addr),
	.rs_addr(ID_rs_addr),
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
	//.MemRead(ID_read),
	//.MemWrite(ID_write),
	//Write-back stage control lines
	.RegWrite(ID_RegWrite),
	.MemtoReg(ID_MemtoReg),
	//beq
	.PCSrc(PCSrc),
	.state(state),
	.next_state(next_state),
	.beq_enable(beq_enable),
    .peri_web(peri_web),
    .peri_addr(peri_addr),
    .peri_datao(peri_datao)
	.MemtoReg_o()
);



ID_EXE ID_EXE(
	//input
	.clk(clk),
	.rst_n(rstn_system),
	.ID_PC(ID_PC),
	.ID_opcode(ID_opcode),
	.ID_rs_addr(ID_rs_addr),
	.ID_rt_addr(ID_rt_addr),
	.ID_rd_addr(ID_rd_addr),
	.ID_shamt(ID_shamt),
	.ID_funct(ID_funct),
	.ID_immd(ID_immd),
	//.ID_read_data1(ID_read_data1),
	//.ID_read_data2(ID_read_data2),
    //.ID_read(ID_read),
    //.ID_write(ID_write),
	.ID_branch(ID_branch),
	.ID_RegDst(ID_RegDst),
	.ID_ALUOp(ID_ALUOp),
	.ID_ALUSrc(ID_ALUSrc),
	.ID_RegWrite(ID_RegWrite),
    .ID_MemtoReg(ID_MemtoReg),
	.MemtoReg_i()
	//output
	.EXE_PC(EXE_PC),
	.EXE_opcode(EXE_opcode),
	.EXE_rs_addr(EXE_rs_addr),
	.EXE_rt_addr(EXE_rt_addr),
	.EXE_rd_addr(EXE_rd_addr),
	.EXE_shamt(EXE_shamt),
	.EXE_funct(EXE_funct),
	.EXE_immd(EXE_immd),
	//.EXE_read(),
	//.EXE_write(),
	//.EXE_read_data1(EXE_read_data1),
	//.EXE_read_data2(EXE_read_data2),
	.EXE_RegDst(EXE_RegDst),
	.EXE_branch(EXE_branch),
	.EXE_ALUOp(EXE_ALUOp),
	.EXE_ALUSrc(EXE_ALUSrc),
	.EXE_RegWrite(EXE_RegWrite),
	.EXE_MemtoReg(EXE_MemtoReg),
	//beq
	.state(state),
	.next_state(next_state)
	.MemtoReg_o()
);

EXE_stage EXE_stage(
	//input
	.PC(EXE_PC),
	//.en_exe(),
	.RegDst(EXE_RegDst),
	.read_data1(ID_read_data1),
	.read_data2(ID_read_data2),
	.opcode(EXE_opcode),
	.rd_addr(EXE_rd_addr),
	//.rs_addr(EXE_rs_addr),
	.rt_addr(EXE_rt_addr),
	.shamt(EXE_shamt),
	.funct(EXE_funct),
	.immd(EXE_immd),
	.ALUOp(EXE_ALUOp),
    .ALUSrc(EXE_ALUSrc),
	//output
	.write_addr(EXE_write_addr),
	.alu_result(EXE_alu_result),
	.alu_overflow(EXE_alu_overflow),
	.zero(EXE_zero),
	.PC_out(PC_out),
	.reg_write_enable(EXE_reg_write_enable) // low active???
	
);

EX_MEM EX_MEM(
	// input
	.PC_i(PC_out),
	.RegWrite_i(),
	.alu_result(EXE_alu_result),
	.wirte_enable(wirte_enable),	// low activa for sram
  	.write_addr(EXE_write_addr),	// register addr
	.MemRead_i(),	// low activa
  	.zero_i(EXE_zero),
	.reg_write_enable_i(EXE_reg_write_enable) // low active???
	.MemtoReg_i()
	// output
	.RegWrite_o(),
	.alu_result(EX_MEM_pc_counter),
	.MemRead_o(),	// low activa
	.PC_o(Branch_in),
  	.write_addr(EXE_write_addr), // register addr
  	.zero_o(EX_MEM_zero),
	.reg_write_enable_o(EX_MEM_reg_write_enable) // low active???
	.MemtoReg_o()
);


MEM_stage MEM_stage(
	// input
	.RegWrite_i(),
	.write_addr_i(MEM_write_addr), // register addr
	.write_data(MEM_write_data),
	.MemRead(),	// low activa
	.alu_result_i(MEM_alu_result_i),
  	.zero_o(EX_MEM_zero)
  	.reg_write_enable_i(EX_MEM_reg_write_enable),
	.MemtoReg_i()
	// output
	.RegWrite_i(),
	.mem_read_data(mem_read_data),
	.alu_result_o(MEM_alu_result_o),
	.write_addr_o(MEM_write_addr_o), // register addr
  	.reg_write_enable_o(MEM_reg_write_enable)
	.MemtoReg_o()
);

MEM_WB_stage MEM_WB_stage(
	// input
	.RegWrite_i(),
	.alu_result_i(MEM_WB_alu_result),
	.read_data_i(mem_read_data),
	.wirte_enable_i(MEM_WB_MEM_wirte_enable_i),	// low activa
	.write_addr_i(MEM_write_addr_o), // register addr
	.reg_write_enable_i(MEM_reg_write_enable),
	.MemtoReg_i()
	// output
	.RegWrite_o(),
	.alu_result_o(MEM_WB_alu_result_o),
	.read_data_o(MEM_WB_read_data),
	.MEM_wirte_enable_i(MEM_WB_MEM_wirte_enable_i),	// low activa
	.write_addr_o(MEM_WB_write_addr_o),
	.reg_write_enable_i(MEM_WB_reg_write_enable),
	.MemtoReg_o()

);

WB_stage WB_stage(
	// input
	.alu_result(WB_alu_result),
	.read_data(WB_read_data),
	.MemtoReg()
	.write_addr_i(MEM_WB_write_addr_o),
	.reg_write_enable_i
	// output
	.WB_write_back_data(WB_write_back_data),
	.write_addr_o(WB_write_addr_o)
);

endmodule
