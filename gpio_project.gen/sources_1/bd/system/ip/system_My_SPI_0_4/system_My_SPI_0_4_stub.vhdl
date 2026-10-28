-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Oct 22 14:29:45 2026
-- Host        : rps-ThinkPad-T16-Gen-4 running 64-bit Ubuntu 24.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rps/fpga/gpio_project/gpio_project.gen/sources_1/bd/system/ip/system_My_SPI_0_4/system_My_SPI_0_4_stub.vhdl
-- Design      : system_My_SPI_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_My_SPI_0_4 is
  Port ( 
    datain : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clr_overflow : in STD_LOGIC;
    rd_req : in STD_LOGIC;
    wr_req : in STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    baud_clk : out STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    axi_interface_spi_aresetn : in STD_LOGIC;
    axi_interface_spi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_interface_spi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_awvalid : in STD_LOGIC;
    axi_interface_spi_awready : out STD_LOGIC;
    axi_interface_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_wready : out STD_LOGIC;
    axi_interface_spi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_interface_spi_bvalid : out STD_LOGIC;
    axi_interface_spi_bready : in STD_LOGIC;
    axi_interface_spi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_interface_spi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_arvalid : in STD_LOGIC;
    axi_interface_spi_arready : out STD_LOGIC;
    axi_interface_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_interface_spi_rvalid : out STD_LOGIC;
    axi_interface_spi_rready : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_My_SPI_0_4 : entity is "system_My_SPI_0_4,My_SPI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_My_SPI_0_4 : entity is "yes";
end system_My_SPI_0_4;

architecture stub of system_My_SPI_0_4 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "datain[31:0],dataout[31:0],status[31:0],clr_overflow,rd_req,wr_req,empty,full,overflow,baud_clk,axi_interface_spi_aclk,axi_interface_spi_aresetn,axi_interface_spi_awaddr[7:0],axi_interface_spi_awprot[2:0],axi_interface_spi_awvalid,axi_interface_spi_awready,axi_interface_spi_wdata[31:0],axi_interface_spi_wstrb[3:0],axi_interface_spi_wvalid,axi_interface_spi_wready,axi_interface_spi_bresp[1:0],axi_interface_spi_bvalid,axi_interface_spi_bready,axi_interface_spi_araddr[7:0],axi_interface_spi_arprot[2:0],axi_interface_spi_arvalid,axi_interface_spi_arready,axi_interface_spi_rdata[31:0],axi_interface_spi_rresp[1:0],axi_interface_spi_rvalid,axi_interface_spi_rready";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of baud_clk : signal is "xilinx.com:signal:clock:1.0 baud_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of baud_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of baud_clk : signal is "XIL_INTERFACENAME baud_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_My_SPI_0_4_baud_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_Interface_SPI_CLK CLK";
  attribute X_INTERFACE_MODE of axi_interface_spi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_aclk : signal is "XIL_INTERFACENAME AXI_Interface_SPI_CLK, ASSOCIATED_BUSIF AXI_Interface_SPI, ASSOCIATED_RESET axi_interface_spi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_Interface_SPI_RST RST";
  attribute X_INTERFACE_MODE of axi_interface_spi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_aresetn : signal is "XIL_INTERFACENAME AXI_Interface_SPI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWADDR";
  attribute X_INTERFACE_MODE of axi_interface_spi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_awaddr : signal is "XIL_INTERFACENAME AXI_Interface_SPI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWPROT";
  attribute X_INTERFACE_INFO of axi_interface_spi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WDATA";
  attribute X_INTERFACE_INFO of axi_interface_spi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WSTRB";
  attribute X_INTERFACE_INFO of axi_interface_spi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BRESP";
  attribute X_INTERFACE_INFO of axi_interface_spi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARADDR";
  attribute X_INTERFACE_INFO of axi_interface_spi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARPROT";
  attribute X_INTERFACE_INFO of axi_interface_spi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RDATA";
  attribute X_INTERFACE_INFO of axi_interface_spi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RRESP";
  attribute X_INTERFACE_INFO of axi_interface_spi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "My_SPI,Vivado 2025.2";
begin
end;
