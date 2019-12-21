module WB_stage(
    
    input [31:0] alu_result,
    input [31:0] read_data,
    input MemtoReg,
    output reg WB_write_back_data
);

always @* begin
    WB_write_back_data = MemtoReg ? read_data : alu_result;
end

endmodule