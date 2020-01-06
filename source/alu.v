module alu(
	//en_exe,
	// cnt,
	read_data1,
	read_data2,
	// opcode,
	shamt,
	funct,
	immd,
	ALUOp,
	ALUSrc,
	alu_result,
	// alu_overflow,
	zero,
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
	alu_result_v0,
	alu_result_v1,
	alu_result_v2,
	alu_result_v3,
	alu_result_v4,
	alu_result_v5,
	alu_result_v6,
	alu_result_v7

);


parameter 	ADD_V = 6'b110000, 
			SUB_V = 6'b110001, 
			AND_V = 6'b110010, 
			OR_V  = 6'b110011,
			XOR_V = 6'b110100,
			MUL_V = 6'b110101;

//input en_exe;
// input [5:0]opcode;
// input [31:0] cnt;
input [4:0]shamt;
input [5:0]funct;
input signed[31:0] immd;
input signed[31:0] read_data1;
input signed[31:0] read_data2;
input [1:0]ALUOp;
input ALUSrc;


output wire signed [31:0] alu_result;
// output reg alu_overflow;			
output reg zero;						//for branch condition

reg signed [31:0] src1, src2;
reg signed [31:0] alu_result_tmp;


//lab9 variable which you can change the type if you need//
wire signed [31:0] sub_temp1, sub_temp2, abs_result;
//lab9 variable which you can change the type if you need//

//MUX controlled by ALUSrc


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
output reg [31:0] alu_result_v0;
output reg [31:0] alu_result_v1;
output reg [31:0] alu_result_v2;
output reg [31:0] alu_result_v3;
output reg [31:0] alu_result_v4;
output reg [31:0] alu_result_v5;
output reg [31:0] alu_result_v6;
output reg [31:0] alu_result_v7;

reg [31:0] src2_0;
reg [31:0] src2_1;
reg [31:0] src2_2;
reg [31:0] src2_3;
reg [31:0] src2_4;
reg [31:0] src2_5;
reg [31:0] src2_6;
reg [31:0] src2_7;

always@(*) begin
	
	if(ALUSrc==1'b1) begin
		src2 = immd;	//sign extension
	end
	else begin
		src2 = read_data2;			//Rt
	end
end


always@(*) begin
	src1  = read_data1;				//Rs
end

always@(*) begin
	if (ALUOp == 2'b10) begin
		src2_0 = read_data_v2_0;
		src2_1 = read_data_v2_1;
		src2_2 = read_data_v2_2;
		src2_3 = read_data_v2_3;
		src2_4 = read_data_v2_4;
		src2_5 = read_data_v2_5;
		src2_6 = read_data_v2_6;
		src2_7 = read_data_v2_7;
	end
	else begin
		src2_0 = src2;
		src2_1 = src2;
		src2_2 = src2;
		src2_3 = src2;
		src2_4 = src2;
		src2_5 = src2;
		src2_6 = src2;
		src2_7 = src2;		
	end
end

always@(*)begin 
case(ALUOp)	 
	2'b00: begin
		alu_result_tmp = src1 + src2;		//add	for Itype, LW, SW
		zero = 1'b0;
	end
	2'b01: begin		
		
		alu_result_tmp = src1 - src2;		//sub	for BEQ instruction
		if(read_data1 == read_data2) begin
			zero = 1'b1;
		end
		else begin
			zero = 1'b0;
		end
	end
	2'b10: begin						//Rtype
		if(funct==`NOP) begin
			alu_result_tmp = 32'd0;
			zero = 1'b0;
		end
		else if(funct==`ADD) begin
			alu_result_tmp = src1 + src2;
			zero = 1'b0;
		end
		else if(funct==`SUB) begin
			alu_result_tmp = src1 - src2;
			zero = 1'b0;
		end
		else if(funct==`MULT) begin
			alu_result_tmp = src1 * src2;
			zero = 1'b0;
		end
		else if(funct==`AND) begin
			alu_result_tmp = src1 & src2;         // change this to multiply(*) and compare.
			zero = 1'b0;
		end
		else if(funct==`OR) begin
			alu_result_tmp = src1 | src2;
			zero = 1'b0;
		end
		else if(funct==`XOR) begin
			alu_result_tmp = src1 ^ src2;
			zero = 1'b0;
		end
		else if(funct==`SLT) begin
			if(read_data1 < read_data2) begin
				alu_result_tmp = 32'd1;
				zero = 1'b0;
			end
			else begin
				alu_result_tmp = 32'd0;
				zero = 1'b0;
			end
		end
		else if(funct==`SLL) begin
			alu_result_tmp = src2 <<< shamt;
			zero = 1'b0;
		end
		else if(funct==`SRL) begin
			alu_result_tmp = src2 >>> shamt;
			zero = 1'b0;
		end
		else if(funct==`SW) begin
			alu_result_tmp = src1 + shamt;
			zero = 1'b0;
		end
		else if(funct==`LW) begin
			alu_result_tmp = src1 + shamt;
			zero = 1'b0;
		end
		else begin
			alu_result_tmp = 32'd0;
			zero = 1'b0;
		end
	end
	default: begin
		alu_result_tmp = 32'd0;
		zero = 1'b0;
	end
 
endcase                         
end                             

assign alu_result = (funct == `ABS)? abs_result : alu_result_tmp;


// always@(*) begin
	// if( (alu_result[31]==0 && src1[31]==1 && src2[31]==1 )||( alu_result[31]==1  && src1[31]==0 && src2[31]==0 ) )
		// alu_overflow = 1'b1;
	// else 
		// alu_overflow = 1'b0;
// end

assign sub_temp1 = (funct == `ABS)? (src1-src2) : 0;
assign abs_result = (sub_temp1[31]==1)? (~sub_temp1+1) : sub_temp1;

always @* begin
	case (funct)
		ADD_V : begin
			alu_result_v0 = read_data_v1_0 + src2_0;
			alu_result_v1 = read_data_v1_1 + src2_1;
			alu_result_v2 = read_data_v1_2 + src2_2;
			alu_result_v3 = read_data_v1_3 + src2_3;
			alu_result_v4 = read_data_v1_4 + src2_4;
			alu_result_v5 = read_data_v1_5 + src2_5;
			alu_result_v6 = read_data_v1_6 + src2_6;
			alu_result_v7 = read_data_v1_7 + src2_7;
		end
		SUB_V : begin
			alu_result_v0 = read_data_v1_0 - src2_0;
			alu_result_v1 = read_data_v1_1 - src2_1;
			alu_result_v2 = read_data_v1_2 - src2_2;
			alu_result_v3 = read_data_v1_3 - src2_3;
			alu_result_v4 = read_data_v1_4 - src2_4;
			alu_result_v5 = read_data_v1_5 - src2_5;
			alu_result_v6 = read_data_v1_6 - src2_6;
			alu_result_v7 = read_data_v1_7 - src2_7;
		end
		AND_V : begin
			alu_result_v0 = read_data_v1_0 & src2_0;
			alu_result_v1 = read_data_v1_1 & src2_1;
			alu_result_v2 = read_data_v1_2 & src2_2;
			alu_result_v3 = read_data_v1_3 & src2_3;
			alu_result_v4 = read_data_v1_4 & src2_4;
			alu_result_v5 = read_data_v1_5 & src2_5;
			alu_result_v6 = read_data_v1_6 & src2_6;
			alu_result_v7 = read_data_v1_7 & src2_7;
		end
		OR_V : begin
			alu_result_v0 = read_data_v1_0 | src2_0;
			alu_result_v1 = read_data_v1_1 | src2_1;
			alu_result_v2 = read_data_v1_2 | src2_2;
			alu_result_v3 = read_data_v1_3 | src2_3;
			alu_result_v4 = read_data_v1_4 | src2_4;
			alu_result_v5 = read_data_v1_5 | src2_5;
			alu_result_v6 = read_data_v1_6 | src2_6;
			alu_result_v7 = read_data_v1_7 | src2_7;
		end
		XOR_V : begin
			alu_result_v0 = read_data_v1_0 ^ src2_0;
			alu_result_v1 = read_data_v1_1 ^ src2_1;
			alu_result_v2 = read_data_v1_2 ^ src2_2;
			alu_result_v3 = read_data_v1_3 ^ src2_3;
			alu_result_v4 = read_data_v1_4 ^ src2_4;
			alu_result_v5 = read_data_v1_5 ^ src2_5;
			alu_result_v6 = read_data_v1_6 ^ src2_6;
			alu_result_v7 = read_data_v1_7 ^ src2_7;
		end
		MUL_V : begin
			alu_result_v0 = read_data_v1_0 * src2_0;
			alu_result_v1 = read_data_v1_1 * src2_1;
			alu_result_v2 = read_data_v1_2 * src2_2;
			alu_result_v3 = read_data_v1_3 * src2_3;
			alu_result_v4 = read_data_v1_4 * src2_4;
			alu_result_v5 = read_data_v1_5 * src2_5;
			alu_result_v6 = read_data_v1_6 * src2_6;
			alu_result_v7 = read_data_v1_7 * src2_7;
		end
		default : begin
			alu_result_v0 = 0;
			alu_result_v1 = 0;
			alu_result_v2 = 0;
			alu_result_v3 = 0;
			alu_result_v4 = 0;
			alu_result_v5 = 0;
			alu_result_v6 = 0;
			alu_result_v7 = 0;
		end
	endcase
end

endmodule                     
                              
                              
