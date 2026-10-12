vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_22
vlib modelsim_lib/msim/processing_system7_vip_v1_0_24
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36
vlib modelsim_lib/msim/xlconcat_v2_1_7

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 modelsim_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 modelsim_lib/msim/processing_system7_vip_v1_0_24
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36
vmap xlconcat_v2_1_7 modelsim_lib/msim/xlconcat_v2_1_7

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/7752/hdl/gpio_slave_lite_v1_0_AXI.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/7752/hdl/gpio.v" \
"../../../bd/system/ip/system_gpio_0_1/sim/system_gpio_0_1.v" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_m00e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.sv" \

vlog -work xlconcat_v2_1_7 -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../gpio_project.gen/sources_1/bd/system/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/9a25/hdl" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../gpio_project.gen/sources_1/bd/system/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

