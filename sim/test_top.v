`include "../source/CPU_define.v"
module test_top;

parameter PERIOD = 5;
parameter WORD = 255;
//input
reg clk;
reg rst_n;
reg [31:0] instruction [255:0];

//wire [15:0]PC_out;
wire EXE_alu_overflow;

reg boot_up;
reg [7:0] boot_addr;
reg [31:0] boot_datai;
reg boot_web;

// wire  peri_web;
// wire [15:0] peri_addr;
// wire [15:0] peri_datao;

// MEM_stage
wire [31:0] MEM_alu_result;
wire [31:0] MEM_write_data;
wire [31:0] mem_read_data;
wire  MEM_MemWrite;

// IF_icache
wire [15:0] IF_PC;
wire PC_run;
wire [31:0] instn;

top_pipe top_pipe(
.clk(clk),
.rst_n(rst_n),
.boot_up(boot_up),
// .boot_addr(boot_addr),
// .boot_datai(boot_datai),
// .boot_web(boot_web),

// .peri_web(peri_web),
// .peri_addr(peri_addr),
// .peri_datao(peri_datao),

// MEM_stage
.MEM_alu_result(MEM_alu_result),
.MEM_write_data(MEM_write_data),
.mem_read_data(mem_read_data),
.MEM_MemWrite(MEM_MemWrite),
// IF_icache
.IF_PC(IF_PC),
.PC_run(PC_run),
.instn(instn)
);

// MEM_stage
wire dcache_web = MEM_MemWrite ? 1'b0 : 1'b1;

dsram dcache(
.addr(MEM_alu_result[7:0]),
.clk(clk),
.en_wr(dcache_web),
.in(MEM_write_data),
.out(mem_read_data)
);

wire [7:0] ins_addr;
assign ins_addr = IF_PC[9:2];
wire icache_en_wr = PC_run ? 1'b1 : boot_web;
wire [7:0] icache_addr = PC_run ? ins_addr : boot_addr;

dsram icache(
	.clk(clk),
    .en_wr(icache_en_wr),
 	.addr(icache_addr),
	.in(boot_datai),
	.out(instn)
);


initial begin
`ifdef GATESIM
	// $fsdbDumpfile("gatesim.fsdb");
	// $fsdbDumpvars;
	$sdf_annotate("../syn/netlist/top_pipe_syn.sdf",top_pipe);
`else
	// $fsdbDumpfile("presim.fsdb");
	// $fsdbDumpvars;
`endif
end

parameter BOOT_CODE_SIZE = 45;

reg [31:0] mem [0:BOOT_CODE_SIZE-1];

integer i;
//read instuction from instruction.txt to Icache
initial begin
	$readmemb("instruction.txt",mem, 0 , BOOT_CODE_SIZE-1);
end

always #(PERIOD/2) clk = ~clk;

integer j;

initial begin
clk = 1;
rst_n = 1;
boot_up = 0;
boot_addr = 0;
boot_datai = 0;
boot_web = 1;
@(negedge clk);
#(PERIOD) rst_n = 0;
#(PERIOD) rst_n = 1; boot_up =1;
for (j=0 ; j<BOOT_CODE_SIZE;j=j+1)begin
#(PERIOD) boot_web = 1'b0;
          boot_addr = j[7:0];
          boot_datai = mem[j];
end

#(PERIOD) boot_up =0; boot_web = 1'b1; boot_addr = 0; boot_datai = 0;

end




//check result
integer r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
integer d2,d4,d6,d8;

initial begin
#(PERIOD);
@(negedge boot_up);
@(negedge clk);
@(negedge clk);

r1=0;
r2=0;
r3=0;
r4=0;
r5=0;
r6=0;
r7=0;
r8=0;
r9=0;
r10=0;
d2=0;
d4=0;
d6=0;
d8=0;
#(PERIOD) r1 = 15;
#(PERIOD) r3 = 20;
#(PERIOD) r4 = r3+r1;
#(PERIOD) r5 = r4+r1;
#(PERIOD) d2 = r5;
#(PERIOD) r6 = d2;
#(PERIOD) r7 = r6+10;
#(PERIOD) r8 = r6+20;
#(PERIOD) r9 = r7<<2;
#(PERIOD) r10= r8>>1;
#(PERIOD) d2 = r7;
#(PERIOD) d4 = r8;
#(PERIOD) d6 = r9;
#(PERIOD) d8 = r10;
#(PERIOD) r1 = d2;
#(PERIOD) r2 = d4;
#(PERIOD) r3 = d6;
#(PERIOD) r4 = d8;
#(PERIOD) r5 = r9 - r10;
#(PERIOD) r6 = r9 & r10; // change this to mul(*) for comparison
#(PERIOD) r7 = r9 | r10;
#(PERIOD) r8 = r9 | r10;
#(PERIOD) r5 = r8 - r10;
#(PERIOD) r7 = r8 - r10;
#(PERIOD*20);

show_register_value();

#(PERIOD) $finish;
end



integer f_register;
integer std_out = 1;
integer write_to;
task show_register_value;
begin
`ifdef GATESIM
f_register = $fopen("register_gate.txt");
write_to = f_register | std_out;
$fdisplay(write_to,"r1 = %d\n",top_pipe.top0.ID_stage.regfile.r1);
$fdisplay(write_to,"r2 = %d\n",top_pipe.top0.ID_stage.regfile.r2);
$fdisplay(write_to,"r3 = %d\n",top_pipe.top0.ID_stage.regfile.r3);
$fdisplay(write_to,"r4 = %d\n",top_pipe.top0.ID_stage.regfile.r4);
$fdisplay(write_to,"r5 = %d\n",top_pipe.top0.ID_stage.regfile.r5);
$fdisplay(write_to,"r6 = %d\n",top_pipe.top0.ID_stage.regfile.r6);
$fdisplay(write_to,"r7 = %d\n",top_pipe.top0.ID_stage.regfile.vlen);
$fdisplay(write_to,"r8 = %d\n",top_pipe.top0.ID_stage.regfile.v0_0);
$fdisplay(write_to,"r9 = %d\n",top_pipe.top0.ID_stage.regfile.v0_1);
$fdisplay(write_to,"r10 = %d\n",top_pipe.top0.ID_stage.regfile.v0_2);
$fdisplay(write_to,"r11 = %d\n",top_pipe.top0.ID_stage.regfile.v0_3);
$fdisplay(write_to,"r12 = %d\n",top_pipe.top0.ID_stage.regfile.v0_4);

$fdisplay(write_to,"d1 = %d\n",dcache.memory[1]);
$fdisplay(write_to,"d2 = %d\n",dcache.memory[2]);
$fdisplay(write_to,"d3 = %d\n",dcache.memory[3]);
$fdisplay(write_to,"d4 = %d\n",dcache.memory[4]);
$fdisplay(write_to,"d5 = %d\n",dcache.memory[5]);
$fdisplay(write_to,"d6 = %d\n",dcache.memory[6]);
$fdisplay(write_to,"d7 = %d\n",dcache.memory[7]);
$fdisplay(write_to,"d8 = %d\n",dcache.memory[8]);
$fdisplay(write_to,"d9 = %d\n",dcache.memory[9]);
$fdisplay(write_to,"d10 = %d\n",dcache.memory[10]);

`else
f_register = $fopen("register_sim.txt");
write_to = f_register | std_out;
$fdisplay(write_to,"r1 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[1]);
$fdisplay(write_to,"r2 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[2]);
$fdisplay(write_to,"r3 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[3]);
$fdisplay(write_to,"r4 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[4]);
$fdisplay(write_to,"r5 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[5]);
$fdisplay(write_to,"r6 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[6]);
$fdisplay(write_to,"r7 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[7]);
$fdisplay(write_to,"r8 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[8]);
$fdisplay(write_to,"r9 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[9]);
$fdisplay(write_to,"r10 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[10]);
$fdisplay(write_to,"r11 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[11]);
$fdisplay(write_to,"r12 = %d\n",top_pipe.top0.ID_stage.regfile.gpr[12]);

$fdisplay(write_to,"d1 = %d\n",dcache.memory[1]);
$fdisplay(write_to,"d2 = %d\n",dcache.memory[2]);
$fdisplay(write_to,"d3 = %d\n",dcache.memory[3]);
$fdisplay(write_to,"d4 = %d\n",dcache.memory[4]);
$fdisplay(write_to,"d5 = %d\n",dcache.memory[5]);
$fdisplay(write_to,"d6 = %d\n",dcache.memory[6]);
$fdisplay(write_to,"d7 = %d\n",dcache.memory[7]);
$fdisplay(write_to,"d8 = %d\n",dcache.memory[8]);
$fdisplay(write_to,"d9 = %d\n",dcache.memory[9]);
$fdisplay(write_to,"d10 = %d\n",dcache.memory[10]);
`endif

$fclose(f_register);
end
endtask









endmodule
