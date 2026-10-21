// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Oct 14 21:35:22 2026
// Host        : rps-ThinkPad-T16-Gen-4 running 64-bit Ubuntu 24.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_My_SPI_0_3_stub.v
// Design      : system_My_SPI_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_My_SPI_0_3,My_SPI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "My_SPI,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(datain, dataout, status, clr_overflow, rd_req, 
  wr_req, empty, full, overflow, axi_interface_spi_aclk, axi_interface_spi_aresetn, 
  axi_interface_spi_awaddr, axi_interface_spi_awprot, axi_interface_spi_awvalid, 
  axi_interface_spi_awready, axi_interface_spi_wdata, axi_interface_spi_wstrb, 
  axi_interface_spi_wvalid, axi_interface_spi_wready, axi_interface_spi_bresp, 
  axi_interface_spi_bvalid, axi_interface_spi_bready, axi_interface_spi_araddr, 
  axi_interface_spi_arprot, axi_interface_spi_arvalid, axi_interface_spi_arready, 
  axi_interface_spi_rdata, axi_interface_spi_rresp, axi_interface_spi_rvalid, 
  axi_interface_spi_rready)
/* synthesis syn_black_box black_box_pad_pin="datain[31:0],dataout[31:0],status[31:0],clr_overflow,rd_req,wr_req,empty,full,overflow,axi_interface_spi_aresetn,axi_interface_spi_awaddr[7:0],axi_interface_spi_awprot[2:0],axi_interface_spi_awvalid,axi_interface_spi_awready,axi_interface_spi_wdata[31:0],axi_interface_spi_wstrb[3:0],axi_interface_spi_wvalid,axi_interface_spi_wready,axi_interface_spi_bresp[1:0],axi_interface_spi_bvalid,axi_interface_spi_bready,axi_interface_spi_araddr[7:0],axi_interface_spi_arprot[2:0],axi_interface_spi_arvalid,axi_interface_spi_arready,axi_interface_spi_rdata[31:0],axi_interface_spi_rresp[1:0],axi_interface_spi_rvalid,axi_interface_spi_rready" */
/* synthesis syn_force_seq_prim="axi_interface_spi_aclk" */;
  input [31:0]datain;
  output [31:0]dataout;
  output [31:0]status;
  input clr_overflow;
  input rd_req;
  input wr_req;
  output empty;
  output full;
  output overflow;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_Interface_SPI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI_CLK, ASSOCIATED_BUSIF AXI_Interface_SPI, ASSOCIATED_RESET axi_interface_spi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_interface_spi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_Interface_SPI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_interface_spi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]axi_interface_spi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWPROT" *) input [2:0]axi_interface_spi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWVALID" *) input axi_interface_spi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWREADY" *) output axi_interface_spi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WDATA" *) input [31:0]axi_interface_spi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WSTRB" *) input [3:0]axi_interface_spi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WVALID" *) input axi_interface_spi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WREADY" *) output axi_interface_spi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BRESP" *) output [1:0]axi_interface_spi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BVALID" *) output axi_interface_spi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BREADY" *) input axi_interface_spi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARADDR" *) input [7:0]axi_interface_spi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARPROT" *) input [2:0]axi_interface_spi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARVALID" *) input axi_interface_spi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARREADY" *) output axi_interface_spi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RDATA" *) output [31:0]axi_interface_spi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RRESP" *) output [1:0]axi_interface_spi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RVALID" *) output axi_interface_spi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RREADY" *) input axi_interface_spi_rready;
endmodule
