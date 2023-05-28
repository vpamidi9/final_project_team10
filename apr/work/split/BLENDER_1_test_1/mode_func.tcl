################################################################################
#
# Created by icc2 split_constraints on Wed May 17 12:54:45 2023
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
#   virtual_:  Instance 'I_BLENDER_1' (top mode 'func')

set old_sup ""
redirect -variable old_sup {print_suppressed_messages}
suppress_message UIC-021


#
# Boundary constraints for instance 'I_BLENDER_1' (top mode 'func')
#

# Clocks
create_clock -name {PCI_CLK} -period 7.50000 -waveform {0.00000 3.75000} 
create_clock -name {v_PCI_CLK} -period 7.50000 -waveform {0.00000 3.75000} 
create_clock -name {SYS_2x_CLK} -period 2.40000 -waveform {0.00000 1.20000} 
create_clock -add -name {SYS_CLK} -period 4.80000  \
	-waveform {0.00000 2.40000} [get_ports {clk}]
create_clock -name {SDRAM_CLK} -period 4.10000 -waveform {0.00000 2.05000} 
create_clock -name {v_SDRAM_CLK} -period 4.10000 -waveform {0.00000 2.05000} 
create_clock -name {SD_DDR_CLK} -period 4.10000 -waveform {0.00000 2.05000} 
create_clock -name {SD_DDR_CLKn} -period 4.10000 -waveform {2.05000 4.10000} 

# Virtual clocks

# Virtual clock virtual_SYS_CLK.8_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.8_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.8_r}]
# Virtual clock virtual__no_clock_ based on original clock <no original clock>
create_clock -name {virtual__no_clock_} -period 1000.00000
set_max_delay 1000.00000 -from {virtual__no_clock_}
set_max_delay 1000.00000 -to {virtual__no_clock_}
# Virtual clock virtual_SYS_CLK.8_f based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.8_f} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.8_f}]
# Virtual clock virtual_SYS_CLK.7_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r}]
# Virtual clock virtual_SYS_CLK.1_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.1_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.1_r}]
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
# Virtual clock virtual_SYS_CLK.5_r.4 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r.4} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r.4}]
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
# Virtual clock virtual_SYS_CLK.7_r.4 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.7_r.4} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.7_r.4}]
# Virtual clock virtual_SYS_CLK.6_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.6_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.6_r}]
# Virtual clock virtual_SYS_CLK.5_r.5 based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.5_r.5} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.5_r.5}]
# Virtual clock virtual_SYS_CLK.2_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.2_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.2_r}]
# Virtual clock virtual_SYS_CLK.3_r based on original clock SYS_CLK 
create_clock -name {virtual_SYS_CLK.3_r} -period 4.80000  \
	-waveform {0.00000 2.40000} 
group_path -priority -1 -name {SYS_CLK} -to [get_clock  \
	{virtual_SYS_CLK.3_r}]

# Exceptions outside of the budget area

# Exceptions that straddle the budget boundary

# Exceptions inside of the budget area

# Boundary constants
set_case_analysis 0 [get_ports {clk_enable}]
set_case_analysis 0 [get_ports {operation_3_}]
set_case_analysis 0 [get_ports {operation_2__BAR}]
set_case_analysis 0 [get_ports {operation_1__BAR}]
set_case_analysis 0 [get_ports {IN2}]
set_case_analysis 0 [get_ports {IN4}]
set_case_analysis 0 [get_ports {IN5}]
set_case_analysis 0 [get_ports {test_se}]
set_case_analysis 0 [get_ports {IN8}]
set_case_analysis 0 [get_ports {IN10}]
set_case_analysis 0 [get_ports {IN11}]
set_case_analysis 0 [get_ports {IN12}]
set_case_analysis 0 [get_ports {IN13}]
set_case_analysis 0 [get_ports {IN15}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_99}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_100}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_101}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_102}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_103}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_104}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_105}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_106}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_107}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_108}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_109}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_110}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_111}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_112}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_113}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_114}]
set_case_analysis 0 [get_ports {test_se_hfs_netlink_115}]
set_case_analysis 0 [get_ports {IN16}]
set_case_analysis 0 [get_ports {IN21}]
set_case_analysis 0 [get_ports {IN22}]
set_case_analysis 0 [get_ports {IN24}]
set_case_analysis 0 [get_ports {IN25}]
set_case_analysis 0 [get_ports {IN26}]
set_case_analysis 0 [get_ports {IN30}]
set_case_analysis 0 [get_ports {IN32}]
set_case_analysis 0 [get_ports {IN33}]
set_case_analysis 0 [get_ports {IN34}]
set_case_analysis 0 [get_ports {IN35}]
set_case_analysis 0 [get_ports {IN36}]
set_case_analysis 0 [get_ports {IN37}]
set_case_analysis 0 [get_ports {IN38}]
set_case_analysis 0 [get_ports {IN41}]
set_case_analysis 0 [get_ports {IN42}]
set_case_analysis 0 [get_ports {IN43}]
set_case_analysis 0 [get_ports {IN44}]
set_case_analysis 0 [get_ports {IN46}]
set_case_analysis 0 [get_ports {IN49}]
set_case_analysis 0 [get_ports {IN51}]
set_case_analysis 0 [get_ports {IN52}]
set_case_analysis 0 [get_ports {IN53}]
set_case_analysis 0 [get_ports {test_si39}]
set_case_analysis 0 [get_ports {test_si38}]
set_case_analysis 0 [get_ports {test_si37}]
set_case_analysis 0 [get_ports {test_si36}]
set_case_analysis 0 [get_ports {test_si35}]
set_case_analysis 0 [get_ports {test_si34}]
set_case_analysis 0 [get_ports {test_si33}]
set_case_analysis 0 [get_ports {test_si32}]
set_case_analysis 0 [get_ports {test_si31}]
set_case_analysis 0 [get_ports {test_si30}]
set_case_analysis 0 [get_ports {test_si29}]
set_case_analysis 0 [get_ports {test_si28}]
set_case_analysis 0 [get_ports {test_si27}]
set_case_analysis 0 [get_ports {scan_enable}]
set_case_analysis 0 [get_ports {IN63}]
set_case_analysis 0 [get_ports {IN64}]
set_case_analysis 0 [get_ports {IN65}]
set_case_analysis 0 [get_ports {IN66}]
set_case_analysis 0 [get_ports {IN67}]
set_case_analysis 0 [get_ports {IN68}]
set_case_analysis 0 [get_ports {IN69}]
set_case_analysis 0 [get_ports {IN70}]
set_case_analysis 0 [get_ports {IN71}]
set_case_analysis 0 [get_ports {IN72}]
set_case_analysis 0 [get_ports {IN73}]
set_case_analysis 0 [get_ports {IN74}]
set_case_analysis 0 [get_ports {IN75}]
set_case_analysis 0 [get_ports {IN76}]
set_case_analysis 0 [get_ports {IN77}]
set_case_analysis 0 [get_ports {IN78}]
set_case_analysis 0 [get_ports {IN79}]
set_case_analysis 0 [get_ports {IN80}]
set_case_analysis 0 [get_ports {IN81}]
set_case_analysis 0 [get_ports {IN82}]
set_case_analysis 0 [get_ports {IN83}]
set_case_analysis 0 [get_ports {IN84}]
set_case_analysis 0 [get_ports {IN85}]
set_case_analysis 0 [get_ports {IN86}]
if {[string first UIC-021 $old_sup] == -1} {unsuppress_message UIC-021}


# Other constraints
# /home/ramadugu/common/Documents/fresh'/final_prj-team_10-master/constraints/ORCA_TOP_func_worst.sdc, \
#   line 795
set_clock_groups -name func_async -asynchronous -group [get_clocks {SYS_2x_CLK \
    SYS_CLK}] -group [get_clocks {PCI_CLK v_PCI_CLK}] -group [get_clocks \
    {SDRAM_CLK v_SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn}]
# MD5_SIGNATURE: 150326A333D1B8480620B0E531AD3702 
