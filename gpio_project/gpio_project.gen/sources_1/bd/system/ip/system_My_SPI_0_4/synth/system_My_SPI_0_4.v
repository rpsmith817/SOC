// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:My_SPI:1.0
// IP Revision: 22

(* X_CORE_INFO = "My_SPI,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "system_My_SPI_0_4,My_SPI,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_My_SPI_0_4 (
  datain,
  dataout,
  status,
  clr_overflow,
  rd_req,
  wr_req,
  empty,
  full,
  overflow,
  baud_clk,
  axi_interface_spi_aclk,
  axi_interface_spi_aresetn,
  axi_interface_spi_awaddr,
  axi_interface_spi_awprot,
  axi_interface_spi_awvalid,
  axi_interface_spi_awready,
  axi_interface_spi_wdata,
  axi_interface_spi_wstrb,
  axi_interface_spi_wvalid,
  axi_interface_spi_wready,
  axi_interface_spi_bresp,
  axi_interface_spi_bvalid,
  axi_interface_spi_bready,
  axi_interface_spi_araddr,
  axi_interface_spi_arprot,
  axi_interface_spi_arvalid,
  axi_interface_spi_arready,
  axi_interface_spi_rdata,
  axi_interface_spi_rresp,
  axi_interface_spi_rvalid,
  axi_interface_spi_rready
);

input wire [31 : 0] datain;
output wire [31 : 0] dataout;
output wire [31 : 0] status;
input wire clr_overflow;
input wire rd_req;
input wire wr_req;
output wire empty;
output wire full;
output wire overflow;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 baud_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME baud_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_My_SPI_0_4_baud_clk, INSERT_VIP 0" *)
output wire baud_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_Interface_SPI_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI_CLK, ASSOCIATED_BUSIF AXI_Interface_SPI, ASSOCIATED_RESET axi_interface_spi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire axi_interface_spi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_Interface_SPI_RST RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire axi_interface_spi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processi\
ng_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [7 : 0] axi_interface_spi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWPROT" *)
input wire [2 : 0] axi_interface_spi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWVALID" *)
input wire axi_interface_spi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWREADY" *)
output wire axi_interface_spi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WDATA" *)
input wire [31 : 0] axi_interface_spi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WSTRB" *)
input wire [3 : 0] axi_interface_spi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WVALID" *)
input wire axi_interface_spi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WREADY" *)
output wire axi_interface_spi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BRESP" *)
output wire [1 : 0] axi_interface_spi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BVALID" *)
output wire axi_interface_spi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BREADY" *)
input wire axi_interface_spi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARADDR" *)
input wire [7 : 0] axi_interface_spi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARPROT" *)
input wire [2 : 0] axi_interface_spi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARVALID" *)
input wire axi_interface_spi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARREADY" *)
output wire axi_interface_spi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RDATA" *)
output wire [31 : 0] axi_interface_spi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RRESP" *)
output wire [1 : 0] axi_interface_spi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RVALID" *)
output wire axi_interface_spi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RREADY" *)
input wire axi_interface_spi_rready;

  My_SPI #(
    .C_AXI_Interface_SPI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_AXI_Interface_SPI_ADDR_WIDTH(8)  // Width of S_AXI address bus
  ) inst (
    .datain(datain),
    .dataout(dataout),
    .status(status),
    .clr_overflow(clr_overflow),
    .rd_req(rd_req),
    .wr_req(wr_req),
    .empty(empty),
    .full(full),
    .overflow(overflow),
    .baud_clk(baud_clk),
    .axi_interface_spi_aclk(axi_interface_spi_aclk),
    .axi_interface_spi_aresetn(axi_interface_spi_aresetn),
    .axi_interface_spi_awaddr(axi_interface_spi_awaddr),
    .axi_interface_spi_awprot(axi_interface_spi_awprot),
    .axi_interface_spi_awvalid(axi_interface_spi_awvalid),
    .axi_interface_spi_awready(axi_interface_spi_awready),
    .axi_interface_spi_wdata(axi_interface_spi_wdata),
    .axi_interface_spi_wstrb(axi_interface_spi_wstrb),
    .axi_interface_spi_wvalid(axi_interface_spi_wvalid),
    .axi_interface_spi_wready(axi_interface_spi_wready),
    .axi_interface_spi_bresp(axi_interface_spi_bresp),
    .axi_interface_spi_bvalid(axi_interface_spi_bvalid),
    .axi_interface_spi_bready(axi_interface_spi_bready),
    .axi_interface_spi_araddr(axi_interface_spi_araddr),
    .axi_interface_spi_arprot(axi_interface_spi_arprot),
    .axi_interface_spi_arvalid(axi_interface_spi_arvalid),
    .axi_interface_spi_arready(axi_interface_spi_arready),
    .axi_interface_spi_rdata(axi_interface_spi_rdata),
    .axi_interface_spi_rresp(axi_interface_spi_rresp),
    .axi_interface_spi_rvalid(axi_interface_spi_rvalid),
    .axi_interface_spi_rready(axi_interface_spi_rready)
  );
endmodule
