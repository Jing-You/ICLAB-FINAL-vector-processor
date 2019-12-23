module MEM_WB_stage(
    input clk,
    input rst_n,
    input RegWrite_i,
    input [31:0] alu_result_i,
    input [31:0] read_data_i,
    input [4:0] write_addr_i,
    input  MemtoReg_i,
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
    end
    else begin
        RegWrite_o <= RegWrite_i;
        alu_result_o <= alu_result_i;
        read_data_o <= read_data_i;
        write_addr_o <= write_addr_i;
        MemtoReg_o <= MemtoReg_i;
    end        
end

endmodule