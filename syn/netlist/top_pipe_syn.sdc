###################################################################

# Created by write_sdc on Thu Jan  9 19:06:24 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions ss0p95v125c -library saed32hvt_ss0p95v125c
set_wire_load_mode enclosed
set_max_fanout 0.82 [current_design]
set_max_area 0
set_wire_load_selection_group predcaps
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 3.8  -waveform {0 1.9}
set_input_delay -clock clk  1  [get_ports rst_n]
set_input_delay -clock clk  1  [get_ports boot_up]
set_input_delay -clock clk  1  [get_ports {mem_read_data[31]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[30]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[29]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[28]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[27]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[26]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[25]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[24]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[23]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[22]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[21]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[20]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[19]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[18]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[17]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[16]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[15]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[14]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[13]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[12]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[11]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[10]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[9]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[8]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[7]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[6]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[5]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[4]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[3]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[2]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[1]}]
set_input_delay -clock clk  1  [get_ports {mem_read_data[0]}]
set_input_delay -clock clk  1  [get_ports {instn[31]}]
set_input_delay -clock clk  1  [get_ports {instn[30]}]
set_input_delay -clock clk  1  [get_ports {instn[29]}]
set_input_delay -clock clk  1  [get_ports {instn[28]}]
set_input_delay -clock clk  1  [get_ports {instn[27]}]
set_input_delay -clock clk  1  [get_ports {instn[26]}]
set_input_delay -clock clk  1  [get_ports {instn[25]}]
set_input_delay -clock clk  1  [get_ports {instn[24]}]
set_input_delay -clock clk  1  [get_ports {instn[23]}]
set_input_delay -clock clk  1  [get_ports {instn[22]}]
set_input_delay -clock clk  1  [get_ports {instn[21]}]
set_input_delay -clock clk  1  [get_ports {instn[20]}]
set_input_delay -clock clk  1  [get_ports {instn[19]}]
set_input_delay -clock clk  1  [get_ports {instn[18]}]
set_input_delay -clock clk  1  [get_ports {instn[17]}]
set_input_delay -clock clk  1  [get_ports {instn[16]}]
set_input_delay -clock clk  1  [get_ports {instn[15]}]
set_input_delay -clock clk  1  [get_ports {instn[14]}]
set_input_delay -clock clk  1  [get_ports {instn[13]}]
set_input_delay -clock clk  1  [get_ports {instn[12]}]
set_input_delay -clock clk  1  [get_ports {instn[11]}]
set_input_delay -clock clk  1  [get_ports {instn[10]}]
set_input_delay -clock clk  1  [get_ports {instn[9]}]
set_input_delay -clock clk  1  [get_ports {instn[8]}]
set_input_delay -clock clk  1  [get_ports {instn[7]}]
set_input_delay -clock clk  1  [get_ports {instn[6]}]
set_input_delay -clock clk  1  [get_ports {instn[5]}]
set_input_delay -clock clk  1  [get_ports {instn[4]}]
set_input_delay -clock clk  1  [get_ports {instn[3]}]
set_input_delay -clock clk  1  [get_ports {instn[2]}]
set_input_delay -clock clk  1  [get_ports {instn[1]}]
set_input_delay -clock clk  1  [get_ports {instn[0]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[31]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[30]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[29]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[28]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[27]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[26]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[25]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[24]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[23]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[22]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[21]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[20]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[19]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[18]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[17]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[16]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[15]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[14]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[13]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[12]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[11]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[10]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[9]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[8]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[7]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[6]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[5]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[4]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[3]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[2]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[1]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_alu_result[0]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[31]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[30]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[29]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[28]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[27]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[26]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[25]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[24]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[23]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[22]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[21]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[20]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[19]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[18]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[17]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[16]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[15]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[14]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[13]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[12]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[11]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[10]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[9]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[8]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[7]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[6]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[5]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[4]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[3]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[2]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[1]}]
set_output_delay -clock clk  1.9  [get_ports {MEM_write_data[0]}]
set_output_delay -clock clk  1.9  [get_ports MEM_MemWrite]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[15]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[14]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[13]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[12]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[11]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[10]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[9]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[8]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[7]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[6]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[5]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[4]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[3]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[2]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[1]}]
set_output_delay -clock clk  1.9  [get_ports {IF_PC[0]}]
set_output_delay -clock clk  1.9  [get_ports PC_run]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_instn_LW_SW_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_instn_LW_SW_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/clk_gate_cnt_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/clk_gate_cnt_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_2_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_1_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_0_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_7_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_6_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_5_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_4_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v2_3_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_2_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_1_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_0_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_7_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_6_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_5_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_4_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data_v1_3_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data2_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data2_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_read_data1_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_read_data1_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_0_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_0_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_1_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_1_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_2_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_2_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_3_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_3_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_4_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_4_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_5_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_5_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_6_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_6_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_7_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_7_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_8_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_8_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_9_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_9_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_10_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_10_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_11_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_11_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_12_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_12_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_13_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_13_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_14_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_14_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_15_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_15_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_16_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_16_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_17_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_17_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_18_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_18_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_19_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_19_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_20_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_20_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_21_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_21_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_22_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_22_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_23_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_23_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_24_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_24_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_25_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_25_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_26_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_26_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_27_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_27_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_28_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_28_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_29_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_29_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_30_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_30_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__2/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__2/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__2/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__2/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__1/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__1/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__1/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__1/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31__0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31_/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/ID_stage/regfile/clk_gate_gpr_reg_31_/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31_/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/ID_stage/regfile/clk_gate_gpr_reg_31_/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/IF_ID/clk_gate_ID_PC_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/IF_ID/clk_gate_ID_PC_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/IF_ID/clk_gate_ID_PC_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/IF_ID/clk_gate_ID_PC_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/IF_ID/clk_gate_ID_PC_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/IF_ID/clk_gate_ID_PC_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/IF_ID/clk_gate_ID_PC_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/IF_ID/clk_gate_ID_PC_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/IF_stage/PC/clk_gate_PC_out_reg_0/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/IF_stage/PC/clk_gate_PC_out_reg_0/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/IF_stage/PC/clk_gate_PC_out_reg_0/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/IF_stage/PC/clk_gate_PC_out_reg_0/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
top0/IF_stage/PC/clk_gate_PC_out_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
top0/IF_stage/PC/clk_gate_PC_out_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
top0/IF_stage/PC/clk_gate_PC_out_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
top0/IF_stage/PC/clk_gate_PC_out_reg/main_gate]
