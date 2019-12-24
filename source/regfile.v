module regfile(
	clk,
	rst_n,
	read_addr1,
	read_data1,
	read_addr2,
	read_data2,
	write_addr,
	write_data,
	//read,
	write,
	//sw
	sw_data,

	write_data_v0,
	write_data_v1,
	write_data_v2,
	write_data_v3,
	write_data_v4,
	write_data_v5,
	write_data_v6,
	write_data_v7,


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
	VRegWrite,
	vlen,

);

parameter dw = 32;			//data width
parameter aw = 5;			//regfile address width

//
//I/O
//
//
// Clock and reset
//
input				clk;
input				rst_n;
input VRegWrite;
//
// Port Read 1
//
input		[aw-1:0]		read_addr1;
output	reg [dw-1:0]		read_data1;
//input 						read;
//
// Port Read 2
//
input		[aw-1:0]		read_addr2;
output	reg [dw-1:0]		read_data2;



input [31:0] write_data_v0;
input [31:0] write_data_v1;
input [31:0] write_data_v2;
input [31:0] write_data_v3;
input [31:0] write_data_v4;
input [31:0] write_data_v5;
input [31:0] write_data_v6;
input [31:0] write_data_v7;


output reg [31:0] read_data_v1_0;
output reg [31:0] read_data_v1_1;
output reg [31:0] read_data_v1_2;
output reg [31:0] read_data_v1_3;
output reg [31:0] read_data_v1_4;
output reg [31:0] read_data_v1_5;
output reg [31:0] read_data_v1_6;
output reg [31:0] read_data_v1_7;
output reg [31:0] read_data_v2_0;
output reg [31:0] read_data_v2_1;
output reg [31:0] read_data_v2_2;
output reg [31:0] read_data_v2_3;
output reg [31:0] read_data_v2_4;
output reg [31:0] read_data_v2_5;
output reg [31:0] read_data_v2_6;
output reg [31:0] read_data_v2_7;

// Port Write
input 					write;
input	[aw-1:0]		write_addr;
input	[dw-1:0]		write_data;
//Port Data Memory
output [dw-1:0] sw_data;
output [31:0] vlen;

reg [dw-1:0]gpr[31:0];	//declare 32 32-bit general purpose register (gpr)
//test
wire [31:0] r1;
wire [31:0] r2;
wire [31:0] r3;
wire [31:0] r4;
wire [31:0] r5;
wire [31:0] r6;

assign r1 = gpr[1];
assign r2 = gpr[2];
assign r3 = gpr[3];
assign r4 = gpr[4];
assign r5 = gpr[5];
assign r6 = gpr[6];
assign vlen = gpr[7];

wire [31:0] v0_0 = gpr[8]; 	// v0[0]
wire [31:0] v0_1 = gpr[9];		// v0[1] 
wire [31:0] v0_2 = gpr[10];	// v0[2]
wire [31:0] v0_3 = gpr[11];	// v0[3]
wire [31:0] v0_4 = gpr[12];	// v0[4]
wire [31:0] v0_5 = gpr[13];	// v0[5]
wire [31:0] v0_6 = gpr[14];	// v0[6]
wire [31:0] v0_7 = gpr[15];	// v0[7]
wire [31:0] v1_0 = gpr[16];	// v1[0]
wire [31:0] v1_1 = gpr[17];	// v1[1]
wire [31:0] v1_2 = gpr[18];	// v1[2]
wire [31:0] v1_3 = gpr[19];	// v1[3]
wire [31:0] v1_4 = gpr[20];	// v1[4]
wire [31:0] v1_5 = gpr[21];	// v1[5]
wire [31:0] v1_6 = gpr[22];	// v1[6]
wire [31:0] v1_7 = gpr[23];	// v2[7]
wire [31:0] v2_0 = gpr[24];	// v2[0]
wire [31:0] v2_1 = gpr[25];	// v2[1]
wire [31:0] v2_2 = gpr[26];	// v2[2]
wire [31:0] v2_3 = gpr[27];	// v2[3]
wire [31:0] v2_4 = gpr[28];	// v2[4]
wire [31:0] v2_5 = gpr[29];	// v2[5]
wire [31:0] v2_6 = gpr[30];	// v2[6]
wire [31:0] v2_7 = gpr[31];	// v2[7]
//test

//SW USE
assign sw_data = gpr[read_addr2];
//
always@(posedge clk) begin
	if(~rst_n) begin
		gpr[0] <= 32'b0;
		gpr[1] <= 32'b0;
		gpr[2] <= 32'b0;
		gpr[3] <= 32'b0;
		gpr[4] <= 32'b0;
		gpr[5] <= 32'b0;
		gpr[6] <= 32'b0;
		gpr[7] <= 32'b0;
		gpr[8] <= 32'b0;
		gpr[9] <= 32'b0;
		gpr[10] <= 32'b0;
		gpr[11] <= 32'b0;
		gpr[12] <= 32'b0;
		gpr[13] <= 32'b0;
		gpr[14] <= 32'b0;
		gpr[15] <= 32'b0;
		gpr[16] <= 32'b0;
		gpr[17] <= 32'b0;
		gpr[18] <= 32'b0;
		gpr[19] <= 32'b0;
		gpr[20] <= 32'b0;
		gpr[21] <= 32'b0;
		gpr[22] <= 32'b0;
		gpr[23] <= 32'b0;
		gpr[24] <= 32'b0;
		gpr[25] <= 32'b0;
		gpr[26] <= 32'b0;
		gpr[27] <= 32'b0;
		gpr[28] <= 32'b0;
		gpr[29] <= 32'b0;
		gpr[30] <= 32'b0;
		gpr[31] <= 32'b0;
		read_data1<= 0;
		read_data2<= 0;
	end
	// else if(read) begin
	// 	read_data1 <= gpr[read_addr1];
	// 	read_data2 <= gpr[read_addr2];
	// end
	else if(write) begin
		gpr[write_addr] <= write_data;
		read_data1 <= gpr[read_addr1];
		read_data2 <= gpr[read_addr2];
	
	end
	else if (VRegWrite) begin
		case(write_addr)
		0: begin
			gpr[8] <= write_data_v0;
			gpr[9] <= write_data_v1;
			gpr[10] <= write_data_v2;
			gpr[11] <= write_data_v3;
			gpr[12] <= write_data_v4;
			gpr[13] <= write_data_v5;
			gpr[14] <= write_data_v6;
			gpr[15] <= write_data_v7;
		end
		1: begin
			gpr[16] <= write_data_v0;
			gpr[17] <= write_data_v1;
			gpr[18] <= write_data_v2;
			gpr[19] <= write_data_v3;
			gpr[20] <= write_data_v4;
			gpr[21] <= write_data_v5;
			gpr[22] <= write_data_v6;
			gpr[23] <= write_data_v7;			
		end
		2: begin
			gpr[24] <= write_data_v0;
			gpr[25] <= write_data_v1;
			gpr[26] <= write_data_v2;
			gpr[27] <= write_data_v3;
			gpr[28] <= write_data_v4;
			gpr[29] <= write_data_v5;
			gpr[30] <= write_data_v6;
			gpr[31] <= write_data_v7;
		end
		endcase
	end
	else begin
		read_data1 <= gpr[read_addr1];
		read_data2 <= gpr[read_addr2];
	end
end


always @(posedge clk) begin
	
		case(read_addr1)
		0: begin
			read_data_v1_0 <= v0_0;
			read_data_v1_1 <= v0_1;
			read_data_v1_2 <= v0_2;
			read_data_v1_3 <= v0_3;
			read_data_v1_4 <= v0_4;
			read_data_v1_5 <= v0_5;
			read_data_v1_6 <= v0_6;
			read_data_v1_7 <= v0_7;
		end
		1: begin
			read_data_v1_0 <= v1_0;
			read_data_v1_1 <= v1_1;
			read_data_v1_2 <= v1_2;
			read_data_v1_3 <= v1_3;
			read_data_v1_4 <= v1_4;
			read_data_v1_5 <= v1_5;
			read_data_v1_6 <= v1_6;
			read_data_v1_7 <= v1_7;
		end
		2: begin
			read_data_v1_0 <= v2_0;
			read_data_v1_1 <= v2_1;
			read_data_v1_2 <= v2_2;
			read_data_v1_3 <= v2_3;
			read_data_v1_4 <= v2_4;
			read_data_v1_5 <= v2_5;
			read_data_v1_6 <= v2_6;
			read_data_v1_7 <= v2_7;
		end
		endcase
end


always @(posedge clk) begin
	
		case(read_addr2)
		0: begin
			read_data_v2_0 <= v0_0;
			read_data_v2_1 <= v0_1;
			read_data_v2_2 <= v0_2;
			read_data_v2_3 <= v0_3;
			read_data_v2_4 <= v0_4;
			read_data_v2_5 <= v0_5;
			read_data_v2_6 <= v0_6;
			read_data_v2_7 <= v0_7;
		end
		1: begin
			read_data_v2_0 <= v1_0;
			read_data_v2_1 <= v1_1;
			read_data_v2_2 <= v1_2;
			read_data_v2_3 <= v1_3;
			read_data_v2_4 <= v1_4;
			read_data_v2_5 <= v1_5;
			read_data_v2_6 <= v1_6;
			read_data_v2_7 <= v1_7;
		end
		2: begin
			read_data_v2_0 <= v2_0;
			read_data_v2_1 <= v2_1;
			read_data_v2_2 <= v2_2;
			read_data_v2_3 <= v2_3;
			read_data_v2_4 <= v2_4;
			read_data_v2_5 <= v2_5;
			read_data_v2_6 <= v2_6;
			read_data_v2_7 <= v2_7;
		end
		endcase
	
end
endmodule

