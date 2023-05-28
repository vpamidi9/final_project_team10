################################################################################
#
# Created by icc2 split_constraints on Wed May 17 12:55:04 2023
#
################################################################################

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# -origin user
set_clock_latency 0.05 [get_clocks {v_PCI_CLK}]
# Set latency for io paths.
set_clock_uncertainty -setup 0.1 [get_clocks {PCI_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {PCI_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {v_PCI_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {v_PCI_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {SYS_2x_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {SYS_2x_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {SYS_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {SYS_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {SDRAM_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {SDRAM_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {v_SDRAM_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {v_SDRAM_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {SD_DDR_CLK}]
set_clock_uncertainty -hold 0 [get_clocks {SD_DDR_CLK}]
set_clock_uncertainty -setup 0.1 [get_clocks {SD_DDR_CLKn}]
set_clock_uncertainty -hold 0 [get_clocks {SD_DDR_CLKn}]
set_clock_transition 0.1 [get_clocks {PCI_CLK}]
set_clock_transition 0.1 [get_clocks {SYS_2x_CLK}]
set_clock_transition 0.1 [get_clocks {SYS_CLK}]
set_clock_transition 0.1 [get_clocks {SDRAM_CLK}]
set_driving_cell -lib_cell INVX8_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sdram_clk}]
set_driving_cell -lib_cell INVX8_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sys_2x_clk}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {shutdown}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_mode}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[5]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[4]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[3]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[2]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[1]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {test_si[0]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {scan_enable}]
set_driving_cell -lib_cell INVX8_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {ate_clk}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {occ_bypass}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {occ_reset}]
set_driving_cell -lib_cell INVX8_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pclk}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {prst_n}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pidsel}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pgnt_n}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[31]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[30]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[29]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[28]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[27]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[26]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[25]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[24]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[23]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[22]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[21]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[20]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[19]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[18]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[17]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[16]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[15]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[14]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[13]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[12]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[11]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[10]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[9]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[8]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[7]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[6]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[5]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[4]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[3]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[2]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[1]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pad_in[0]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {ppar_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pc_be_in[3]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pc_be_in[2]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pc_be_in[1]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pc_be_in[0]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pframe_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {ptrdy_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pirdy_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pdevsel_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pstop_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pperr_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pserr_n_in}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {pm66en}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[31]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[30]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[29]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[28]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[27]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[26]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[25]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[24]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[23]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[22]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[21]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[20]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[19]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[18]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[17]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[16]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[15]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[14]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[13]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[12]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[11]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[10]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[9]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[8]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[7]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[6]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[5]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[4]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[3]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[2]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[1]}]
set_driving_cell -lib_cell INVX2_HVT -library saed32hvt_ff0p95vn40c [get_ports \
    {sd_DQ_in[0]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pidsel}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pidsel}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pgnt_n}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pgnt_n}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[31]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[31]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[30]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[30]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[29]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[29]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[28]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[28]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[27]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[27]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[26]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[26]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[25]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[25]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[24]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[24]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[23]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[23]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[22]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[22]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[21]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[21]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[20]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[20]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[19]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[19]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[18]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[18]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[17]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[17]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[16]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[16]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[15]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[15]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[14]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[14]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[13]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[13]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[12]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[12]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[11]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[11]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[10]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[10]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[9]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[9]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[8]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[8]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[7]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[7]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[6]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[6]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[5]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[5]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[4]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[4]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[3]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[3]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[2]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[2]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[1]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[1]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pad_in[0]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pad_in[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[31]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[31]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[30]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[30]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[29]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[29]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[28]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[28]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[27]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[27]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[26]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[26]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[25]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[25]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[24]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[24]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[23]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[23]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[22]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[22]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[21]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[21]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[20]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[20]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[19]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[19]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[18]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[18]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[17]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[17]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[16]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[16]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[15]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[15]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[14]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[14]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[13]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[13]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[12]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[12]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[11]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[11]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[10]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pad_out[10]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[9]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[9]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[8]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[8]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[7]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[7]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[6]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[6]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[5]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[5]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[4]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[4]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[3]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[3]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[2]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[2]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[1]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[1]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pad_out[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_out[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports {pad_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pad_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {ppar_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {ppar_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {ppar_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {ppar_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports {ppar_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {ppar_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pc_be_in[3]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pc_be_in[3]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pc_be_in[2]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pc_be_in[2]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pc_be_in[1]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pc_be_in[1]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pc_be_in[0]}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pc_be_in[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pc_be_out[3]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pc_be_out[3]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pc_be_out[2]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pc_be_out[2]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pc_be_out[1]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pc_be_out[1]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pc_be_out[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pc_be_out[0]}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pc_be_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pc_be_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pframe_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pframe_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pframe_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pframe_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pframe_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pframe_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {ptrdy_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {ptrdy_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {ptrdy_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {ptrdy_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {ptrdy_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {ptrdy_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pirdy_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pirdy_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pirdy_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pirdy_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pirdy_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pirdy_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports \
    {pdevsel_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports \
    {pdevsel_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pdevsel_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pdevsel_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pdevsel_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pdevsel_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pstop_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pstop_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pstop_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pstop_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pstop_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pstop_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pperr_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pperr_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pperr_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pperr_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pperr_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pperr_n_en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pserr_n_in}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pserr_n_in}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pserr_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports \
    {pserr_n_out}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports \
    {pserr_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pserr_n_en}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports {preq_n}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {preq_n}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -min -0.3 [get_ports {pack_n}]
set_output_delay -clock [get_clocks {v_PCI_CLK}] -max 2 [get_ports {pack_n}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -min 1 [get_ports {pm66en}]
set_input_delay -clock [get_clocks {v_PCI_CLK}] -max 3 [get_ports {pm66en}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_A[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_A[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports {sd_LD}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports {sd_LD}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports {sd_RW}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports {sd_RW}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_BWS[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_BWS[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_BWS[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_BWS[0]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[31]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[31]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[31]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[31]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[30]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[30]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[30]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[30]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[29]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[29]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[29]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[29]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[28]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[28]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[28]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[28]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[27]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[27]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[27]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[27]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[26]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[26]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[26]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[26]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[25]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[25]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[25]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[25]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[24]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[24]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[24]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[24]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[23]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[23]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[23]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[23]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[22]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[22]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[22]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[22]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[21]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[21]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[21]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[21]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[20]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[20]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[20]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[20]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[19]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[19]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[19]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[19]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[18]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[18]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[18]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[18]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[17]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[17]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[17]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[17]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[16]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[16]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[16]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[16]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[15]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[15]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[15]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[15]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[14]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[14]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[14]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[14]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[13]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[13]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[13]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[13]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[12]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[12]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[12]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[12]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[11]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[11]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[11]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[11]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[10]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[10]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[10]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[10]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[9]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[9]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[9]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[9]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[8]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[8]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[8]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[8]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[7]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[7]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[7]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[7]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[6]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[6]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[6]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[6]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[5]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[5]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[5]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[5]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[4]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[4]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[4]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[4]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[3]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[3]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[3]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[3]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[2]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[2]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[2]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[2]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[1]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[1]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[1]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[1]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -min 0.1 [get_ports \
    {sd_DQ_in[0]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -max 0.5 [get_ports \
    {sd_DQ_in[0]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -min -add_delay \
    0.1 [get_ports {sd_DQ_in[0]}]
set_input_delay -clock [get_clocks {v_SDRAM_CLK}] -clock_fall -max -add_delay \
    0.5 [get_ports {sd_DQ_in[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[31]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[31]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[30]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[30]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[29]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[29]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[28]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[28]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[27]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[27]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[26]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[26]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[25]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[25]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[24]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[24]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[23]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[23]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[22]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[22]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[21]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[21]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[20]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[20]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[19]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[19]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[18]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[18]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[17]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[17]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[16]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[16]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[15]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[15]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[14]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[14]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[13]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[13]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[12]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[12]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[11]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[11]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[10]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[10]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min 0.05 \
    [get_ports {sd_DQ_out[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max 0.65 \
    [get_ports {sd_DQ_out[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[31]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[31]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[30]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[30]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[29]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[29]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[28]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[28]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[27]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[27]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[26]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[26]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[25]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[25]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[24]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[24]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[23]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[23]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[22]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[22]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[21]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[21]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[20]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[20]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[19]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[19]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[18]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[18]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[17]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[17]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[16]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[16]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[15]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[15]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[14]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[14]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[13]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[13]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[12]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[12]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[11]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[11]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[10]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[10]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[9]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[8]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[7]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[6]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[5]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[4]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[3]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[2]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[1]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -min 0.05 [get_ports \
    {sd_DQ_en[0]}]
set_output_delay -clock [get_clocks {SD_DDR_CLK}] -max 0.65 [get_ports \
    {sd_DQ_en[0]}]

# MD5_SIGNATURE: 4278A32F7615F93D6B097480D336E2CB 
