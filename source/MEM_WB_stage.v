module MEM_WB_stage(
    input clk,
    input rst_n,
    input RegWrite_i,
    input [31:0] alu_result_i,
    input [31:0] read_data_i,
    input [4:0] write_addr_i,
    input  MemtoReg_i,

    input [31:0] alu_result_v0_i,
    input [31:0] alu_result_v1_i,
    input [31:0] alu_result_v2_i,
    input [31:0] alu_result_v3_i,
    input [31:0] alu_result_v4_i,
    input [31:0] alu_result_v5_i,
    input [31:0] alu_result_v6_i,
    input [31:0] alu_result_v7_i,
    output reg [31:0] alu_result_v0_o,
    output reg [31:0] alu_result_v1_o,
    output reg [31:0] alu_result_v2_o,
    output reg [31:0] alu_result_v3_o,
    output reg [31:0] alu_result_v4_o,
    output reg [31:0] alu_result_v5_o,
    output reg [31:0] alu_result_v6_o,
    output reg [31:0] alu_result_v7_o,

    output reg RegWrite_o,
    output reg [31:0] alu_result_o,
    output reg [31:0] read_data_o,
    output reg [4:0] write_addr_o,
    output reg MemtoReg_o
);

always @(posedge clk) begin
    if (!rst_n) begin
        RegWrite_o <= 0;
        alu_result_o <= 0;
        read_data_o <= 0;
        write_addr_o <= 0;
        MemtoReg_o <= 0;
        alu_result_v0_o <= 0; 
        alu_result_v1_o <= 0;
        alu_result_v2_o <= 0;
        alu_result_v3_o <= 0;
        alu_result_v4_o <= 0;
        alu_result_v5_o <= 0;
        alu_result_v6_o <= 0;
        alu_result_v7_o <= 0;
    end
    else begin
        RegWrite_o <= RegWrite_i;
        alu_result_o <= alu_result_i;
        read_data_o <= read_data_i;
        write_addr_o <= write_addr_i;
        MemtoReg_o <= MemtoReg_i;
        alu_result_v0_o <= alu_result_v0_i; 
        alu_result_v1_o <= alu_result_v1_i;
        alu_result_v2_o <= alu_result_v2_i;
        alu_result_v3_o <= alu_result_v3_i;
        alu_result_v4_o <= alu_result_v4_i;
        alu_result_v5_o <= alu_result_v5_i;
        alu_result_v6_o <= alu_result_v6_i;
        alu_result_v7_o <= alu_result_v7_i;
    end        
end

endmodule