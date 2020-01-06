module ID_stage(
	////////////////////////input///////////////////
	clk,
	rst_n,
	WB_RegWrite,
	WB_VRegWrite,

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


	instn_new,

	///////////////////////output//////////////////////
	read_data1,
	read_data2,
	// dsram_out,			//dsram Read data
	//instruction type
	// opcode,
	rd_addr,
	// rs_addr,
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
	VRegWrite,
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
	read_data_v1_7,
	cnt
	// vlen

);

input	clk;
input	rst_n;
input	WB_RegWrite;
input	WB_VRegWrite;
input	[4:0]write_addr;
input	[31:0]write_data;
input   [31:0]instn_new;
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
// output  [5:0]opcode;
output  [4:0]rd_addr;
// output  [4:0]rs_addr;
output  [4:0]rt_addr;
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
// output   [31:0]dsram_out;
output	[1:0] next_state;
output	beq_enable;

output  peri_web;
output [15:0] peri_addr;
output [15:0] peri_datao;
assign peri_web = 0; // dont care
assign peri_addr = 0; // dont care
assign peri_datao = 0; // dont care

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
output [31:0] cnt;
// output [31:0] vlen;
wire    [5:0]opcode;
output VRegWrite;
wire    [4:0]rt_addr;
wire    [4:0]rs_addr;
wire    MemWrite;
//data memory
// wire [31:0] sw_data;
// wire [7:0] data_addr;
// vector mode
wire [31:0] vlen;
reg [31:0] instn_LW_SW;
reg [31:0] instn;
reg [31:0] cnt, cnt_n;
wire [31:0] cnt_offset;
reg VectorSWLW;

assign cnt_offset = cnt_n - 1;

assign rs_addr = instn[25:21];
assign rt_addr = instn[20:16];
assign rd_addr = instn[15:11];
assign shamt   = instn[10:6];
assign funct   = instn[5:0];

assign immd    = {{16{instn[15]}}, instn[15:0]};
// assign data_addr = instn[7:0];


always @(*) begin
	if (VectorSWLW == 1) begin
		instn = instn_LW_SW;
	end
	else begin
		instn = instn_new;
	end
end

// vector LW/SW counter
always @(*) begin
	if (opcode == `LW_V || opcode == `SW_V) cnt_n = vlen;
	else if (cnt > 0) cnt_n = cnt - 1;
	else cnt_n = cnt;
end
always @(posedge clk) begin
	if (~rst_n) begin
		cnt <= 0;
	end
	else begin
		cnt <= cnt_n;
	end
end

// old instn
always @(posedge clk) begin
	if (cnt_n > 0) begin
		instn_LW_SW <= {instn[31], 1'b0, instn[29:26], instn[25:21], instn[20:16], instn[15:11], cnt_offset[4:0], instn[5:0]};
	end
	else instn_LW_SW <= instn;
end

// Vector instn control SW/LW
always @(*) begin
	if (cnt == 0) VectorSWLW = 0;
	else VectorSWLW = 1;
end



regfile regfile(
	.clk(clk),
	.rst_n(rst_n),
	.read_data1(read_data1),
	.read_data2(read_data2),
	.read_addr1(rs_addr),
	.read_addr2(rt_addr),
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
	.cnt(cnt),
	//.read(),
	.write(WB_RegWrite),
	.VRegWrite(WB_VRegWrite),
	//data memory
	// .sw_data(sw_data),
	// vector length
	.vlen(vlen)
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
	.VRegWrite(VRegWrite),
	//beq
	.PCSrc(PCSrc),
	.state(state),
	.next_state(next_state),
	.beq_enable(beq_enable)
);


endmodule
