################################################################################
#
# Created by icc2 split_constraints on Wed May 17 12:54:42 2023
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


# Virtual clock prefixes:
#   virtual_:  Instance 'I_SDRAM_TOP' (top mode 'test')

set old_sup ""
redirect -variable old_sup {print_suppressed_messages}
suppress_message UIC-021


#
# Boundary constraints for instance 'I_SDRAM_TOP' (top mode 'test')
#

# Clocks
create_clock -name {PCI_CLK} -period 7.50000 -waveform {0.00000 3.75000} 
create_clock -name {v_PCI_CLK} -period 7.50000 -waveform {0.00000 3.75000} 
create_clock -name {SYS_2x_CLK} -period 2.40000 -waveform {0.00000 1.20000} 
create_clock -add -name {SYS_CLK} -period 4.80000  \
	-waveform {0.00000 2.40000} [get_ports {n1195}]
create_clock -add -name {SDRAM_CLK} -period 4.10000  \
	-waveform {0.00000 2.05000} [get_ports {n871}]
create_clock -name {v_SDRAM_CLK} -period 4.10000 -waveform {0.00000 2.05000} 
create_clock -name {SD_DDR_CLK} -period 4.10000 -waveform {0.00000 2.05000} 
create_clock -name {SD_DDR_CLKn} -period 4.10000 -waveform {2.05000 4.10000} 
create_clock -add -name {ate_clk/n871} -period 30.00000  \
	-waveform {0.00000 15.00000} [get_ports {n871}]
group_path -priority -1 -name {ate_clk} -to [get_clock {ate_clk/n871}]
create_clock -add -name {ate_clk/n1195} -period 30.00000  \
	-waveform {0.00000 15.00000} [get_ports {n1195}]
group_path -priority -1 -name {ate_clk} -to [get_clock {ate_clk/n1195}]
create_clock -name {ate_clk} -period 30.00000 -waveform {0.00000 15.00000} 

# Virtual clocks

# Virtual clock virtual_SDRAM_CLK.top_r based on original clock SDRAM_CLK 
create_clock -name {virtual_SDRAM_CLK.top_r} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {SDRAM_CLK} -to [get_clock  \
	{virtual_SDRAM_CLK.top_r}]
# Virtual clock virtual_SDRAM_CLK.top_f based on original clock SDRAM_CLK 
create_clock -name {virtual_SDRAM_CLK.top_f} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {SDRAM_CLK} -to [get_clock  \
	{virtual_SDRAM_CLK.top_f}]
# Virtual clock virtual_ate_clk.top_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.top_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.top_r}]
# Virtual clock virtual_ate_clk.top_f based on original clock ate_clk 
create_clock -name {virtual_ate_clk.top_f} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.top_f}]
# Virtual clock virtual_ate_clk.4_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.4_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.4_r}]
# Virtual clock virtual_SYS_2x_CLK.4_r based on original clock SYS_2x_CLK 
create_clock -name {virtual_SYS_2x_CLK.4_r} -period 2.40000  \
	-waveform {0.00000 1.20000} 
group_path -priority -1 -name {SYS_2x_CLK} -to [get_clock  \
	{virtual_SYS_2x_CLK.4_r}]
# Virtual clock virtual_v_SDRAM_CLK_r based on original clock v_SDRAM_CLK 
create_clock -name {virtual_v_SDRAM_CLK_r} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {v_SDRAM_CLK} -to [get_clock  \
	{virtual_v_SDRAM_CLK_r}]
# Virtual clock virtual_v_SDRAM_CLK_f based on original clock v_SDRAM_CLK 
create_clock -name {virtual_v_SDRAM_CLK_f} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {v_SDRAM_CLK} -to [get_clock  \
	{virtual_v_SDRAM_CLK_f}]
# Virtual clock virtual_ate_clk_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock {virtual_ate_clk_r}]
# Virtual clock virtual_ate_clk.2_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.2_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.2_r}]
# Virtual clock virtual_SYS_CLK.2_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.2_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.2_r}]
# Virtual clock virtual__no_clock_ based on original clock <no original clock>
create_clock -name {virtual__no_clock_} -period 1000.00000
set_max_delay 1000.00000 -from {virtual__no_clock_}
set_max_delay 1000.00000 -to {virtual__no_clock_}
# Virtual clock virtual_SYS_CLK.8_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.8_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.8_r}]
# Virtual clock virtual_SYS_CLK.8_f based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.8_f} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.8_f}]
# Virtual clock virtual_ate_clk.3_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.3_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.3_r}]
# Virtual clock virtual_SYS_CLK.3_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.3_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.3_r}]
# Virtual clock virtual_ate_clk.7_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.7_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.7_r}]
# Virtual clock virtual_SYS_CLK.7_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r}]
# Virtual clock virtual_ate_clk.5_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.5_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.5_r}]
# Virtual clock virtual_ate_clk.5_r.2 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.5_r.2} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.5_r.2}]
# Virtual clock virtual_ate_clk.5_r.3 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.5_r.3} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.5_r.3}]
# Virtual clock virtual_ate_clk.7_r.2 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.7_r.2} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.7_r.2}]
# Virtual clock virtual_ate_clk.7_r.3 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.7_r.3} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.7_r.3}]
# Virtual clock virtual_ate_clk.6_r based on original clock ate_clk 
create_clock -name {virtual_ate_clk.6_r} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.6_r}]
# Virtual clock virtual_SYS_CLK.7_r.2 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r.2} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r.2}]
# Virtual clock virtual_SYS_CLK.7_r.3 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r.3} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r.3}]
# Virtual clock virtual_ate_clk.7_r.4 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.7_r.4} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.7_r.4}]
# Virtual clock virtual_SYS_CLK.7_r.4 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r.4} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r.4}]
# Virtual clock virtual_SYS_CLK.5_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r}]
# Virtual clock virtual_SYS_CLK.5_r.2 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r.2} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r.2}]
# Virtual clock virtual_SYS_CLK.5_r.3 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r.3} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r.3}]
# Virtual clock virtual_SYS_CLK.6_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.6_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.6_r}]
# Virtual clock virtual_ate_clk.5_r.4 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.5_r.4} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.5_r.4}]
# Virtual clock virtual_SYS_CLK.5_r.4 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r.4} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r.4}]
# Virtual clock virtual_ate_clk.1_r.2 based on original clock ate_clk 
create_clock -name {virtual_ate_clk.1_r.2} -period 30.00000  \
	-waveform {0.00000 15.00000} 
group_path -priority -1 -name {ate_clk} -to [get_clock  \
	{virtual_ate_clk.1_r.2}]
# Virtual clock virtual_SYS_CLK.1_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.1_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.1_r}]
# Virtual clock virtual_SD_DDR_CLK_r based on original clock SD_DDR_CLK 
create_clock -name {virtual_SD_DDR_CLK_r} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {SD_DDR_CLK} -to [get_clock  \
	{virtual_SD_DDR_CLK_r}]
# Virtual clock virtual_SD_DDR_CLK_f based on original clock SD_DDR_CLK 
create_clock -name {virtual_SD_DDR_CLK_f} -period 4.10000  \
	-waveform {0.00000 2.05000} 
group_path -priority -1 -name {SD_DDR_CLK} -to [get_clock  \
	{virtual_SD_DDR_CLK_f}]

# Exceptions outside of the budget area

# Exceptions that straddle the budget boundary

# Exceptions inside of the budget area
# /home/ramadugu/common/Documents/fresh'/final_prj-team_10-master/constraints/ORCA_TOP.sdc, line 111
set_false_path -from [get_clocks {SDRAM_CLK}] -to [get_clocks { \
	virtual_SD_DDR_CLK_r virtual_SD_DDR_CLK_f}]
# /home/ramadugu/common/Documents/fresh'/final_prj-team_10-master/constraints/ORCA_TOP.sdc, line 111
set_false_path -from [get_clocks {virtual_SDRAM_CLK.top_r  \
	virtual_SDRAM_CLK.top_f}] -to [get_clocks {virtual_SD_DDR_CLK_r  \
	virtual_SD_DDR_CLK_f}]

# Boundary constants
set_case_analysis 1 [get_ports {scan_enable}]
set_case_analysis 1 [get_ports {n1786}]
set_case_analysis 1 [get_ports {test_mode}]
set_case_analysis 1 [get_ports {n1787}]
set_case_analysis 1 [get_ports {sys_rst_n}]
if {[string first UIC-021 $old_sup] == -1} {unsuppress_message UIC-021}


# Other constraints
# /home/ramadugu/common/Documents/fresh'/final_prj-team_10-master/constraints/ORCA_TOP_test_worst.sdc, \
#   line 829
set_clock_groups -name func_async -asynchronous -group [get_clocks {SYS_2x_CLK \
    SYS_CLK}] -group [get_clocks {PCI_CLK v_PCI_CLK}] -group [get_clocks \
    {SDRAM_CLK v_SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn}]
# /home/ramadugu/common/Documents/fresh'/final_prj-team_10-master/constraints/ORCA_TOP_test_worst.sdc, \
#   line 830
set_clock_groups -name my_occ_clock_groups -asynchronous -group [get_clocks \
    {ate_clk/n871 ate_clk/n1195}] -group [get_clocks {SYS_2x_CLK SYS_CLK \
    SDRAM_CLK v_SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn PCI_CLK v_PCI_CLK}]
# MD5_SIGNATURE: 58F73F34DFE6D599DECB754F65AAAAFC 