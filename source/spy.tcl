# read file
read_file -type verilog top_pipe.v top.v CPU_define.v alu.v controller.v PC.v regfile.v IF_stage.v IF_ID.v ID_stage.v ID_EXE.v EXE_stage.v EX_MEM.v MEM_WB_stage.v WB_stage.v
# goal setup (lint_rtl)
current_goal lint/lint_rtl -alltop

# run goal
run_goal

# create a report file and write report
capture CPU.rpt {write_report moresimple}

# setup another goal
current_goal lint/lint_turbo_rtl -alltop

# run goal
run_goal

# append the report message to the same file created above
capture -append CPU.rpt {write_report moresimple}


current_goal lint/lint_functional_rtl -alltop
run_goal
capture -append CPU.rpt {write_report moresimple}

current_goal lint/lint_abstract -alltop
run_goal
capture -append CPU.rpt {write_report moresimple}
