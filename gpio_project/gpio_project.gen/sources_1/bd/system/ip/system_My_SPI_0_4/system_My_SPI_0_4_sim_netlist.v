// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Nov  5 15:23:16 2026
// Host        : rps-ThinkPad-T16-Gen-4 running 64-bit Ubuntu 24.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rps/fpga/gpio_project/gpio_project.gen/sources_1/bd/system/ip/system_My_SPI_0_4/system_My_SPI_0_4_sim_netlist.v
// Design      : system_My_SPI_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_My_SPI_0_4,My_SPI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "My_SPI,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_My_SPI_0_4
   (datain,
    dataout,
    baud_clk,
    datum,
    cs,
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
    axi_interface_spi_rready);
  input [31:0]datain;
  output [31:0]dataout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 baud_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME baud_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_My_SPI_0_4_baud_clk, INSERT_VIP 0" *) output baud_clk;
  output datum;
  output [3:0]cs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_Interface_SPI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_Interface_SPI_CLK, ASSOCIATED_BUSIF AXI_Interface_SPI, ASSOCIATED_RESET axi_interface_spi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_interface_spi_aclk;
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

  wire \<const0> ;
  wire axi_interface_spi_aclk;
  wire [7:0]axi_interface_spi_araddr;
  wire axi_interface_spi_aresetn;
  wire axi_interface_spi_arready;
  wire axi_interface_spi_arvalid;
  wire [7:0]axi_interface_spi_awaddr;
  wire axi_interface_spi_awready;
  wire axi_interface_spi_awvalid;
  wire axi_interface_spi_bready;
  wire axi_interface_spi_bvalid;
  wire [31:0]axi_interface_spi_rdata;
  wire axi_interface_spi_rready;
  wire axi_interface_spi_rvalid;
  wire [31:0]axi_interface_spi_wdata;
  wire axi_interface_spi_wready;
  wire [3:0]axi_interface_spi_wstrb;
  wire axi_interface_spi_wvalid;
  wire baud_clk;
  wire [3:0]cs;
  wire [31:0]datain;
  wire datum;

  assign axi_interface_spi_bresp[1] = \<const0> ;
  assign axi_interface_spi_bresp[0] = \<const0> ;
  assign axi_interface_spi_rresp[1] = \<const0> ;
  assign axi_interface_spi_rresp[0] = \<const0> ;
  assign dataout[31] = \<const0> ;
  assign dataout[30] = \<const0> ;
  assign dataout[29] = \<const0> ;
  assign dataout[28] = \<const0> ;
  assign dataout[27] = \<const0> ;
  assign dataout[26] = \<const0> ;
  assign dataout[25] = \<const0> ;
  assign dataout[24] = \<const0> ;
  assign dataout[23] = \<const0> ;
  assign dataout[22] = \<const0> ;
  assign dataout[21] = \<const0> ;
  assign dataout[20] = \<const0> ;
  assign dataout[19] = \<const0> ;
  assign dataout[18] = \<const0> ;
  assign dataout[17] = \<const0> ;
  assign dataout[16] = \<const0> ;
  assign dataout[15] = \<const0> ;
  assign dataout[14] = \<const0> ;
  assign dataout[13] = \<const0> ;
  assign dataout[12] = \<const0> ;
  assign dataout[11] = \<const0> ;
  assign dataout[10] = \<const0> ;
  assign dataout[9] = \<const0> ;
  assign dataout[8] = \<const0> ;
  assign dataout[7] = \<const0> ;
  assign dataout[6] = \<const0> ;
  assign dataout[5] = \<const0> ;
  assign dataout[4] = \<const0> ;
  assign dataout[3] = \<const0> ;
  assign dataout[2] = \<const0> ;
  assign dataout[1] = \<const0> ;
  assign dataout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_My_SPI_0_4_My_SPI inst
       (.S_AXI_ARREADY(axi_interface_spi_arready),
        .S_AXI_AWREADY(axi_interface_spi_awready),
        .S_AXI_WREADY(axi_interface_spi_wready),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .axi_interface_spi_araddr(axi_interface_spi_araddr[4:2]),
        .axi_interface_spi_aresetn(axi_interface_spi_aresetn),
        .axi_interface_spi_arvalid(axi_interface_spi_arvalid),
        .axi_interface_spi_awaddr(axi_interface_spi_awaddr[4:2]),
        .axi_interface_spi_awvalid(axi_interface_spi_awvalid),
        .axi_interface_spi_bready(axi_interface_spi_bready),
        .axi_interface_spi_bvalid(axi_interface_spi_bvalid),
        .axi_interface_spi_rdata(axi_interface_spi_rdata),
        .axi_interface_spi_rready(axi_interface_spi_rready),
        .axi_interface_spi_rvalid(axi_interface_spi_rvalid),
        .axi_interface_spi_wdata(axi_interface_spi_wdata),
        .axi_interface_spi_wstrb(axi_interface_spi_wstrb),
        .axi_interface_spi_wvalid(axi_interface_spi_wvalid),
        .baud_clk(baud_clk),
        .cs(cs),
        .datain(datain),
        .datum(datum));
endmodule

(* ORIG_REF_NAME = "My_SPI" *) 
module system_My_SPI_0_4_My_SPI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_interface_spi_rvalid,
    cs,
    axi_interface_spi_rdata,
    baud_clk,
    datum,
    axi_interface_spi_bvalid,
    axi_interface_spi_aclk,
    axi_interface_spi_wvalid,
    axi_interface_spi_awvalid,
    axi_interface_spi_aresetn,
    axi_interface_spi_arvalid,
    axi_interface_spi_awaddr,
    axi_interface_spi_wdata,
    axi_interface_spi_araddr,
    datain,
    axi_interface_spi_wstrb,
    axi_interface_spi_bready,
    axi_interface_spi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output axi_interface_spi_rvalid;
  output [3:0]cs;
  output [31:0]axi_interface_spi_rdata;
  output baud_clk;
  output datum;
  output axi_interface_spi_bvalid;
  input axi_interface_spi_aclk;
  input axi_interface_spi_wvalid;
  input axi_interface_spi_awvalid;
  input axi_interface_spi_aresetn;
  input axi_interface_spi_arvalid;
  input [2:0]axi_interface_spi_awaddr;
  input [31:0]axi_interface_spi_wdata;
  input [2:0]axi_interface_spi_araddr;
  input [31:0]datain;
  input [3:0]axi_interface_spi_wstrb;
  input axi_interface_spi_bready;
  input axi_interface_spi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_interface_spi_aclk;
  wire [2:0]axi_interface_spi_araddr;
  wire axi_interface_spi_aresetn;
  wire axi_interface_spi_arvalid;
  wire [2:0]axi_interface_spi_awaddr;
  wire axi_interface_spi_awvalid;
  wire axi_interface_spi_bready;
  wire axi_interface_spi_bvalid;
  wire [31:0]axi_interface_spi_rdata;
  wire axi_interface_spi_rready;
  wire axi_interface_spi_rvalid;
  wire [31:0]axi_interface_spi_wdata;
  wire [3:0]axi_interface_spi_wstrb;
  wire axi_interface_spi_wvalid;
  wire baud_clk;
  wire [3:0]cs;
  wire [31:0]datain;
  wire datum;

  system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI My_SPI_slave_lite_v1_0_AXI_Interface_SPI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .axi_interface_spi_araddr(axi_interface_spi_araddr),
        .axi_interface_spi_aresetn(axi_interface_spi_aresetn),
        .axi_interface_spi_arvalid(axi_interface_spi_arvalid),
        .axi_interface_spi_awaddr(axi_interface_spi_awaddr),
        .axi_interface_spi_awvalid(axi_interface_spi_awvalid),
        .axi_interface_spi_bready(axi_interface_spi_bready),
        .axi_interface_spi_bvalid(axi_interface_spi_bvalid),
        .axi_interface_spi_rdata(axi_interface_spi_rdata),
        .axi_interface_spi_rready(axi_interface_spi_rready),
        .axi_interface_spi_rvalid(axi_interface_spi_rvalid),
        .axi_interface_spi_wdata(axi_interface_spi_wdata),
        .axi_interface_spi_wstrb(axi_interface_spi_wstrb),
        .axi_interface_spi_wvalid(axi_interface_spi_wvalid),
        .baud_clk(baud_clk),
        .cs(cs),
        .datain(datain),
        .datum(datum));
endmodule

(* ORIG_REF_NAME = "My_SPI_slave_lite_v1_0_AXI_Interface_SPI" *) 
module system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_interface_spi_rvalid,
    cs,
    axi_interface_spi_rdata,
    baud_clk,
    datum,
    axi_interface_spi_bvalid,
    axi_interface_spi_aclk,
    axi_interface_spi_wvalid,
    axi_interface_spi_awvalid,
    axi_interface_spi_aresetn,
    axi_interface_spi_arvalid,
    axi_interface_spi_awaddr,
    axi_interface_spi_wdata,
    axi_interface_spi_araddr,
    datain,
    axi_interface_spi_wstrb,
    axi_interface_spi_bready,
    axi_interface_spi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output axi_interface_spi_rvalid;
  output [3:0]cs;
  output [31:0]axi_interface_spi_rdata;
  output baud_clk;
  output datum;
  output axi_interface_spi_bvalid;
  input axi_interface_spi_aclk;
  input axi_interface_spi_wvalid;
  input axi_interface_spi_awvalid;
  input axi_interface_spi_aresetn;
  input axi_interface_spi_arvalid;
  input [2:0]axi_interface_spi_awaddr;
  input [31:0]axi_interface_spi_wdata;
  input [2:0]axi_interface_spi_araddr;
  input [31:0]datain;
  input [3:0]axi_interface_spi_wstrb;
  input axi_interface_spi_bready;
  input axi_interface_spi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire auto;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_interface_spi_aclk;
  wire [2:0]axi_interface_spi_araddr;
  wire axi_interface_spi_aresetn;
  wire axi_interface_spi_arvalid;
  wire [2:0]axi_interface_spi_awaddr;
  wire axi_interface_spi_awvalid;
  wire axi_interface_spi_bready;
  wire axi_interface_spi_bvalid;
  wire [31:0]axi_interface_spi_rdata;
  wire axi_interface_spi_rready;
  wire axi_interface_spi_rvalid;
  wire [31:0]axi_interface_spi_wdata;
  wire [3:0]axi_interface_spi_wstrb;
  wire axi_interface_spi_wvalid;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wr_sel;
  wire axi_wready0;
  wire baud_clk;
  wire baud_clk_next_reg_n_0;
  wire [31:0]brd;
  wire \brd[31]_i_2_n_0 ;
  wire brd_output;
  wire clk_go;
  wire clr_overflow_req;
  wire clr_overflow_req_i_1_n_0;
  wire clr_txoverflow_req_i_1_n_0;
  wire clr_txoverflow_req_i_2_n_0;
  wire clr_txoverflow_req_reg_n_0;
  wire [3:0]cs;
  wire [3:0]cs_manual;
  wire [23:0]ctrl;
  wire \ctrl[15]_i_1_n_0 ;
  wire \ctrl[23]_i_1_n_0 ;
  wire \ctrl[31]_i_1_n_0 ;
  wire \ctrl[7]_i_1_n_0 ;
  wire \ctrl_reg_n_0_[24] ;
  wire \ctrl_reg_n_0_[25] ;
  wire \ctrl_reg_n_0_[26] ;
  wire \ctrl_reg_n_0_[27] ;
  wire \ctrl_reg_n_0_[28] ;
  wire \ctrl_reg_n_0_[29] ;
  wire \ctrl_reg_n_0_[30] ;
  wire \ctrl_reg_n_0_[31] ;
  wire \data[15]_i_1_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[10] ;
  wire \data_reg_n_0_[11] ;
  wire \data_reg_n_0_[12] ;
  wire \data_reg_n_0_[13] ;
  wire \data_reg_n_0_[14] ;
  wire \data_reg_n_0_[15] ;
  wire \data_reg_n_0_[16] ;
  wire \data_reg_n_0_[17] ;
  wire \data_reg_n_0_[18] ;
  wire \data_reg_n_0_[19] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[20] ;
  wire \data_reg_n_0_[21] ;
  wire \data_reg_n_0_[22] ;
  wire \data_reg_n_0_[23] ;
  wire \data_reg_n_0_[24] ;
  wire \data_reg_n_0_[25] ;
  wire \data_reg_n_0_[26] ;
  wire \data_reg_n_0_[27] ;
  wire \data_reg_n_0_[28] ;
  wire \data_reg_n_0_[29] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[30] ;
  wire \data_reg_n_0_[31] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire \data_reg_n_0_[8] ;
  wire \data_reg_n_0_[9] ;
  wire [31:0]datain;
  wire [31:0]datain_betweener;
  wire [31:0]datain_final;
  wire datum;
  wire fifo_rd_req;
  wire [31:0]fifo_wr_data;
  wire fifo_wr_req;
  wire p_0_in;
  wire [2:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [4:2]raddr;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire \rd_det/last_in ;
  wire spi_fsm_inst_n_0;
  wire spi_fsm_inst_n_9;
  wire the_brd_instantiation_n_2;
  wire the_brd_instantiation_n_3;
  wire tx_fifo_n_10;
  wire tx_fifo_n_11;
  wire tx_fifo_n_12;
  wire tx_fifo_n_13;
  wire tx_fifo_n_14;
  wire tx_fifo_n_15;
  wire tx_fifo_n_16;
  wire tx_fifo_n_17;
  wire tx_fifo_n_18;
  wire tx_fifo_n_19;
  wire tx_fifo_n_2;
  wire tx_fifo_n_20;
  wire tx_fifo_n_21;
  wire tx_fifo_n_22;
  wire tx_fifo_n_23;
  wire tx_fifo_n_24;
  wire tx_fifo_n_25;
  wire tx_fifo_n_26;
  wire tx_fifo_n_27;
  wire tx_fifo_n_28;
  wire tx_fifo_n_29;
  wire tx_fifo_n_3;
  wire tx_fifo_n_30;
  wire tx_fifo_n_31;
  wire tx_fifo_n_32;
  wire tx_fifo_n_33;
  wire tx_fifo_n_34;
  wire tx_fifo_n_35;
  wire tx_fifo_n_36;
  wire tx_fifo_n_4;
  wire tx_fifo_n_5;
  wire tx_fifo_n_6;
  wire tx_fifo_n_7;
  wire tx_fifo_n_8;
  wire tx_fifo_n_9;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[4]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(axi_interface_spi_bready),
        .I1(axi_interface_spi_bvalid),
        .I2(axi_interface_spi_awvalid),
        .I3(axi_interface_spi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(spi_fsm_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_interface_spi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(spi_fsm_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(axi_interface_spi_wvalid),
        .I3(axi_interface_spi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(spi_fsm_inst_n_0));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(axi_interface_spi_bready),
        .I1(axi_interface_spi_awvalid),
        .I2(axi_interface_spi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .I5(axi_interface_spi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_interface_spi_bvalid),
        .R(spi_fsm_inst_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(axi_interface_spi_rvalid),
        .I2(axi_interface_spi_arvalid),
        .I3(raddr[4]),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_34),
        .Q(axi_interface_spi_rdata[0]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_24),
        .Q(axi_interface_spi_rdata[10]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_23),
        .Q(axi_interface_spi_rdata[11]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_22),
        .Q(axi_interface_spi_rdata[12]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_21),
        .Q(axi_interface_spi_rdata[13]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_20),
        .Q(axi_interface_spi_rdata[14]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_19),
        .Q(axi_interface_spi_rdata[15]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_18),
        .Q(axi_interface_spi_rdata[16]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_17),
        .Q(axi_interface_spi_rdata[17]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_16),
        .Q(axi_interface_spi_rdata[18]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_15),
        .Q(axi_interface_spi_rdata[19]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_33),
        .Q(axi_interface_spi_rdata[1]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_14),
        .Q(axi_interface_spi_rdata[20]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_13),
        .Q(axi_interface_spi_rdata[21]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_12),
        .Q(axi_interface_spi_rdata[22]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_11),
        .Q(axi_interface_spi_rdata[23]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_10),
        .Q(axi_interface_spi_rdata[24]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_9),
        .Q(axi_interface_spi_rdata[25]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_8),
        .Q(axi_interface_spi_rdata[26]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_7),
        .Q(axi_interface_spi_rdata[27]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_6),
        .Q(axi_interface_spi_rdata[28]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_5),
        .Q(axi_interface_spi_rdata[29]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_32),
        .Q(axi_interface_spi_rdata[2]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_4),
        .Q(axi_interface_spi_rdata[30]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_3),
        .Q(axi_interface_spi_rdata[31]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_31),
        .Q(axi_interface_spi_rdata[3]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_30),
        .Q(axi_interface_spi_rdata[4]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_29),
        .Q(axi_interface_spi_rdata[5]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_28),
        .Q(axi_interface_spi_rdata[6]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_27),
        .Q(axi_interface_spi_rdata[7]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_26),
        .Q(axi_interface_spi_rdata[8]),
        .R(spi_fsm_inst_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(tx_fifo_n_25),
        .Q(axi_interface_spi_rdata[9]),
        .R(spi_fsm_inst_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(axi_interface_spi_arvalid),
        .I2(axi_interface_spi_rready),
        .I3(axi_interface_spi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_interface_spi_rvalid),
        .R(spi_fsm_inst_n_0));
  FDRE axi_wr_sel_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(fifo_wr_req),
        .Q(axi_wr_sel),
        .R(spi_fsm_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(axi_interface_spi_wvalid),
        .I3(axi_interface_spi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(spi_fsm_inst_n_0));
  FDCE baud_clk_next_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(spi_fsm_inst_n_0),
        .D(the_brd_instantiation_n_3),
        .Q(baud_clk_next_reg_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \brd[15]_i_1 
       (.I0(\brd[31]_i_2_n_0 ),
        .I1(axi_interface_spi_wstrb[1]),
        .I2(p_0_in_0[1]),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \brd[23]_i_1 
       (.I0(\brd[31]_i_2_n_0 ),
        .I1(axi_interface_spi_wstrb[2]),
        .I2(p_0_in_0[1]),
        .O(p_1_in[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \brd[31]_i_1 
       (.I0(axi_interface_spi_wstrb[3]),
        .I1(p_0_in_0[1]),
        .I2(\brd[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \brd[31]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(axi_interface_spi_awvalid),
        .I2(axi_interface_spi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .I5(p_0_in_0[2]),
        .O(\brd[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \brd[7]_i_1 
       (.I0(\brd[31]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(axi_interface_spi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \brd_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[0]),
        .Q(brd[0]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[10]),
        .Q(brd[10]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[11]),
        .Q(brd[11]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[12]),
        .Q(brd[12]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[13]),
        .Q(brd[13]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[14]),
        .Q(brd[14]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[15]),
        .Q(brd[15]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[16]),
        .Q(brd[16]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[17]),
        .Q(brd[17]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[18]),
        .Q(brd[18]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[19]),
        .Q(brd[19]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[1]),
        .Q(brd[1]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[20]),
        .Q(brd[20]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[21]),
        .Q(brd[21]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[22]),
        .Q(brd[22]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[23]),
        .D(axi_interface_spi_wdata[23]),
        .Q(brd[23]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[24]),
        .Q(brd[24]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[25]),
        .Q(brd[25]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[26]),
        .Q(brd[26]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[27]),
        .Q(brd[27]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[28]),
        .Q(brd[28]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[29]),
        .Q(brd[29]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[2]),
        .Q(brd[2]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[30]),
        .Q(brd[30]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[31]),
        .D(axi_interface_spi_wdata[31]),
        .Q(brd[31]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[3]),
        .Q(brd[3]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[4]),
        .Q(brd[4]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[5]),
        .Q(brd[5]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[6]),
        .Q(brd[6]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[7]),
        .D(axi_interface_spi_wdata[7]),
        .Q(brd[7]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[8]),
        .Q(brd[8]),
        .R(spi_fsm_inst_n_0));
  FDRE \brd_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(p_1_in[15]),
        .D(axi_interface_spi_wdata[9]),
        .Q(brd[9]),
        .R(spi_fsm_inst_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    clr_overflow_req_i_1
       (.I0(p_0_in_0[1]),
        .I1(axi_interface_spi_wdata[0]),
        .I2(p_0_in_0[0]),
        .I3(axi_interface_spi_wstrb[0]),
        .I4(p_0_in_0[2]),
        .I5(clr_txoverflow_req_i_2_n_0),
        .O(clr_overflow_req_i_1_n_0));
  FDRE clr_overflow_req_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(clr_overflow_req_i_1_n_0),
        .Q(clr_overflow_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    clr_txoverflow_req_i_1
       (.I0(p_0_in_0[1]),
        .I1(axi_interface_spi_wdata[3]),
        .I2(p_0_in_0[0]),
        .I3(axi_interface_spi_wstrb[0]),
        .I4(p_0_in_0[2]),
        .I5(clr_txoverflow_req_i_2_n_0),
        .O(clr_txoverflow_req_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    clr_txoverflow_req_i_2
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(axi_interface_spi_wvalid),
        .I3(axi_interface_spi_awvalid),
        .I4(axi_interface_spi_aresetn),
        .O(clr_txoverflow_req_i_2_n_0));
  FDRE clr_txoverflow_req_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(clr_txoverflow_req_i_1_n_0),
        .Q(clr_txoverflow_req_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \ctrl[15]_i_1 
       (.I0(tx_fifo_n_2),
        .I1(axi_interface_spi_wstrb[1]),
        .I2(p_0_in_0[1]),
        .O(\ctrl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ctrl[23]_i_1 
       (.I0(tx_fifo_n_2),
        .I1(axi_interface_spi_wstrb[2]),
        .I2(p_0_in_0[1]),
        .O(\ctrl[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ctrl[31]_i_1 
       (.I0(axi_interface_spi_wstrb[3]),
        .I1(p_0_in_0[1]),
        .I2(tx_fifo_n_2),
        .O(\ctrl[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ctrl[7]_i_1 
       (.I0(tx_fifo_n_2),
        .I1(p_0_in_0[1]),
        .I2(axi_interface_spi_wstrb[0]),
        .O(\ctrl[7]_i_1_n_0 ));
  FDRE \ctrl_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[0]),
        .Q(ctrl[0]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[10]),
        .Q(cs_manual[1]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[11]),
        .Q(cs_manual[2]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[12]),
        .Q(cs_manual[3]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[13]),
        .Q(ctrl[13]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[14]),
        .Q(ctrl[14]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[15]),
        .Q(ctrl[15]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[16]),
        .Q(ctrl[16]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[17]),
        .Q(ctrl[17]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[18]),
        .Q(ctrl[18]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[19]),
        .Q(ctrl[19]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[1]),
        .Q(ctrl[1]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[20]),
        .Q(ctrl[20]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[21]),
        .Q(ctrl[21]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[22]),
        .Q(ctrl[22]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[23]),
        .Q(ctrl[23]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[24]),
        .Q(\ctrl_reg_n_0_[24] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[25]),
        .Q(\ctrl_reg_n_0_[25] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[26]),
        .Q(\ctrl_reg_n_0_[26] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[27]),
        .Q(\ctrl_reg_n_0_[27] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[28]),
        .Q(\ctrl_reg_n_0_[28] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[29]),
        .Q(\ctrl_reg_n_0_[29] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[2]),
        .Q(ctrl[2]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[30]),
        .Q(\ctrl_reg_n_0_[30] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[31]),
        .Q(\ctrl_reg_n_0_[31] ),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[3]),
        .Q(ctrl[3]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[4]),
        .Q(ctrl[4]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[5]),
        .Q(ctrl[5]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[6]),
        .Q(ctrl[6]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[7]),
        .Q(ctrl[7]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[8]),
        .Q(ctrl[8]),
        .R(spi_fsm_inst_n_0));
  FDRE \ctrl_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(\ctrl[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[9]),
        .Q(cs_manual[0]),
        .R(spi_fsm_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][0]_i_1 
       (.I0(\data_reg_n_0_[0] ),
        .I1(datain_final[0]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][10]_i_1 
       (.I0(\data_reg_n_0_[10] ),
        .I1(datain_final[10]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][11]_i_1 
       (.I0(\data_reg_n_0_[11] ),
        .I1(datain_final[11]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][12]_i_1 
       (.I0(\data_reg_n_0_[12] ),
        .I1(datain_final[12]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][13]_i_1 
       (.I0(\data_reg_n_0_[13] ),
        .I1(datain_final[13]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][14]_i_1 
       (.I0(\data_reg_n_0_[14] ),
        .I1(datain_final[14]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][15]_i_1 
       (.I0(\data_reg_n_0_[15] ),
        .I1(datain_final[15]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][16]_i_1 
       (.I0(\data_reg_n_0_[16] ),
        .I1(datain_final[16]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][17]_i_1 
       (.I0(\data_reg_n_0_[17] ),
        .I1(datain_final[17]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][18]_i_1 
       (.I0(\data_reg_n_0_[18] ),
        .I1(datain_final[18]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][19]_i_1 
       (.I0(\data_reg_n_0_[19] ),
        .I1(datain_final[19]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][1]_i_1 
       (.I0(\data_reg_n_0_[1] ),
        .I1(datain_final[1]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][20]_i_1 
       (.I0(\data_reg_n_0_[20] ),
        .I1(datain_final[20]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][21]_i_1 
       (.I0(\data_reg_n_0_[21] ),
        .I1(datain_final[21]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][22]_i_1 
       (.I0(\data_reg_n_0_[22] ),
        .I1(datain_final[22]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][23]_i_1 
       (.I0(\data_reg_n_0_[23] ),
        .I1(datain_final[23]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][24]_i_1 
       (.I0(\data_reg_n_0_[24] ),
        .I1(datain_final[24]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][25]_i_1 
       (.I0(\data_reg_n_0_[25] ),
        .I1(datain_final[25]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][26]_i_1 
       (.I0(\data_reg_n_0_[26] ),
        .I1(datain_final[26]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][27]_i_1 
       (.I0(\data_reg_n_0_[27] ),
        .I1(datain_final[27]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][28]_i_1 
       (.I0(\data_reg_n_0_[28] ),
        .I1(datain_final[28]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][29]_i_1 
       (.I0(\data_reg_n_0_[29] ),
        .I1(datain_final[29]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][2]_i_1 
       (.I0(\data_reg_n_0_[2] ),
        .I1(datain_final[2]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][30]_i_1 
       (.I0(\data_reg_n_0_[30] ),
        .I1(datain_final[30]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][31]_i_2 
       (.I0(\data_reg_n_0_[31] ),
        .I1(datain_final[31]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][3]_i_1 
       (.I0(\data_reg_n_0_[3] ),
        .I1(datain_final[3]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][4]_i_1 
       (.I0(\data_reg_n_0_[4] ),
        .I1(datain_final[4]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][5]_i_1 
       (.I0(\data_reg_n_0_[5] ),
        .I1(datain_final[5]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][6]_i_1 
       (.I0(\data_reg_n_0_[6] ),
        .I1(datain_final[6]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][7]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(datain_final[7]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][8]_i_1 
       (.I0(\data_reg_n_0_[8] ),
        .I1(datain_final[8]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data[0][9]_i_1 
       (.I0(\data_reg_n_0_[9] ),
        .I1(datain_final[9]),
        .I2(axi_wr_sel),
        .O(fifo_wr_data[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \data[15]_i_1 
       (.I0(axi_interface_spi_wstrb[1]),
        .I1(tx_fifo_n_2),
        .I2(p_0_in_0[1]),
        .O(\data[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data[23]_i_1 
       (.I0(axi_interface_spi_wstrb[2]),
        .I1(tx_fifo_n_2),
        .I2(p_0_in_0[1]),
        .O(\data[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data[31]_i_1 
       (.I0(axi_interface_spi_wstrb[3]),
        .I1(tx_fifo_n_2),
        .I2(p_0_in_0[1]),
        .O(\data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data[7]_i_1 
       (.I0(axi_interface_spi_wstrb[0]),
        .I1(tx_fifo_n_2),
        .I2(p_0_in_0[1]),
        .O(\data[7]_i_1_n_0 ));
  FDRE \data_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[10]),
        .Q(\data_reg_n_0_[10] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[11]),
        .Q(\data_reg_n_0_[11] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[12]),
        .Q(\data_reg_n_0_[12] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[13]),
        .Q(\data_reg_n_0_[13] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[14]),
        .Q(\data_reg_n_0_[14] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[15]),
        .Q(\data_reg_n_0_[15] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[16]),
        .Q(\data_reg_n_0_[16] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[17]),
        .Q(\data_reg_n_0_[17] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[18]),
        .Q(\data_reg_n_0_[18] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[19]),
        .Q(\data_reg_n_0_[19] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[1]),
        .Q(\data_reg_n_0_[1] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[20]),
        .Q(\data_reg_n_0_[20] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[21]),
        .Q(\data_reg_n_0_[21] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[22]),
        .Q(\data_reg_n_0_[22] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[23]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[23]),
        .Q(\data_reg_n_0_[23] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[24]),
        .Q(\data_reg_n_0_[24] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[25]),
        .Q(\data_reg_n_0_[25] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[26]),
        .Q(\data_reg_n_0_[26] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[27]),
        .Q(\data_reg_n_0_[27] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[28]),
        .Q(\data_reg_n_0_[28] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[29]),
        .Q(\data_reg_n_0_[29] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[2]),
        .Q(\data_reg_n_0_[2] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[30]),
        .Q(\data_reg_n_0_[30] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[31]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[31]),
        .Q(\data_reg_n_0_[31] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[3]),
        .Q(\data_reg_n_0_[3] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[4]),
        .Q(\data_reg_n_0_[4] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[5]),
        .Q(\data_reg_n_0_[5] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[6]),
        .Q(\data_reg_n_0_[6] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[7]),
        .Q(\data_reg_n_0_[7] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[8]),
        .Q(\data_reg_n_0_[8] ),
        .R(spi_fsm_inst_n_0));
  FDRE \data_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15]_i_1_n_0 ),
        .D(axi_interface_spi_wdata[9]),
        .Q(\data_reg_n_0_[9] ),
        .R(spi_fsm_inst_n_0));
  FDRE \datain_betweener_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[0]),
        .Q(datain_betweener[0]),
        .R(1'b0));
  FDRE \datain_betweener_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[10]),
        .Q(datain_betweener[10]),
        .R(1'b0));
  FDRE \datain_betweener_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[11]),
        .Q(datain_betweener[11]),
        .R(1'b0));
  FDRE \datain_betweener_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[12]),
        .Q(datain_betweener[12]),
        .R(1'b0));
  FDRE \datain_betweener_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[13]),
        .Q(datain_betweener[13]),
        .R(1'b0));
  FDRE \datain_betweener_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[14]),
        .Q(datain_betweener[14]),
        .R(1'b0));
  FDRE \datain_betweener_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[15]),
        .Q(datain_betweener[15]),
        .R(1'b0));
  FDRE \datain_betweener_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[16]),
        .Q(datain_betweener[16]),
        .R(1'b0));
  FDRE \datain_betweener_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[17]),
        .Q(datain_betweener[17]),
        .R(1'b0));
  FDRE \datain_betweener_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[18]),
        .Q(datain_betweener[18]),
        .R(1'b0));
  FDRE \datain_betweener_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[19]),
        .Q(datain_betweener[19]),
        .R(1'b0));
  FDRE \datain_betweener_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[1]),
        .Q(datain_betweener[1]),
        .R(1'b0));
  FDRE \datain_betweener_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[20]),
        .Q(datain_betweener[20]),
        .R(1'b0));
  FDRE \datain_betweener_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[21]),
        .Q(datain_betweener[21]),
        .R(1'b0));
  FDRE \datain_betweener_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[22]),
        .Q(datain_betweener[22]),
        .R(1'b0));
  FDRE \datain_betweener_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[23]),
        .Q(datain_betweener[23]),
        .R(1'b0));
  FDRE \datain_betweener_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[24]),
        .Q(datain_betweener[24]),
        .R(1'b0));
  FDRE \datain_betweener_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[25]),
        .Q(datain_betweener[25]),
        .R(1'b0));
  FDRE \datain_betweener_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[26]),
        .Q(datain_betweener[26]),
        .R(1'b0));
  FDRE \datain_betweener_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[27]),
        .Q(datain_betweener[27]),
        .R(1'b0));
  FDRE \datain_betweener_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[28]),
        .Q(datain_betweener[28]),
        .R(1'b0));
  FDRE \datain_betweener_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[29]),
        .Q(datain_betweener[29]),
        .R(1'b0));
  FDRE \datain_betweener_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[2]),
        .Q(datain_betweener[2]),
        .R(1'b0));
  FDRE \datain_betweener_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[30]),
        .Q(datain_betweener[30]),
        .R(1'b0));
  FDRE \datain_betweener_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[31]),
        .Q(datain_betweener[31]),
        .R(1'b0));
  FDRE \datain_betweener_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[3]),
        .Q(datain_betweener[3]),
        .R(1'b0));
  FDRE \datain_betweener_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[4]),
        .Q(datain_betweener[4]),
        .R(1'b0));
  FDRE \datain_betweener_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[5]),
        .Q(datain_betweener[5]),
        .R(1'b0));
  FDRE \datain_betweener_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[6]),
        .Q(datain_betweener[6]),
        .R(1'b0));
  FDRE \datain_betweener_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[7]),
        .Q(datain_betweener[7]),
        .R(1'b0));
  FDRE \datain_betweener_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[8]),
        .Q(datain_betweener[8]),
        .R(1'b0));
  FDRE \datain_betweener_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain[9]),
        .Q(datain_betweener[9]),
        .R(1'b0));
  FDRE \datain_final_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[0]),
        .Q(datain_final[0]),
        .R(1'b0));
  FDRE \datain_final_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[10]),
        .Q(datain_final[10]),
        .R(1'b0));
  FDRE \datain_final_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[11]),
        .Q(datain_final[11]),
        .R(1'b0));
  FDRE \datain_final_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[12]),
        .Q(datain_final[12]),
        .R(1'b0));
  FDRE \datain_final_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[13]),
        .Q(datain_final[13]),
        .R(1'b0));
  FDRE \datain_final_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[14]),
        .Q(datain_final[14]),
        .R(1'b0));
  FDRE \datain_final_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[15]),
        .Q(datain_final[15]),
        .R(1'b0));
  FDRE \datain_final_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[16]),
        .Q(datain_final[16]),
        .R(1'b0));
  FDRE \datain_final_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[17]),
        .Q(datain_final[17]),
        .R(1'b0));
  FDRE \datain_final_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[18]),
        .Q(datain_final[18]),
        .R(1'b0));
  FDRE \datain_final_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[19]),
        .Q(datain_final[19]),
        .R(1'b0));
  FDRE \datain_final_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[1]),
        .Q(datain_final[1]),
        .R(1'b0));
  FDRE \datain_final_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[20]),
        .Q(datain_final[20]),
        .R(1'b0));
  FDRE \datain_final_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[21]),
        .Q(datain_final[21]),
        .R(1'b0));
  FDRE \datain_final_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[22]),
        .Q(datain_final[22]),
        .R(1'b0));
  FDRE \datain_final_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[23]),
        .Q(datain_final[23]),
        .R(1'b0));
  FDRE \datain_final_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[24]),
        .Q(datain_final[24]),
        .R(1'b0));
  FDRE \datain_final_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[25]),
        .Q(datain_final[25]),
        .R(1'b0));
  FDRE \datain_final_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[26]),
        .Q(datain_final[26]),
        .R(1'b0));
  FDRE \datain_final_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[27]),
        .Q(datain_final[27]),
        .R(1'b0));
  FDRE \datain_final_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[28]),
        .Q(datain_final[28]),
        .R(1'b0));
  FDRE \datain_final_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[29]),
        .Q(datain_final[29]),
        .R(1'b0));
  FDRE \datain_final_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[2]),
        .Q(datain_final[2]),
        .R(1'b0));
  FDRE \datain_final_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[30]),
        .Q(datain_final[30]),
        .R(1'b0));
  FDRE \datain_final_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[31]),
        .Q(datain_final[31]),
        .R(1'b0));
  FDRE \datain_final_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[3]),
        .Q(datain_final[3]),
        .R(1'b0));
  FDRE \datain_final_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[4]),
        .Q(datain_final[4]),
        .R(1'b0));
  FDRE \datain_final_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[5]),
        .Q(datain_final[5]),
        .R(1'b0));
  FDRE \datain_final_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[6]),
        .Q(datain_final[6]),
        .R(1'b0));
  FDRE \datain_final_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[7]),
        .Q(datain_final[7]),
        .R(1'b0));
  FDRE \datain_final_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[8]),
        .Q(datain_final[8]),
        .R(1'b0));
  FDRE \datain_final_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(datain_betweener[9]),
        .Q(datain_final[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[2]_i_1 
       (.I0(axi_interface_spi_araddr[0]),
        .I1(axi_interface_spi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(raddr[2]),
        .O(\raddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[3]_i_1 
       (.I0(axi_interface_spi_araddr[1]),
        .I1(axi_interface_spi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(raddr[3]),
        .O(\raddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[4]_i_1 
       (.I0(axi_interface_spi_araddr[2]),
        .I1(axi_interface_spi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(raddr[4]),
        .O(\raddr[4]_i_1_n_0 ));
  FDRE \raddr_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(raddr[2]),
        .R(spi_fsm_inst_n_0));
  FDRE \raddr_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(raddr[3]),
        .R(spi_fsm_inst_n_0));
  FDRE \raddr_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(raddr[4]),
        .R(spi_fsm_inst_n_0));
  system_My_SPI_0_4_spi_fsm spi_fsm_inst
       (.E(p_0_in),
        .\FSM_sequential_state_reg[0]_0 (tx_fifo_n_35),
        .\FSM_sequential_state_reg[1]_0 (tx_fifo_n_36),
        .Q({ctrl[23:13],cs_manual,ctrl[8:0]}),
        .SR(spi_fsm_inst_n_0),
        .auto(auto),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .axi_interface_spi_aresetn(axi_interface_spi_aresetn),
        .baud_clk(baud_clk),
        .baud_clk_0(baud_clk_next_reg_n_0),
        .brd_output(brd_output),
        .clk_go(clk_go),
        .cs(cs),
        .\data_reg_reg[31]_0 ({\data_reg_n_0_[31] ,\data_reg_n_0_[30] ,\data_reg_n_0_[29] ,\data_reg_n_0_[28] ,\data_reg_n_0_[27] ,\data_reg_n_0_[26] ,\data_reg_n_0_[25] ,\data_reg_n_0_[24] ,\data_reg_n_0_[23] ,\data_reg_n_0_[22] ,\data_reg_n_0_[21] ,\data_reg_n_0_[20] ,\data_reg_n_0_[19] ,\data_reg_n_0_[18] ,\data_reg_n_0_[17] ,\data_reg_n_0_[16] ,\data_reg_n_0_[15] ,\data_reg_n_0_[14] ,\data_reg_n_0_[13] ,\data_reg_n_0_[12] ,\data_reg_n_0_[11] ,\data_reg_n_0_[10] ,\data_reg_n_0_[9] ,\data_reg_n_0_[8] ,\data_reg_n_0_[7] ,\data_reg_n_0_[6] ,\data_reg_n_0_[5] ,\data_reg_n_0_[4] ,\data_reg_n_0_[3] ,\data_reg_n_0_[2] ,\data_reg_n_0_[1] ,\data_reg_n_0_[0] }),
        .datum(datum),
        .fifo_rd_req(fifo_rd_req),
        .last_in(\rd_det/last_in ),
        .rd_req_flag_reg_0(spi_fsm_inst_n_9),
        .rd_req_flag_reg_1(the_brd_instantiation_n_2));
  system_My_SPI_0_4_the_brd the_brd_instantiation
       (.E(p_0_in),
        .Q(ctrl[15]),
        .SR(spi_fsm_inst_n_0),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .baud_clk_next_reg(baud_clk_next_reg_n_0),
        .brd_output(brd_output),
        .brd_output_reg_0(the_brd_instantiation_n_3),
        .brd_output_reg_1(brd),
        .clk_go(clk_go),
        .\ctrl_reg[15] (the_brd_instantiation_n_2));
  system_My_SPI_0_4_fifo_fixed tx_fifo
       (.D({tx_fifo_n_3,tx_fifo_n_4,tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11,tx_fifo_n_12,tx_fifo_n_13,tx_fifo_n_14,tx_fifo_n_15,tx_fifo_n_16,tx_fifo_n_17,tx_fifo_n_18,tx_fifo_n_19,tx_fifo_n_20,tx_fifo_n_21,tx_fifo_n_22,tx_fifo_n_23,tx_fifo_n_24,tx_fifo_n_25,tx_fifo_n_26,tx_fifo_n_27,tx_fifo_n_28,tx_fifo_n_29,tx_fifo_n_30,tx_fifo_n_31,tx_fifo_n_32,tx_fifo_n_33,tx_fifo_n_34}),
        .Q({\ctrl_reg_n_0_[31] ,\ctrl_reg_n_0_[30] ,\ctrl_reg_n_0_[29] ,\ctrl_reg_n_0_[28] ,\ctrl_reg_n_0_[27] ,\ctrl_reg_n_0_[26] ,\ctrl_reg_n_0_[25] ,\ctrl_reg_n_0_[24] ,ctrl[23:13],cs_manual,ctrl[8:0]}),
        .SR(spi_fsm_inst_n_0),
        .auto(auto),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .axi_interface_spi_awvalid(axi_interface_spi_awvalid),
        .axi_interface_spi_wvalid(axi_interface_spi_wvalid),
        .\axi_rdata_reg[31] (brd),
        .clr_overflow_req(clr_overflow_req),
        .\data_reg[15][31] (fifo_wr_data),
        .fifo_rd_req(fifo_rd_req),
        .fifo_wr_req(fifo_wr_req),
        .last_in(\rd_det/last_in ),
        .last_in_reg(clr_txoverflow_req_reg_n_0),
        .out_reg(spi_fsm_inst_n_9),
        .out_reg_0(S_AXI_AWREADY),
        .out_reg_1(S_AXI_WREADY),
        .p_0_in_0(p_0_in_0),
        .raddr(raddr[3:2]),
        .\rd_index_reg[0] (tx_fifo_n_35),
        .\waddr_reg[2] (tx_fifo_n_2),
        .\wr_index_reg[1] (tx_fifo_n_36));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \waddr[2]_i_1 
       (.I0(axi_interface_spi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(axi_interface_spi_wvalid),
        .I4(axi_interface_spi_awvalid),
        .I5(p_0_in_0[0]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \waddr[3]_i_1 
       (.I0(axi_interface_spi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(axi_interface_spi_wvalid),
        .I4(axi_interface_spi_awvalid),
        .I5(p_0_in_0[1]),
        .O(\waddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \waddr[4]_i_1 
       (.I0(axi_interface_spi_awaddr[2]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(axi_interface_spi_wvalid),
        .I4(axi_interface_spi_awvalid),
        .I5(p_0_in_0[2]),
        .O(\waddr[4]_i_1_n_0 ));
  FDRE \waddr_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(spi_fsm_inst_n_0));
  FDRE \waddr_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(spi_fsm_inst_n_0));
  FDRE \waddr_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(spi_fsm_inst_n_0));
endmodule

(* ORIG_REF_NAME = "edge_detector" *) 
module system_My_SPI_0_4_edge_detector
   (clr_out,
    axi_interface_spi_aclk,
    last_in_reg_0,
    clr_overflow_req);
  output clr_out;
  input axi_interface_spi_aclk;
  input last_in_reg_0;
  input clr_overflow_req;

  wire axi_interface_spi_aclk;
  wire clr_out;
  wire clr_overflow0;
  wire clr_overflow_req;
  wire last_in;
  wire last_in_reg_0;
  wire out_i_1__1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    last_in_i_1__0
       (.I0(clr_overflow_req),
        .I1(last_in_reg_0),
        .O(clr_overflow0));
  FDRE last_in_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(clr_overflow0),
        .Q(last_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    out_i_1__1
       (.I0(last_in_reg_0),
        .I1(clr_overflow_req),
        .I2(last_in),
        .O(out_i_1__1_n_0));
  FDRE out_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(out_i_1__1_n_0),
        .Q(clr_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detector" *) 
module system_My_SPI_0_4_edge_detector_0
   (last_in,
    E,
    fifo_rd_req,
    axi_interface_spi_aclk,
    out_reg_0,
    \rd_index_reg[3] );
  output last_in;
  output [0:0]E;
  input fifo_rd_req;
  input axi_interface_spi_aclk;
  input out_reg_0;
  input \rd_index_reg[3] ;

  wire [0:0]E;
  wire axi_interface_spi_aclk;
  wire fifo_rd_req;
  wire last_in;
  wire out_reg_0;
  wire \rd_index_reg[3] ;
  wire rd_out;

  FDRE last_in_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(fifo_rd_req),
        .Q(last_in),
        .R(1'b0));
  FDRE out_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(out_reg_0),
        .Q(rd_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_index[3]_i_1 
       (.I0(rd_out),
        .I1(\rd_index_reg[3] ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "edge_detector" *) 
module system_My_SPI_0_4_edge_detector_1
   (fifo_wr_req,
    wr_out,
    \waddr_reg[2] ,
    axi_interface_spi_aclk,
    p_0_in_0,
    axi_interface_spi_awvalid,
    axi_interface_spi_wvalid,
    out_reg_0,
    out_reg_1);
  output fifo_wr_req;
  output wr_out;
  output \waddr_reg[2] ;
  input axi_interface_spi_aclk;
  input [2:0]p_0_in_0;
  input axi_interface_spi_awvalid;
  input axi_interface_spi_wvalid;
  input out_reg_0;
  input out_reg_1;

  wire axi_interface_spi_aclk;
  wire axi_interface_spi_awvalid;
  wire axi_interface_spi_wvalid;
  wire fifo_wr_req;
  wire last_in;
  wire out_i_1__0_n_0;
  wire out_reg_0;
  wire out_reg_1;
  wire [2:0]p_0_in_0;
  wire \waddr_reg[2] ;
  wire wr_out;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    last_in_i_1
       (.I0(\waddr_reg[2] ),
        .I1(p_0_in_0[1]),
        .O(fifo_wr_req));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    last_in_i_2
       (.I0(p_0_in_0[0]),
        .I1(axi_interface_spi_awvalid),
        .I2(axi_interface_spi_wvalid),
        .I3(out_reg_0),
        .I4(out_reg_1),
        .I5(p_0_in_0[2]),
        .O(\waddr_reg[2] ));
  FDRE last_in_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(fifo_wr_req),
        .Q(last_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h01)) 
    out_i_1__0
       (.I0(last_in),
        .I1(\waddr_reg[2] ),
        .I2(p_0_in_0[1]),
        .O(out_i_1__0_n_0));
  FDRE out_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(out_i_1__0_n_0),
        .Q(wr_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo15x32" *) 
module system_My_SPI_0_4_fifo15x32
   (D,
    \rd_index_reg[0]_0 ,
    \wr_index_reg[1]_0 ,
    SR,
    axi_interface_spi_aclk,
    wr_out,
    raddr,
    Q,
    \axi_rdata_reg[31] ,
    auto,
    clr_out,
    \data_reg[15][31]_0 ,
    E);
  output [31:0]D;
  output \rd_index_reg[0]_0 ;
  output \wr_index_reg[1]_0 ;
  input [0:0]SR;
  input axi_interface_spi_aclk;
  input wr_out;
  input [1:0]raddr;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31] ;
  input auto;
  input clr_out;
  input [31:0]\data_reg[15][31]_0 ;
  input [0:0]E;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire auto;
  wire axi_interface_spi_aclk;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[11]_i_9_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[12]_i_9_n_0 ;
  wire \axi_rdata[13]_i_10_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[13]_i_8_n_0 ;
  wire \axi_rdata[13]_i_9_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[14]_i_8_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[15]_i_8_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[16]_i_8_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[17]_i_8_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[18]_i_8_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[19]_i_8_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[1]_i_8_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[20]_i_8_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[21]_i_8_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[22]_i_8_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[23]_i_8_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[24]_i_8_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[25]_i_8_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[26]_i_8_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[27]_i_8_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[28]_i_8_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[29]_i_8_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[2]_i_8_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[30]_i_8_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[31]_i_9_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[3]_i_8_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[4]_i_8_n_0 ;
  wire \axi_rdata[4]_i_9_n_0 ;
  wire \axi_rdata[5]_i_10_n_0 ;
  wire \axi_rdata[5]_i_11_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[5]_i_9_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_i_4_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_4_n_0 ;
  wire \axi_rdata_reg[10]_i_5_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_4_n_0 ;
  wire \axi_rdata_reg[11]_i_5_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_4_n_0 ;
  wire \axi_rdata_reg[12]_i_5_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_4_n_0 ;
  wire \axi_rdata_reg[13]_i_5_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_4_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_4_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_4_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_4_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_4_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_4_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_4_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_4_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_4_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_4_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_4_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_4_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_4_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_4_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_4_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_4_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_4_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_4_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_4_n_0 ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[31]_i_5_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_4_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_4_n_0 ;
  wire \axi_rdata_reg[4]_i_5_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_4_n_0 ;
  wire \axi_rdata_reg[5]_i_5_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_4_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_4_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_4_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_4_n_0 ;
  wire clr_out;
  wire [0:0]data;
  wire \data[0][31]_i_3_n_0 ;
  wire \data[10][31]_i_1_n_0 ;
  wire \data[11][31]_i_1_n_0 ;
  wire \data[12][31]_i_1_n_0 ;
  wire \data[13][31]_i_1_n_0 ;
  wire \data[14][31]_i_1_n_0 ;
  wire \data[15][31]_i_1_n_0 ;
  wire \data[1][31]_i_1_n_0 ;
  wire \data[2][31]_i_1_n_0 ;
  wire \data[3][31]_i_1_n_0 ;
  wire \data[4][31]_i_1_n_0 ;
  wire \data[5][31]_i_1_n_0 ;
  wire \data[6][31]_i_1_n_0 ;
  wire \data[7][31]_i_1_n_0 ;
  wire \data[8][31]_i_1_n_0 ;
  wire \data[9][31]_i_1_n_0 ;
  wire [31:0]\data_reg[0]__0 ;
  wire [31:0]\data_reg[10]__0 ;
  wire [31:0]\data_reg[11]__0 ;
  wire [31:0]\data_reg[12]__0 ;
  wire [31:0]\data_reg[13]__0 ;
  wire [31:0]\data_reg[14]__0 ;
  wire [31:0]\data_reg[15][31]_0 ;
  wire [31:0]\data_reg[15]__0 ;
  wire [31:0]\data_reg[1]__0 ;
  wire [31:0]\data_reg[2]__0 ;
  wire [31:0]\data_reg[3]__0 ;
  wire [31:0]\data_reg[4]__0 ;
  wire [31:0]\data_reg[5]__0 ;
  wire [31:0]\data_reg[6]__0 ;
  wire [31:0]\data_reg[7]__0 ;
  wire [31:0]\data_reg[8]__0 ;
  wire [31:0]\data_reg[9]__0 ;
  wire overflow_i_1_n_0;
  wire overflow_reg_n_0;
  wire [3:1]p_0_in__0;
  wire [1:0]raddr;
  wire \rd_index[0]_i_1_n_0 ;
  wire \rd_index[2]_i_1_n_0 ;
  wire [3:0]rd_index_reg;
  wire \rd_index_reg[0]_0 ;
  wire wr_index0;
  wire \wr_index[0]_i_1_n_0 ;
  wire \wr_index[1]_i_1_n_0 ;
  wire \wr_index[2]_i_1_n_0 ;
  wire \wr_index[3]_i_2_n_0 ;
  wire [3:0]wr_index_reg;
  wire \wr_index_reg[1]_0 ;
  wire wr_out;

  LUT6 #(
    .INIT(64'h0000000000004004)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\axi_rdata[5]_i_7_n_0 ),
        .I1(\axi_rdata[5]_i_6_n_0 ),
        .I2(wr_index_reg[1]),
        .I3(rd_index_reg[1]),
        .I4(\axi_rdata[10]_i_3_n_0 ),
        .I5(auto),
        .O(\wr_index_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [0]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\data_reg[3]__0 [0]),
        .I1(\data_reg[2]__0 [0]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [0]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(\data_reg[7]__0 [0]),
        .I1(\data_reg[6]__0 [0]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [0]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(\data_reg[11]__0 [0]),
        .I1(\data_reg[10]__0 [0]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [0]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_8 
       (.I0(\data_reg[15]__0 [0]),
        .I1(\data_reg[14]__0 [0]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [0]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [0]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFCA0FCAF0CA00CA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(Q[10]),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .I4(\axi_rdata_reg[31] [10]),
        .I5(\axi_rdata[10]_i_3_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[10]_i_3 
       (.I0(rd_index_reg[0]),
        .I1(wr_index_reg[0]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(\data_reg[3]__0 [10]),
        .I1(\data_reg[2]__0 [10]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [10]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(\data_reg[7]__0 [10]),
        .I1(\data_reg[6]__0 [10]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [10]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_8 
       (.I0(\data_reg[11]__0 [10]),
        .I1(\data_reg[10]__0 [10]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [10]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [10]),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_9 
       (.I0(\data_reg[15]__0 [10]),
        .I1(\data_reg[14]__0 [10]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [10]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [10]),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF0AC00A)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [11]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[11]),
        .I5(\axi_rdata[11]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0200202220220200)) 
    \axi_rdata[11]_i_3 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(wr_index_reg[0]),
        .I3(rd_index_reg[0]),
        .I4(rd_index_reg[1]),
        .I5(wr_index_reg[1]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(\data_reg[3]__0 [11]),
        .I1(\data_reg[2]__0 [11]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [11]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(\data_reg[7]__0 [11]),
        .I1(\data_reg[6]__0 [11]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [11]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_8 
       (.I0(\data_reg[11]__0 [11]),
        .I1(\data_reg[10]__0 [11]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [11]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [11]),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_9 
       (.I0(\data_reg[15]__0 [11]),
        .I1(\data_reg[14]__0 [11]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [11]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [11]),
        .O(\axi_rdata[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCF0AC00ACFFAC0FA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [12]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[12]),
        .I5(\axi_rdata[12]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h9969666699999969)) 
    \axi_rdata[12]_i_3 
       (.I0(wr_index_reg[2]),
        .I1(rd_index_reg[2]),
        .I2(rd_index_reg[0]),
        .I3(wr_index_reg[0]),
        .I4(wr_index_reg[1]),
        .I5(rd_index_reg[1]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(\data_reg[3]__0 [12]),
        .I1(\data_reg[2]__0 [12]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [12]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(\data_reg[7]__0 [12]),
        .I1(\data_reg[6]__0 [12]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [12]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_8 
       (.I0(\data_reg[11]__0 [12]),
        .I1(\data_reg[10]__0 [12]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [12]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [12]),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_9 
       (.I0(\data_reg[15]__0 [12]),
        .I1(\data_reg[14]__0 [12]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [12]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [12]),
        .O(\axi_rdata[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF2FE323EC2CE020E)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(raddr[0]),
        .I2(raddr[1]),
        .I3(\axi_rdata[13]_i_3_n_0 ),
        .I4(\axi_rdata_reg[31] [13]),
        .I5(Q[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_10 
       (.I0(\data_reg[15]__0 [13]),
        .I1(\data_reg[14]__0 [13]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [13]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [13]),
        .O(\axi_rdata[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h69669969)) 
    \axi_rdata[13]_i_3 
       (.I0(wr_index_reg[3]),
        .I1(rd_index_reg[3]),
        .I2(rd_index_reg[2]),
        .I3(wr_index_reg[2]),
        .I4(\axi_rdata[13]_i_6_n_0 ),
        .O(\axi_rdata[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2B22)) 
    \axi_rdata[13]_i_6 
       (.I0(rd_index_reg[1]),
        .I1(wr_index_reg[1]),
        .I2(wr_index_reg[0]),
        .I3(rd_index_reg[0]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(\data_reg[3]__0 [13]),
        .I1(\data_reg[2]__0 [13]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [13]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_8 
       (.I0(\data_reg[7]__0 [13]),
        .I1(\data_reg[6]__0 [13]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [13]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [13]),
        .O(\axi_rdata[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_9 
       (.I0(\data_reg[11]__0 [13]),
        .I1(\data_reg[10]__0 [13]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [13]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [13]),
        .O(\axi_rdata[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [14]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\data_reg[3]__0 [14]),
        .I1(\data_reg[2]__0 [14]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [14]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(\data_reg[7]__0 [14]),
        .I1(\data_reg[6]__0 [14]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [14]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(\data_reg[11]__0 [14]),
        .I1(\data_reg[10]__0 [14]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [14]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_8 
       (.I0(\data_reg[15]__0 [14]),
        .I1(\data_reg[14]__0 [14]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [14]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [14]),
        .O(\axi_rdata[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [15]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\data_reg[3]__0 [15]),
        .I1(\data_reg[2]__0 [15]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [15]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(\data_reg[7]__0 [15]),
        .I1(\data_reg[6]__0 [15]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [15]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(\data_reg[11]__0 [15]),
        .I1(\data_reg[10]__0 [15]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [15]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_8 
       (.I0(\data_reg[15]__0 [15]),
        .I1(\data_reg[14]__0 [15]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [15]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [15]),
        .O(\axi_rdata[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [16]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\data_reg[3]__0 [16]),
        .I1(\data_reg[2]__0 [16]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [16]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(\data_reg[7]__0 [16]),
        .I1(\data_reg[6]__0 [16]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [16]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(\data_reg[11]__0 [16]),
        .I1(\data_reg[10]__0 [16]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [16]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_8 
       (.I0(\data_reg[15]__0 [16]),
        .I1(\data_reg[14]__0 [16]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [16]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [16]),
        .O(\axi_rdata[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [17]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\data_reg[3]__0 [17]),
        .I1(\data_reg[2]__0 [17]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [17]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(\data_reg[7]__0 [17]),
        .I1(\data_reg[6]__0 [17]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [17]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(\data_reg[11]__0 [17]),
        .I1(\data_reg[10]__0 [17]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [17]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_8 
       (.I0(\data_reg[15]__0 [17]),
        .I1(\data_reg[14]__0 [17]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [17]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [17]),
        .O(\axi_rdata[17]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [18]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\data_reg[3]__0 [18]),
        .I1(\data_reg[2]__0 [18]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [18]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(\data_reg[7]__0 [18]),
        .I1(\data_reg[6]__0 [18]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [18]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(\data_reg[11]__0 [18]),
        .I1(\data_reg[10]__0 [18]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [18]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_8 
       (.I0(\data_reg[15]__0 [18]),
        .I1(\data_reg[14]__0 [18]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [18]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [18]),
        .O(\axi_rdata[18]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [19]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\data_reg[3]__0 [19]),
        .I1(\data_reg[2]__0 [19]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [19]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(\data_reg[7]__0 [19]),
        .I1(\data_reg[6]__0 [19]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [19]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(\data_reg[11]__0 [19]),
        .I1(\data_reg[10]__0 [19]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [19]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_8 
       (.I0(\data_reg[15]__0 [19]),
        .I1(\data_reg[14]__0 [19]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [19]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [19]),
        .O(\axi_rdata[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [1]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\data_reg[3]__0 [1]),
        .I1(\data_reg[2]__0 [1]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [1]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(\data_reg[7]__0 [1]),
        .I1(\data_reg[6]__0 [1]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [1]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(\data_reg[11]__0 [1]),
        .I1(\data_reg[10]__0 [1]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [1]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_8 
       (.I0(\data_reg[15]__0 [1]),
        .I1(\data_reg[14]__0 [1]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [1]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [1]),
        .O(\axi_rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [20]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\data_reg[3]__0 [20]),
        .I1(\data_reg[2]__0 [20]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [20]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(\data_reg[7]__0 [20]),
        .I1(\data_reg[6]__0 [20]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [20]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(\data_reg[11]__0 [20]),
        .I1(\data_reg[10]__0 [20]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [20]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_8 
       (.I0(\data_reg[15]__0 [20]),
        .I1(\data_reg[14]__0 [20]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [20]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [20]),
        .O(\axi_rdata[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [21]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\data_reg[3]__0 [21]),
        .I1(\data_reg[2]__0 [21]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [21]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(\data_reg[7]__0 [21]),
        .I1(\data_reg[6]__0 [21]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [21]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(\data_reg[11]__0 [21]),
        .I1(\data_reg[10]__0 [21]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [21]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_8 
       (.I0(\data_reg[15]__0 [21]),
        .I1(\data_reg[14]__0 [21]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [21]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [21]),
        .O(\axi_rdata[21]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [22]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\data_reg[3]__0 [22]),
        .I1(\data_reg[2]__0 [22]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [22]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(\data_reg[7]__0 [22]),
        .I1(\data_reg[6]__0 [22]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [22]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(\data_reg[11]__0 [22]),
        .I1(\data_reg[10]__0 [22]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [22]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_8 
       (.I0(\data_reg[15]__0 [22]),
        .I1(\data_reg[14]__0 [22]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [22]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [22]),
        .O(\axi_rdata[22]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [23]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\data_reg[3]__0 [23]),
        .I1(\data_reg[2]__0 [23]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [23]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(\data_reg[7]__0 [23]),
        .I1(\data_reg[6]__0 [23]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [23]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(\data_reg[11]__0 [23]),
        .I1(\data_reg[10]__0 [23]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [23]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_8 
       (.I0(\data_reg[15]__0 [23]),
        .I1(\data_reg[14]__0 [23]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [23]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [23]),
        .O(\axi_rdata[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [24]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\data_reg[3]__0 [24]),
        .I1(\data_reg[2]__0 [24]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [24]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(\data_reg[7]__0 [24]),
        .I1(\data_reg[6]__0 [24]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [24]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(\data_reg[11]__0 [24]),
        .I1(\data_reg[10]__0 [24]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [24]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_8 
       (.I0(\data_reg[15]__0 [24]),
        .I1(\data_reg[14]__0 [24]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [24]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [24]),
        .O(\axi_rdata[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [25]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\data_reg[3]__0 [25]),
        .I1(\data_reg[2]__0 [25]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [25]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(\data_reg[7]__0 [25]),
        .I1(\data_reg[6]__0 [25]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [25]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(\data_reg[11]__0 [25]),
        .I1(\data_reg[10]__0 [25]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [25]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_8 
       (.I0(\data_reg[15]__0 [25]),
        .I1(\data_reg[14]__0 [25]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [25]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [25]),
        .O(\axi_rdata[25]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [26]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\data_reg[3]__0 [26]),
        .I1(\data_reg[2]__0 [26]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [26]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(\data_reg[7]__0 [26]),
        .I1(\data_reg[6]__0 [26]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [26]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(\data_reg[11]__0 [26]),
        .I1(\data_reg[10]__0 [26]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [26]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_8 
       (.I0(\data_reg[15]__0 [26]),
        .I1(\data_reg[14]__0 [26]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [26]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [26]),
        .O(\axi_rdata[26]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [27]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\data_reg[3]__0 [27]),
        .I1(\data_reg[2]__0 [27]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [27]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(\data_reg[7]__0 [27]),
        .I1(\data_reg[6]__0 [27]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [27]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(\data_reg[11]__0 [27]),
        .I1(\data_reg[10]__0 [27]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [27]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_8 
       (.I0(\data_reg[15]__0 [27]),
        .I1(\data_reg[14]__0 [27]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [27]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [27]),
        .O(\axi_rdata[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [28]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\data_reg[3]__0 [28]),
        .I1(\data_reg[2]__0 [28]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [28]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(\data_reg[7]__0 [28]),
        .I1(\data_reg[6]__0 [28]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [28]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(\data_reg[11]__0 [28]),
        .I1(\data_reg[10]__0 [28]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [28]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_8 
       (.I0(\data_reg[15]__0 [28]),
        .I1(\data_reg[14]__0 [28]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [28]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [28]),
        .O(\axi_rdata[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [29]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\data_reg[3]__0 [29]),
        .I1(\data_reg[2]__0 [29]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [29]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(\data_reg[7]__0 [29]),
        .I1(\data_reg[6]__0 [29]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [29]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(\data_reg[11]__0 [29]),
        .I1(\data_reg[10]__0 [29]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [29]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_8 
       (.I0(\data_reg[15]__0 [29]),
        .I1(\data_reg[14]__0 [29]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [29]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [29]),
        .O(\axi_rdata[29]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [2]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\data_reg[3]__0 [2]),
        .I1(\data_reg[2]__0 [2]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [2]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(\data_reg[7]__0 [2]),
        .I1(\data_reg[6]__0 [2]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [2]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(\data_reg[11]__0 [2]),
        .I1(\data_reg[10]__0 [2]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [2]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_8 
       (.I0(\data_reg[15]__0 [2]),
        .I1(\data_reg[14]__0 [2]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [2]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [2]),
        .O(\axi_rdata[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [30]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\data_reg[3]__0 [30]),
        .I1(\data_reg[2]__0 [30]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [30]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(\data_reg[7]__0 [30]),
        .I1(\data_reg[6]__0 [30]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [30]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(\data_reg[11]__0 [30]),
        .I1(\data_reg[10]__0 [30]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [30]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_8 
       (.I0(\data_reg[15]__0 [30]),
        .I1(\data_reg[14]__0 [30]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [30]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [30]),
        .O(\axi_rdata[30]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31] [31]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(\data_reg[3]__0 [31]),
        .I1(\data_reg[2]__0 [31]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [31]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(\data_reg[7]__0 [31]),
        .I1(\data_reg[6]__0 [31]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [31]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(\data_reg[11]__0 [31]),
        .I1(\data_reg[10]__0 [31]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [31]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_9 
       (.I0(\data_reg[15]__0 [31]),
        .I1(\data_reg[14]__0 [31]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [31]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [31]),
        .O(\axi_rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFA0CFAFC0A0C0A)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(overflow_reg_n_0),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .I4(\axi_rdata_reg[31] [3]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\data_reg[3]__0 [3]),
        .I1(\data_reg[2]__0 [3]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [3]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(\data_reg[7]__0 [3]),
        .I1(\data_reg[6]__0 [3]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [3]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(\data_reg[11]__0 [3]),
        .I1(\data_reg[10]__0 [3]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [3]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_8 
       (.I0(\data_reg[15]__0 [3]),
        .I1(\data_reg[14]__0 [3]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [3]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [3]),
        .O(\axi_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFCA0FCAF0CA00CA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .I4(\axi_rdata_reg[31] [4]),
        .I5(\axi_rdata[4]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_10 
       (.I0(\data_reg[15]__0 [4]),
        .I1(\data_reg[14]__0 [4]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [4]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [4]),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F80807F)) 
    \axi_rdata[4]_i_3 
       (.I0(wr_index_reg[2]),
        .I1(wr_index_reg[1]),
        .I2(wr_index_reg[0]),
        .I3(rd_index_reg[3]),
        .I4(wr_index_reg[3]),
        .I5(\axi_rdata[4]_i_6_n_0 ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBE7DFFEBFFFF7D)) 
    \axi_rdata[4]_i_6 
       (.I0(rd_index_reg[0]),
        .I1(wr_index_reg[2]),
        .I2(rd_index_reg[2]),
        .I3(wr_index_reg[1]),
        .I4(wr_index_reg[0]),
        .I5(rd_index_reg[1]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(\data_reg[3]__0 [4]),
        .I1(\data_reg[2]__0 [4]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [4]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_8 
       (.I0(\data_reg[7]__0 [4]),
        .I1(\data_reg[6]__0 [4]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [4]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [4]),
        .O(\axi_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_9 
       (.I0(\data_reg[11]__0 [4]),
        .I1(\data_reg[10]__0 [4]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [4]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [4]),
        .O(\axi_rdata[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFCA0FCAF0CA00CA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .I4(\axi_rdata_reg[31] [5]),
        .I5(\rd_index_reg[0]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_10 
       (.I0(\data_reg[11]__0 [5]),
        .I1(\data_reg[10]__0 [5]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [5]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [5]),
        .O(\axi_rdata[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_11 
       (.I0(\data_reg[15]__0 [5]),
        .I1(\data_reg[14]__0 [5]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [5]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [5]),
        .O(\axi_rdata[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090090000)) 
    \axi_rdata[5]_i_3 
       (.I0(rd_index_reg[0]),
        .I1(wr_index_reg[0]),
        .I2(rd_index_reg[1]),
        .I3(wr_index_reg[1]),
        .I4(\axi_rdata[5]_i_6_n_0 ),
        .I5(\axi_rdata[5]_i_7_n_0 ),
        .O(\rd_index_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \axi_rdata[5]_i_6 
       (.I0(rd_index_reg[3]),
        .I1(wr_index_reg[3]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[5]_i_7 
       (.I0(rd_index_reg[2]),
        .I1(wr_index_reg[2]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_8 
       (.I0(\data_reg[3]__0 [5]),
        .I1(\data_reg[2]__0 [5]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [5]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [5]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_9 
       (.I0(\data_reg[7]__0 [5]),
        .I1(\data_reg[6]__0 [5]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [5]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [5]),
        .O(\axi_rdata[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [6]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\data_reg[3]__0 [6]),
        .I1(\data_reg[2]__0 [6]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [6]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(\data_reg[7]__0 [6]),
        .I1(\data_reg[6]__0 [6]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [6]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(\data_reg[11]__0 [6]),
        .I1(\data_reg[10]__0 [6]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [6]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_8 
       (.I0(\data_reg[15]__0 [6]),
        .I1(\data_reg[14]__0 [6]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [6]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [6]),
        .O(\axi_rdata[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [7]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\data_reg[3]__0 [7]),
        .I1(\data_reg[2]__0 [7]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [7]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(\data_reg[7]__0 [7]),
        .I1(\data_reg[6]__0 [7]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [7]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(\data_reg[11]__0 [7]),
        .I1(\data_reg[10]__0 [7]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [7]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_8 
       (.I0(\data_reg[15]__0 [7]),
        .I1(\data_reg[14]__0 [7]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [7]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [7]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [8]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\data_reg[3]__0 [8]),
        .I1(\data_reg[2]__0 [8]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [8]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(\data_reg[7]__0 [8]),
        .I1(\data_reg[6]__0 [8]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [8]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(\data_reg[11]__0 [8]),
        .I1(\data_reg[10]__0 [8]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [8]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_8 
       (.I0(\data_reg[15]__0 [8]),
        .I1(\data_reg[14]__0 [8]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [8]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [8]),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF0AC00A)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31] [9]),
        .I2(raddr[0]),
        .I3(raddr[1]),
        .I4(Q[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\data_reg[3]__0 [9]),
        .I1(\data_reg[2]__0 [9]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[1]__0 [9]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[0]__0 [9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(\data_reg[7]__0 [9]),
        .I1(\data_reg[6]__0 [9]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[5]__0 [9]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[4]__0 [9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(\data_reg[11]__0 [9]),
        .I1(\data_reg[10]__0 [9]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[9]__0 [9]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[8]__0 [9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_8 
       (.I0(\data_reg[15]__0 [9]),
        .I1(\data_reg[14]__0 [9]),
        .I2(rd_index_reg[1]),
        .I3(\data_reg[13]__0 [9]),
        .I4(rd_index_reg[0]),
        .I5(\data_reg[12]__0 [9]),
        .O(\axi_rdata[9]_i_8_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata_reg[0]_i_3_n_0 ),
        .I1(\axi_rdata_reg[0]_i_4_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata[0]_i_7_n_0 ),
        .I1(\axi_rdata[0]_i_8_n_0 ),
        .O(\axi_rdata_reg[0]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata_reg[10]_i_4_n_0 ),
        .I1(\axi_rdata_reg[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[10]_i_4 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[10]_i_5 
       (.I0(\axi_rdata[10]_i_8_n_0 ),
        .I1(\axi_rdata[10]_i_9_n_0 ),
        .O(\axi_rdata_reg[10]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata_reg[11]_i_4_n_0 ),
        .I1(\axi_rdata_reg[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[11]_i_4 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[11]_i_5 
       (.I0(\axi_rdata[11]_i_8_n_0 ),
        .I1(\axi_rdata[11]_i_9_n_0 ),
        .O(\axi_rdata_reg[11]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata_reg[12]_i_4_n_0 ),
        .I1(\axi_rdata_reg[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[12]_i_4 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[12]_i_5 
       (.I0(\axi_rdata[12]_i_8_n_0 ),
        .I1(\axi_rdata[12]_i_9_n_0 ),
        .O(\axi_rdata_reg[12]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata_reg[13]_i_4_n_0 ),
        .I1(\axi_rdata_reg[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[13]_i_4 
       (.I0(\axi_rdata[13]_i_7_n_0 ),
        .I1(\axi_rdata[13]_i_8_n_0 ),
        .O(\axi_rdata_reg[13]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[13]_i_5 
       (.I0(\axi_rdata[13]_i_9_n_0 ),
        .I1(\axi_rdata[13]_i_10_n_0 ),
        .O(\axi_rdata_reg[13]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata_reg[14]_i_3_n_0 ),
        .I1(\axi_rdata_reg[14]_i_4_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_5_n_0 ),
        .I1(\axi_rdata[14]_i_6_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[14]_i_4 
       (.I0(\axi_rdata[14]_i_7_n_0 ),
        .I1(\axi_rdata[14]_i_8_n_0 ),
        .O(\axi_rdata_reg[14]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata_reg[15]_i_3_n_0 ),
        .I1(\axi_rdata_reg[15]_i_4_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_5_n_0 ),
        .I1(\axi_rdata[15]_i_6_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[15]_i_4 
       (.I0(\axi_rdata[15]_i_7_n_0 ),
        .I1(\axi_rdata[15]_i_8_n_0 ),
        .O(\axi_rdata_reg[15]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata_reg[16]_i_3_n_0 ),
        .I1(\axi_rdata_reg[16]_i_4_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_5_n_0 ),
        .I1(\axi_rdata[16]_i_6_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[16]_i_4 
       (.I0(\axi_rdata[16]_i_7_n_0 ),
        .I1(\axi_rdata[16]_i_8_n_0 ),
        .O(\axi_rdata_reg[16]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata_reg[17]_i_3_n_0 ),
        .I1(\axi_rdata_reg[17]_i_4_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_5_n_0 ),
        .I1(\axi_rdata[17]_i_6_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[17]_i_4 
       (.I0(\axi_rdata[17]_i_7_n_0 ),
        .I1(\axi_rdata[17]_i_8_n_0 ),
        .O(\axi_rdata_reg[17]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata_reg[18]_i_3_n_0 ),
        .I1(\axi_rdata_reg[18]_i_4_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_5_n_0 ),
        .I1(\axi_rdata[18]_i_6_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[18]_i_4 
       (.I0(\axi_rdata[18]_i_7_n_0 ),
        .I1(\axi_rdata[18]_i_8_n_0 ),
        .O(\axi_rdata_reg[18]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata_reg[19]_i_3_n_0 ),
        .I1(\axi_rdata_reg[19]_i_4_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_5_n_0 ),
        .I1(\axi_rdata[19]_i_6_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[19]_i_4 
       (.I0(\axi_rdata[19]_i_7_n_0 ),
        .I1(\axi_rdata[19]_i_8_n_0 ),
        .O(\axi_rdata_reg[19]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata_reg[1]_i_3_n_0 ),
        .I1(\axi_rdata_reg[1]_i_4_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_5_n_0 ),
        .I1(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[1]_i_4 
       (.I0(\axi_rdata[1]_i_7_n_0 ),
        .I1(\axi_rdata[1]_i_8_n_0 ),
        .O(\axi_rdata_reg[1]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata_reg[20]_i_3_n_0 ),
        .I1(\axi_rdata_reg[20]_i_4_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_5_n_0 ),
        .I1(\axi_rdata[20]_i_6_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[20]_i_4 
       (.I0(\axi_rdata[20]_i_7_n_0 ),
        .I1(\axi_rdata[20]_i_8_n_0 ),
        .O(\axi_rdata_reg[20]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata_reg[21]_i_3_n_0 ),
        .I1(\axi_rdata_reg[21]_i_4_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_5_n_0 ),
        .I1(\axi_rdata[21]_i_6_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[21]_i_4 
       (.I0(\axi_rdata[21]_i_7_n_0 ),
        .I1(\axi_rdata[21]_i_8_n_0 ),
        .O(\axi_rdata_reg[21]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata_reg[22]_i_3_n_0 ),
        .I1(\axi_rdata_reg[22]_i_4_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_5_n_0 ),
        .I1(\axi_rdata[22]_i_6_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[22]_i_4 
       (.I0(\axi_rdata[22]_i_7_n_0 ),
        .I1(\axi_rdata[22]_i_8_n_0 ),
        .O(\axi_rdata_reg[22]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata_reg[23]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_i_4_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_5_n_0 ),
        .I1(\axi_rdata[23]_i_6_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[23]_i_4 
       (.I0(\axi_rdata[23]_i_7_n_0 ),
        .I1(\axi_rdata[23]_i_8_n_0 ),
        .O(\axi_rdata_reg[23]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata_reg[24]_i_3_n_0 ),
        .I1(\axi_rdata_reg[24]_i_4_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_5_n_0 ),
        .I1(\axi_rdata[24]_i_6_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[24]_i_4 
       (.I0(\axi_rdata[24]_i_7_n_0 ),
        .I1(\axi_rdata[24]_i_8_n_0 ),
        .O(\axi_rdata_reg[24]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata_reg[25]_i_3_n_0 ),
        .I1(\axi_rdata_reg[25]_i_4_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_5_n_0 ),
        .I1(\axi_rdata[25]_i_6_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[25]_i_4 
       (.I0(\axi_rdata[25]_i_7_n_0 ),
        .I1(\axi_rdata[25]_i_8_n_0 ),
        .O(\axi_rdata_reg[25]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata_reg[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_i_4_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_5_n_0 ),
        .I1(\axi_rdata[26]_i_6_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[26]_i_4 
       (.I0(\axi_rdata[26]_i_7_n_0 ),
        .I1(\axi_rdata[26]_i_8_n_0 ),
        .O(\axi_rdata_reg[26]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata_reg[27]_i_3_n_0 ),
        .I1(\axi_rdata_reg[27]_i_4_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_5_n_0 ),
        .I1(\axi_rdata[27]_i_6_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[27]_i_4 
       (.I0(\axi_rdata[27]_i_7_n_0 ),
        .I1(\axi_rdata[27]_i_8_n_0 ),
        .O(\axi_rdata_reg[27]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata_reg[28]_i_3_n_0 ),
        .I1(\axi_rdata_reg[28]_i_4_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_5_n_0 ),
        .I1(\axi_rdata[28]_i_6_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[28]_i_4 
       (.I0(\axi_rdata[28]_i_7_n_0 ),
        .I1(\axi_rdata[28]_i_8_n_0 ),
        .O(\axi_rdata_reg[28]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata_reg[29]_i_3_n_0 ),
        .I1(\axi_rdata_reg[29]_i_4_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_5_n_0 ),
        .I1(\axi_rdata[29]_i_6_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[29]_i_4 
       (.I0(\axi_rdata[29]_i_7_n_0 ),
        .I1(\axi_rdata[29]_i_8_n_0 ),
        .O(\axi_rdata_reg[29]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata_reg[2]_i_3_n_0 ),
        .I1(\axi_rdata_reg[2]_i_4_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_5_n_0 ),
        .I1(\axi_rdata[2]_i_6_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[2]_i_4 
       (.I0(\axi_rdata[2]_i_7_n_0 ),
        .I1(\axi_rdata[2]_i_8_n_0 ),
        .O(\axi_rdata_reg[2]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata_reg[30]_i_3_n_0 ),
        .I1(\axi_rdata_reg[30]_i_4_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\axi_rdata[30]_i_6_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[30]_i_4 
       (.I0(\axi_rdata[30]_i_7_n_0 ),
        .I1(\axi_rdata[30]_i_8_n_0 ),
        .O(\axi_rdata_reg[30]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata_reg[31]_i_4_n_0 ),
        .I1(\axi_rdata_reg[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[31]_i_5 
       (.I0(\axi_rdata[31]_i_8_n_0 ),
        .I1(\axi_rdata[31]_i_9_n_0 ),
        .O(\axi_rdata_reg[31]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata_reg[3]_i_3_n_0 ),
        .I1(\axi_rdata_reg[3]_i_4_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_5_n_0 ),
        .I1(\axi_rdata[3]_i_6_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[3]_i_4 
       (.I0(\axi_rdata[3]_i_7_n_0 ),
        .I1(\axi_rdata[3]_i_8_n_0 ),
        .O(\axi_rdata_reg[3]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata_reg[4]_i_4_n_0 ),
        .I1(\axi_rdata_reg[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[4]_i_4 
       (.I0(\axi_rdata[4]_i_7_n_0 ),
        .I1(\axi_rdata[4]_i_8_n_0 ),
        .O(\axi_rdata_reg[4]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[4]_i_5 
       (.I0(\axi_rdata[4]_i_9_n_0 ),
        .I1(\axi_rdata[4]_i_10_n_0 ),
        .O(\axi_rdata_reg[4]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata_reg[5]_i_4_n_0 ),
        .I1(\axi_rdata_reg[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[5]_i_4 
       (.I0(\axi_rdata[5]_i_8_n_0 ),
        .I1(\axi_rdata[5]_i_9_n_0 ),
        .O(\axi_rdata_reg[5]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[5]_i_5 
       (.I0(\axi_rdata[5]_i_10_n_0 ),
        .I1(\axi_rdata[5]_i_11_n_0 ),
        .O(\axi_rdata_reg[5]_i_5_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata_reg[6]_i_3_n_0 ),
        .I1(\axi_rdata_reg[6]_i_4_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_5_n_0 ),
        .I1(\axi_rdata[6]_i_6_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata[6]_i_7_n_0 ),
        .I1(\axi_rdata[6]_i_8_n_0 ),
        .O(\axi_rdata_reg[6]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata_reg[7]_i_3_n_0 ),
        .I1(\axi_rdata_reg[7]_i_4_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_5_n_0 ),
        .I1(\axi_rdata[7]_i_6_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[7]_i_4 
       (.I0(\axi_rdata[7]_i_7_n_0 ),
        .I1(\axi_rdata[7]_i_8_n_0 ),
        .O(\axi_rdata_reg[7]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata_reg[8]_i_3_n_0 ),
        .I1(\axi_rdata_reg[8]_i_4_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_5_n_0 ),
        .I1(\axi_rdata[8]_i_6_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[8]_i_4 
       (.I0(\axi_rdata[8]_i_7_n_0 ),
        .I1(\axi_rdata[8]_i_8_n_0 ),
        .O(\axi_rdata_reg[8]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  MUXF8 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata_reg[9]_i_3_n_0 ),
        .I1(\axi_rdata_reg[9]_i_4_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(rd_index_reg[3]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_5_n_0 ),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(rd_index_reg[2]));
  MUXF7 \axi_rdata_reg[9]_i_4 
       (.I0(\axi_rdata[9]_i_7_n_0 ),
        .I1(\axi_rdata[9]_i_8_n_0 ),
        .O(\axi_rdata_reg[9]_i_4_n_0 ),
        .S(rd_index_reg[2]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[0][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(data));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data[0][31]_i_3 
       (.I0(\axi_rdata[4]_i_3_n_0 ),
        .I1(overflow_reg_n_0),
        .I2(wr_out),
        .O(\data[0][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \data[10][31]_i_1 
       (.I0(\data[0][31]_i_3_n_0 ),
        .I1(wr_index_reg[1]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[3]),
        .I4(wr_index_reg[2]),
        .O(\data[10][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \data[11][31]_i_1 
       (.I0(wr_index_reg[0]),
        .I1(wr_index_reg[1]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[3]),
        .I4(wr_index_reg[2]),
        .O(\data[11][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \data[12][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(\data[12][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \data[13][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[0]),
        .I4(wr_index_reg[1]),
        .O(\data[13][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \data[14][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[1]),
        .I4(wr_index_reg[0]),
        .O(\data[14][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \data[15][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(\data[15][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \data[1][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[0]),
        .I4(wr_index_reg[1]),
        .O(\data[1][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \data[2][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[1]),
        .I4(wr_index_reg[0]),
        .O(\data[2][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \data[3][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(\data[3][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \data[4][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(\data[4][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \data[5][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[0]),
        .I4(wr_index_reg[1]),
        .O(\data[5][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \data[6][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[1]),
        .I4(wr_index_reg[0]),
        .O(\data[6][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \data[7][31]_i_1 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[2]),
        .I2(wr_index_reg[0]),
        .I3(wr_index_reg[1]),
        .I4(\data[0][31]_i_3_n_0 ),
        .O(\data[7][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \data[8][31]_i_1 
       (.I0(wr_index_reg[0]),
        .I1(wr_index_reg[1]),
        .I2(\data[0][31]_i_3_n_0 ),
        .I3(wr_index_reg[3]),
        .I4(wr_index_reg[2]),
        .O(\data[8][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \data[9][31]_i_1 
       (.I0(\data[0][31]_i_3_n_0 ),
        .I1(wr_index_reg[0]),
        .I2(wr_index_reg[1]),
        .I3(wr_index_reg[3]),
        .I4(wr_index_reg[2]),
        .O(\data[9][31]_i_1_n_0 ));
  FDRE \data_reg[0][0] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[0]__0 [0]),
        .R(SR));
  FDRE \data_reg[0][10] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[0]__0 [10]),
        .R(SR));
  FDRE \data_reg[0][11] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[0]__0 [11]),
        .R(SR));
  FDRE \data_reg[0][12] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[0]__0 [12]),
        .R(SR));
  FDRE \data_reg[0][13] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[0]__0 [13]),
        .R(SR));
  FDRE \data_reg[0][14] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[0]__0 [14]),
        .R(SR));
  FDRE \data_reg[0][15] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[0]__0 [15]),
        .R(SR));
  FDRE \data_reg[0][16] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[0]__0 [16]),
        .R(SR));
  FDRE \data_reg[0][17] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[0]__0 [17]),
        .R(SR));
  FDRE \data_reg[0][18] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[0]__0 [18]),
        .R(SR));
  FDRE \data_reg[0][19] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[0]__0 [19]),
        .R(SR));
  FDRE \data_reg[0][1] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[0]__0 [1]),
        .R(SR));
  FDRE \data_reg[0][20] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[0]__0 [20]),
        .R(SR));
  FDRE \data_reg[0][21] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[0]__0 [21]),
        .R(SR));
  FDRE \data_reg[0][22] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[0]__0 [22]),
        .R(SR));
  FDRE \data_reg[0][23] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[0]__0 [23]),
        .R(SR));
  FDRE \data_reg[0][24] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[0]__0 [24]),
        .R(SR));
  FDRE \data_reg[0][25] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[0]__0 [25]),
        .R(SR));
  FDRE \data_reg[0][26] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[0]__0 [26]),
        .R(SR));
  FDRE \data_reg[0][27] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[0]__0 [27]),
        .R(SR));
  FDRE \data_reg[0][28] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[0]__0 [28]),
        .R(SR));
  FDRE \data_reg[0][29] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[0]__0 [29]),
        .R(SR));
  FDRE \data_reg[0][2] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[0]__0 [2]),
        .R(SR));
  FDRE \data_reg[0][30] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[0]__0 [30]),
        .R(SR));
  FDRE \data_reg[0][31] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[0]__0 [31]),
        .R(SR));
  FDRE \data_reg[0][3] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[0]__0 [3]),
        .R(SR));
  FDRE \data_reg[0][4] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[0]__0 [4]),
        .R(SR));
  FDRE \data_reg[0][5] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[0]__0 [5]),
        .R(SR));
  FDRE \data_reg[0][6] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[0]__0 [6]),
        .R(SR));
  FDRE \data_reg[0][7] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[0]__0 [7]),
        .R(SR));
  FDRE \data_reg[0][8] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[0]__0 [8]),
        .R(SR));
  FDRE \data_reg[0][9] 
       (.C(axi_interface_spi_aclk),
        .CE(data),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[0]__0 [9]),
        .R(SR));
  FDRE \data_reg[10][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[10][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[10]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[10][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[10]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[10][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[10]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[10][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[10]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[10][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[10]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[10][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[10]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[10][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[10]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[10][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[10]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[10][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[10]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[10][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[10]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[10][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[10]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[10][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[10]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[10][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[10]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[10][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[10]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[10][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[10]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[10][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[10]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[10][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[10]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[10][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[10]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[10][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[10]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[10][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[10]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[10][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[10]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[10][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[10]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[10][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[10]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[10][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[10]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[10][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[10]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[10][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[10]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[10][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[10]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[10][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[10]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[10][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[10]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[10][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[10]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[10][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[10][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[10]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[11][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[11]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[11][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[11]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[11][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[11]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[11][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[11]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[11][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[11]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[11][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[11]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[11][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[11]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[11][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[11]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[11][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[11]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[11][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[11]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[11][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[11]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[11][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[11]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[11][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[11]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[11][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[11]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[11][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[11]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[11][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[11]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[11][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[11]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[11][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[11]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[11][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[11]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[11][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[11]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[11][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[11]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[11][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[11]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[11][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[11]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[11][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[11]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[11][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[11]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[11][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[11]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[11][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[11]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[11][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[11]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[11][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[11]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[11][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[11]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[11][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[11]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[11][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[11][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[11]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[12][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[12]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[12][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[12]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[12][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[12]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[12][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[12]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[12][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[12]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[12][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[12]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[12][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[12]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[12][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[12]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[12][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[12]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[12][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[12]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[12][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[12]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[12][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[12]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[12][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[12]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[12][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[12]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[12][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[12]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[12][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[12]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[12][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[12]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[12][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[12]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[12][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[12]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[12][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[12]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[12][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[12]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[12][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[12]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[12][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[12]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[12][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[12]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[12][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[12]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[12][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[12]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[12][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[12]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[12][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[12]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[12][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[12]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[12][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[12]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[12][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[12]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[12][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[12][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[12]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[13][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[13]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[13][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[13]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[13][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[13]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[13][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[13]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[13][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[13]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[13][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[13]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[13][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[13]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[13][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[13]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[13][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[13]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[13][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[13]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[13][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[13]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[13][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[13]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[13][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[13]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[13][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[13]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[13][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[13]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[13][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[13]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[13][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[13]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[13][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[13]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[13][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[13]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[13][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[13]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[13][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[13]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[13][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[13]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[13][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[13]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[13][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[13]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[13][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[13]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[13][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[13]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[13][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[13]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[13][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[13]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[13][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[13]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[13][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[13]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[13][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[13]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[13][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[13][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[13]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[14][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[14]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[14][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[14]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[14][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[14]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[14][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[14]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[14][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[14]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[14][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[14]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[14][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[14]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[14][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[14]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[14][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[14]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[14][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[14]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[14][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[14]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[14][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[14]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[14][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[14]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[14][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[14]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[14][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[14]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[14][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[14]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[14][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[14]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[14][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[14]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[14][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[14]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[14][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[14]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[14][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[14]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[14][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[14]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[14][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[14]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[14][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[14]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[14][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[14]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[14][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[14]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[14][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[14]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[14][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[14]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[14][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[14]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[14][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[14]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[14][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[14]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[14][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[14][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[14]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[15][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[15]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[15][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[15]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[15][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[15]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[15][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[15]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[15][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[15]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[15][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[15]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[15][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[15]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[15][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[15]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[15][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[15]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[15][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[15]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[15][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[15]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[15][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[15]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[15][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[15]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[15][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[15]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[15][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[15]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[15][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[15]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[15][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[15]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[15][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[15]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[15][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[15]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[15][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[15]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[15][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[15]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[15][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[15]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[15][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[15]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[15][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[15]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[15][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[15]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[15][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[15]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[15][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[15]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[15][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[15]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[15][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[15]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[15][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[15]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[15][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[15]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[15][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[15][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[15]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[1][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[1][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[1]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[1][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[1]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[1][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[1]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[1][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[1]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[1][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[1]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[1][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[1]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[1][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[1]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[1][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[1]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[1][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[1]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[1][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[1]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[1][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[1]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[1][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[1]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[1][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[1]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[1][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[1]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[1][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[1]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[1][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[1]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[1][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[1]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[1][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[1]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[1][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[1]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[1][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[1]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[1][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[1]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[1][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[1]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[1][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[1]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[1][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[1]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[1][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[1]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[1][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[1]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[1][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[1]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[1][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[1]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[1][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[1]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[1][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[1]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[1][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[1][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[1]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[2][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[2][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[2]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[2][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[2]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[2][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[2]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[2][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[2]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[2][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[2]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[2][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[2]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[2][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[2]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[2][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[2]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[2][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[2]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[2][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[2]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[2][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[2]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[2][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[2]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[2][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[2]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[2][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[2]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[2][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[2]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[2][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[2]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[2][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[2]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[2][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[2]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[2][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[2]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[2][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[2]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[2][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[2]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[2][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[2]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[2][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[2]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[2][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[2]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[2][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[2]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[2][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[2]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[2][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[2]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[2][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[2]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[2][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[2]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[2][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[2]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[2][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[2][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[2]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[3][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[3][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[3]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[3][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[3]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[3][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[3]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[3][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[3]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[3][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[3]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[3][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[3]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[3][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[3]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[3][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[3]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[3][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[3]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[3][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[3]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[3][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[3]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[3][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[3]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[3][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[3]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[3][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[3]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[3][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[3]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[3][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[3]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[3][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[3]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[3][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[3]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[3][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[3]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[3][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[3]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[3][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[3]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[3][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[3]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[3][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[3]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[3][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[3]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[3][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[3]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[3][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[3]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[3][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[3]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[3][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[3]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[3][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[3]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[3][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[3]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[3][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[3][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[3]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[4][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[4][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[4]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[4][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[4]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[4][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[4]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[4][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[4]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[4][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[4]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[4][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[4]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[4][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[4]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[4][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[4]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[4][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[4]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[4][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[4]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[4][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[4]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[4][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[4]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[4][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[4]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[4][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[4]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[4][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[4]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[4][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[4]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[4][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[4]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[4][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[4]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[4][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[4]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[4][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[4]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[4][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[4]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[4][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[4]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[4][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[4]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[4][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[4]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[4][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[4]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[4][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[4]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[4][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[4]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[4][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[4]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[4][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[4]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[4][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[4]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[4][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[4][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[4]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[5][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[5][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[5]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[5][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[5]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[5][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[5]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[5][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[5]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[5][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[5]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[5][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[5]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[5][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[5]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[5][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[5]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[5][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[5]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[5][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[5]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[5][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[5]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[5][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[5]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[5][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[5]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[5][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[5]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[5][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[5]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[5][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[5]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[5][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[5]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[5][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[5]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[5][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[5]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[5][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[5]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[5][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[5]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[5][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[5]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[5][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[5]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[5][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[5]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[5][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[5]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[5][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[5]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[5][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[5]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[5][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[5]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[5][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[5]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[5][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[5]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[5][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[5][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[5]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[6][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[6][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[6]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[6][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[6]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[6][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[6]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[6][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[6]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[6][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[6]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[6][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[6]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[6][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[6]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[6][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[6]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[6][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[6]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[6][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[6]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[6][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[6]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[6][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[6]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[6][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[6]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[6][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[6]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[6][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[6]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[6][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[6]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[6][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[6]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[6][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[6]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[6][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[6]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[6][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[6]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[6][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[6]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[6][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[6]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[6][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[6]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[6][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[6]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[6][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[6]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[6][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[6]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[6][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[6]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[6][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[6]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[6][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[6]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[6][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[6]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[6][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[6][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[6]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[7][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[7][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[7]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[7][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[7]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[7][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[7]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[7][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[7]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[7][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[7]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[7][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[7]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[7][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[7]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[7][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[7]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[7][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[7]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[7][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[7]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[7][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[7]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[7][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[7]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[7][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[7]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[7][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[7]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[7][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[7]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[7][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[7]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[7][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[7]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[7][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[7]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[7][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[7]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[7][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[7]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[7][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[7]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[7][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[7]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[7][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[7]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[7][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[7]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[7][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[7]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[7][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[7]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[7][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[7]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[7][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[7]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[7][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[7]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[7][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[7]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[7][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[7][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[7]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[8][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[8][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[8]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[8][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[8]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[8][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[8]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[8][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[8]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[8][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[8]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[8][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[8]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[8][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[8]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[8][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[8]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[8][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[8]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[8][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[8]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[8][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[8]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[8][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[8]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[8][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[8]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[8][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[8]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[8][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[8]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[8][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[8]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[8][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[8]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[8][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[8]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[8][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[8]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[8][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[8]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[8][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[8]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[8][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[8]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[8][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[8]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[8][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[8]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[8][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[8]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[8][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[8]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[8][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[8]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[8][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[8]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[8][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[8]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[8][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[8]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[8][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[8][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[8]__0 [9]),
        .R(1'b0));
  FDRE \data_reg[9][0] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [0]),
        .Q(\data_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \data_reg[9][10] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [10]),
        .Q(\data_reg[9]__0 [10]),
        .R(1'b0));
  FDRE \data_reg[9][11] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [11]),
        .Q(\data_reg[9]__0 [11]),
        .R(1'b0));
  FDRE \data_reg[9][12] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [12]),
        .Q(\data_reg[9]__0 [12]),
        .R(1'b0));
  FDRE \data_reg[9][13] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [13]),
        .Q(\data_reg[9]__0 [13]),
        .R(1'b0));
  FDRE \data_reg[9][14] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [14]),
        .Q(\data_reg[9]__0 [14]),
        .R(1'b0));
  FDRE \data_reg[9][15] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [15]),
        .Q(\data_reg[9]__0 [15]),
        .R(1'b0));
  FDRE \data_reg[9][16] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [16]),
        .Q(\data_reg[9]__0 [16]),
        .R(1'b0));
  FDRE \data_reg[9][17] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [17]),
        .Q(\data_reg[9]__0 [17]),
        .R(1'b0));
  FDRE \data_reg[9][18] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [18]),
        .Q(\data_reg[9]__0 [18]),
        .R(1'b0));
  FDRE \data_reg[9][19] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [19]),
        .Q(\data_reg[9]__0 [19]),
        .R(1'b0));
  FDRE \data_reg[9][1] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [1]),
        .Q(\data_reg[9]__0 [1]),
        .R(1'b0));
  FDRE \data_reg[9][20] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [20]),
        .Q(\data_reg[9]__0 [20]),
        .R(1'b0));
  FDRE \data_reg[9][21] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [21]),
        .Q(\data_reg[9]__0 [21]),
        .R(1'b0));
  FDRE \data_reg[9][22] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [22]),
        .Q(\data_reg[9]__0 [22]),
        .R(1'b0));
  FDRE \data_reg[9][23] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [23]),
        .Q(\data_reg[9]__0 [23]),
        .R(1'b0));
  FDRE \data_reg[9][24] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [24]),
        .Q(\data_reg[9]__0 [24]),
        .R(1'b0));
  FDRE \data_reg[9][25] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [25]),
        .Q(\data_reg[9]__0 [25]),
        .R(1'b0));
  FDRE \data_reg[9][26] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [26]),
        .Q(\data_reg[9]__0 [26]),
        .R(1'b0));
  FDRE \data_reg[9][27] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [27]),
        .Q(\data_reg[9]__0 [27]),
        .R(1'b0));
  FDRE \data_reg[9][28] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [28]),
        .Q(\data_reg[9]__0 [28]),
        .R(1'b0));
  FDRE \data_reg[9][29] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [29]),
        .Q(\data_reg[9]__0 [29]),
        .R(1'b0));
  FDRE \data_reg[9][2] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [2]),
        .Q(\data_reg[9]__0 [2]),
        .R(1'b0));
  FDRE \data_reg[9][30] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [30]),
        .Q(\data_reg[9]__0 [30]),
        .R(1'b0));
  FDRE \data_reg[9][31] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [31]),
        .Q(\data_reg[9]__0 [31]),
        .R(1'b0));
  FDRE \data_reg[9][3] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [3]),
        .Q(\data_reg[9]__0 [3]),
        .R(1'b0));
  FDRE \data_reg[9][4] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [4]),
        .Q(\data_reg[9]__0 [4]),
        .R(1'b0));
  FDRE \data_reg[9][5] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [5]),
        .Q(\data_reg[9]__0 [5]),
        .R(1'b0));
  FDRE \data_reg[9][6] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [6]),
        .Q(\data_reg[9]__0 [6]),
        .R(1'b0));
  FDRE \data_reg[9][7] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [7]),
        .Q(\data_reg[9]__0 [7]),
        .R(1'b0));
  FDRE \data_reg[9][8] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [8]),
        .Q(\data_reg[9]__0 [8]),
        .R(1'b0));
  FDRE \data_reg[9][9] 
       (.C(axi_interface_spi_aclk),
        .CE(\data[9][31]_i_1_n_0 ),
        .D(\data_reg[15][31]_0 [9]),
        .Q(\data_reg[9]__0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    overflow_i_1
       (.I0(overflow_reg_n_0),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .I2(wr_out),
        .I3(clr_out),
        .O(overflow_i_1_n_0));
  FDRE overflow_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(overflow_i_1_n_0),
        .Q(overflow_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(rd_index_reg[0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(rd_index_reg[1]),
        .I1(rd_index_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_index[2]_i_1 
       (.I0(rd_index_reg[2]),
        .I1(rd_index_reg[0]),
        .I2(rd_index_reg[1]),
        .O(\rd_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_index[3]_i_2 
       (.I0(rd_index_reg[3]),
        .I1(rd_index_reg[1]),
        .I2(rd_index_reg[0]),
        .I3(rd_index_reg[2]),
        .O(p_0_in__0[3]));
  FDRE \rd_index_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(rd_index_reg[0]),
        .R(SR));
  FDRE \rd_index_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(rd_index_reg[1]),
        .R(SR));
  FDRE \rd_index_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .D(\rd_index[2]_i_1_n_0 ),
        .Q(rd_index_reg[2]),
        .R(SR));
  FDRE \rd_index_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(rd_index_reg[3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(wr_index_reg[0]),
        .O(\wr_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(wr_index_reg[0]),
        .I1(wr_index_reg[1]),
        .O(\wr_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_index[2]_i_1 
       (.I0(wr_index_reg[2]),
        .I1(wr_index_reg[1]),
        .I2(wr_index_reg[0]),
        .O(\wr_index[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[3]_i_1 
       (.I0(\data[0][31]_i_3_n_0 ),
        .O(wr_index0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_index[3]_i_2 
       (.I0(wr_index_reg[3]),
        .I1(wr_index_reg[0]),
        .I2(wr_index_reg[1]),
        .I3(wr_index_reg[2]),
        .O(\wr_index[3]_i_2_n_0 ));
  FDRE \wr_index_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(wr_index0),
        .D(\wr_index[0]_i_1_n_0 ),
        .Q(wr_index_reg[0]),
        .R(SR));
  FDRE \wr_index_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(wr_index0),
        .D(\wr_index[1]_i_1_n_0 ),
        .Q(wr_index_reg[1]),
        .R(SR));
  FDRE \wr_index_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(wr_index0),
        .D(\wr_index[2]_i_1_n_0 ),
        .Q(wr_index_reg[2]),
        .R(SR));
  FDRE \wr_index_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(wr_index0),
        .D(\wr_index[3]_i_2_n_0 ),
        .Q(wr_index_reg[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "fifo_fixed" *) 
module system_My_SPI_0_4_fifo_fixed
   (last_in,
    fifo_wr_req,
    \waddr_reg[2] ,
    D,
    \rd_index_reg[0] ,
    \wr_index_reg[1] ,
    fifo_rd_req,
    axi_interface_spi_aclk,
    out_reg,
    SR,
    raddr,
    p_0_in_0,
    axi_interface_spi_awvalid,
    axi_interface_spi_wvalid,
    out_reg_0,
    out_reg_1,
    Q,
    \axi_rdata_reg[31] ,
    auto,
    \data_reg[15][31] ,
    last_in_reg,
    clr_overflow_req);
  output last_in;
  output fifo_wr_req;
  output \waddr_reg[2] ;
  output [31:0]D;
  output \rd_index_reg[0] ;
  output \wr_index_reg[1] ;
  input fifo_rd_req;
  input axi_interface_spi_aclk;
  input out_reg;
  input [0:0]SR;
  input [1:0]raddr;
  input [2:0]p_0_in_0;
  input axi_interface_spi_awvalid;
  input axi_interface_spi_wvalid;
  input out_reg_0;
  input out_reg_1;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31] ;
  input auto;
  input [31:0]\data_reg[15][31] ;
  input last_in_reg;
  input clr_overflow_req;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire auto;
  wire axi_interface_spi_aclk;
  wire axi_interface_spi_awvalid;
  wire axi_interface_spi_wvalid;
  wire [31:0]\axi_rdata_reg[31] ;
  wire clr_out;
  wire clr_overflow_req;
  wire [31:0]\data_reg[15][31] ;
  wire fifo_rd_req;
  wire fifo_wr_req;
  wire last_in;
  wire last_in_reg;
  wire out_reg;
  wire out_reg_0;
  wire out_reg_1;
  wire [2:0]p_0_in_0;
  wire [1:0]raddr;
  wire rd_index0;
  wire \rd_index_reg[0] ;
  wire \waddr_reg[2] ;
  wire \wr_index_reg[1] ;
  wire wr_out;

  system_My_SPI_0_4_fifo15x32 a_fifo
       (.D(D),
        .E(rd_index0),
        .Q(Q),
        .SR(SR),
        .auto(auto),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .\axi_rdata_reg[31] (\axi_rdata_reg[31] ),
        .clr_out(clr_out),
        .\data_reg[15][31]_0 (\data_reg[15][31] ),
        .raddr(raddr),
        .\rd_index_reg[0]_0 (\rd_index_reg[0] ),
        .\wr_index_reg[1]_0 (\wr_index_reg[1] ),
        .wr_out(wr_out));
  system_My_SPI_0_4_edge_detector clr_det
       (.axi_interface_spi_aclk(axi_interface_spi_aclk),
        .clr_out(clr_out),
        .clr_overflow_req(clr_overflow_req),
        .last_in_reg_0(last_in_reg));
  system_My_SPI_0_4_edge_detector_0 rd_det
       (.E(rd_index0),
        .axi_interface_spi_aclk(axi_interface_spi_aclk),
        .fifo_rd_req(fifo_rd_req),
        .last_in(last_in),
        .out_reg_0(out_reg),
        .\rd_index_reg[3] (\rd_index_reg[0] ));
  system_My_SPI_0_4_edge_detector_1 wr_det
       (.axi_interface_spi_aclk(axi_interface_spi_aclk),
        .axi_interface_spi_awvalid(axi_interface_spi_awvalid),
        .axi_interface_spi_wvalid(axi_interface_spi_wvalid),
        .fifo_wr_req(fifo_wr_req),
        .out_reg_0(out_reg_0),
        .out_reg_1(out_reg_1),
        .p_0_in_0(p_0_in_0),
        .\waddr_reg[2] (\waddr_reg[2] ),
        .wr_out(wr_out));
endmodule

(* ORIG_REF_NAME = "spi_fsm" *) 
module system_My_SPI_0_4_spi_fsm
   (SR,
    auto,
    fifo_rd_req,
    datum,
    clk_go,
    cs,
    rd_req_flag_reg_0,
    baud_clk,
    axi_interface_spi_aclk,
    Q,
    rd_req_flag_reg_1,
    axi_interface_spi_aresetn,
    last_in,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    brd_output,
    baud_clk_0,
    E,
    \data_reg_reg[31]_0 );
  output [0:0]SR;
  output auto;
  output fifo_rd_req;
  output datum;
  output clk_go;
  output [3:0]cs;
  output rd_req_flag_reg_0;
  output baud_clk;
  input axi_interface_spi_aclk;
  input [23:0]Q;
  input rd_req_flag_reg_1;
  input axi_interface_spi_aresetn;
  input last_in;
  input \FSM_sequential_state_reg[0]_0 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input brd_output;
  input baud_clk_0;
  input [0:0]E;
  input [31:0]\data_reg_reg[31]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [23:0]Q;
  wire [0:0]SR;
  wire auto;
  wire auto_i_1_n_0;
  wire axi_interface_spi_aclk;
  wire axi_interface_spi_aresetn;
  wire baud_clk;
  wire baud_clk_0;
  wire [4:0]bit_idx;
  wire \bit_idx[0]_C_i_1_n_0 ;
  wire \bit_idx[1]_C_i_1_n_0 ;
  wire \bit_idx[2]_C_i_1_n_0 ;
  wire \bit_idx[2]_P_i_2_n_0 ;
  wire \bit_idx[2]_P_i_3_n_0 ;
  wire \bit_idx[2]_P_i_4_n_0 ;
  wire \bit_idx[3]_C_i_1_n_0 ;
  wire \bit_idx[4]_C_i_1_n_0 ;
  wire \bit_idx[4]_P_i_1_n_0 ;
  wire \bit_idx[4]_P_i_3_n_0 ;
  wire \bit_idx[4]_P_i_4_n_0 ;
  wire \bit_idx_reg[0]_C_n_0 ;
  wire \bit_idx_reg[0]_LDC_i_1_n_0 ;
  wire \bit_idx_reg[0]_LDC_i_2_n_0 ;
  wire \bit_idx_reg[0]_LDC_n_0 ;
  wire \bit_idx_reg[0]_P_n_0 ;
  wire \bit_idx_reg[1]_C_n_0 ;
  wire \bit_idx_reg[1]_LDC_i_1_n_0 ;
  wire \bit_idx_reg[1]_LDC_i_2_n_0 ;
  wire \bit_idx_reg[1]_LDC_n_0 ;
  wire \bit_idx_reg[1]_P_n_0 ;
  wire \bit_idx_reg[2]_C_n_0 ;
  wire \bit_idx_reg[2]_LDC_i_1_n_0 ;
  wire \bit_idx_reg[2]_LDC_i_2_n_0 ;
  wire \bit_idx_reg[2]_LDC_n_0 ;
  wire \bit_idx_reg[2]_P_n_0 ;
  wire \bit_idx_reg[3]_C_n_0 ;
  wire \bit_idx_reg[3]_LDC_i_1_n_0 ;
  wire \bit_idx_reg[3]_LDC_i_2_n_0 ;
  wire \bit_idx_reg[3]_LDC_n_0 ;
  wire \bit_idx_reg[3]_P_n_0 ;
  wire \bit_idx_reg[4]_C_n_0 ;
  wire \bit_idx_reg[4]_LDC_i_1_n_0 ;
  wire \bit_idx_reg[4]_LDC_i_2_n_0 ;
  wire \bit_idx_reg[4]_LDC_n_0 ;
  wire \bit_idx_reg[4]_P_n_0 ;
  wire brd_output;
  wire clk_go;
  wire clk_go_i_1_n_0;
  wire clk_go_i_2_n_0;
  wire cpha;
  wire cpha_i_1_n_0;
  wire cpol;
  wire cpol_i_1_n_0;
  wire [3:0]cs;
  wire \cs[0]_C_i_1_n_0 ;
  wire \cs[1]_C_i_1_n_0 ;
  wire \cs[2]_C_i_1_n_0 ;
  wire \cs[3]_C_i_1_n_0 ;
  wire \cs[3]_C_i_2_n_0 ;
  wire \cs_auto_out[0]_i_1_n_0 ;
  wire \cs_auto_out[1]_i_1_n_0 ;
  wire \cs_auto_out[2]_i_1_n_0 ;
  wire \cs_auto_out[3]_i_1_n_0 ;
  wire \cs_auto_out[3]_i_2_n_0 ;
  wire \cs_auto_out_reg_n_0_[0] ;
  wire \cs_auto_out_reg_n_0_[1] ;
  wire \cs_auto_out_reg_n_0_[2] ;
  wire \cs_auto_reg_n_0_[0] ;
  wire \cs_auto_reg_n_0_[1] ;
  wire \cs_auto_reg_n_0_[2] ;
  wire \cs_auto_reg_n_0_[3] ;
  wire \cs_manual_r_reg_n_0_[0] ;
  wire \cs_manual_r_reg_n_0_[1] ;
  wire \cs_manual_r_reg_n_0_[2] ;
  wire \cs_reg[0]_C_n_0 ;
  wire \cs_reg[0]_LDC_i_1_n_0 ;
  wire \cs_reg[0]_LDC_i_2_n_0 ;
  wire \cs_reg[0]_LDC_n_0 ;
  wire \cs_reg[0]_P_n_0 ;
  wire \cs_reg[1]_C_n_0 ;
  wire \cs_reg[1]_LDC_i_1_n_0 ;
  wire \cs_reg[1]_LDC_i_2_n_0 ;
  wire \cs_reg[1]_LDC_n_0 ;
  wire \cs_reg[1]_P_n_0 ;
  wire \cs_reg[2]_C_n_0 ;
  wire \cs_reg[2]_LDC_i_1_n_0 ;
  wire \cs_reg[2]_LDC_i_2_n_0 ;
  wire \cs_reg[2]_LDC_n_0 ;
  wire \cs_reg[2]_P_n_0 ;
  wire \cs_reg[3]_C_n_0 ;
  wire \cs_reg[3]_LDC_i_1_n_0 ;
  wire \cs_reg[3]_LDC_i_2_n_0 ;
  wire \cs_reg[3]_LDC_n_0 ;
  wire \cs_reg[3]_P_n_0 ;
  wire [1:0]cs_select_r;
  wire [31:0]data_reg;
  wire [31:0]\data_reg_reg[31]_0 ;
  wire datum;
  wire datum4_out;
  wire datum_i_10_n_0;
  wire datum_i_11_n_0;
  wire datum_i_12_n_0;
  wire datum_i_13_n_0;
  wire datum_i_14_n_0;
  wire datum_i_15_n_0;
  wire datum_i_1_n_0;
  wire datum_i_3_n_0;
  wire datum_i_4_n_0;
  wire datum_i_5_n_0;
  wire datum_i_6_n_0;
  wire datum_i_8_n_0;
  wire datum_i_9_n_0;
  wire fifo_rd_req;
  wire last_in;
  wire p_1_in;
  wire p_2_in;
  wire rd_req_flag_i_1_n_0;
  wire rd_req_flag_i_2_n_0;
  wire rd_req_flag_reg_0;
  wire rd_req_flag_reg_1;
  wire spi_clk;
  wire [2:0]state;
  wire [2:0]state__0;

  LUT6 #(
    .INIT(64'hBABABABB8A8A8A88)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00005FCF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(auto),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hBABABABB8A8A8A88)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555555F7)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_11_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h00008000FFFFFFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[2]_i_15_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_11_n_0 ),
        .I3(\FSM_sequential_state[2]_i_13_n_0 ),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .I5(state[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4054555500004054)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state[1]_i_9_n_0 ),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\bit_idx[2]_P_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB0BF)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(state[2]),
        .I1(auto),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(Q[0]),
        .I1(\bit_idx[2]_P_i_4_n_0 ),
        .I2(\bit_idx_reg[4]_P_n_0 ),
        .I3(\bit_idx_reg[4]_LDC_n_0 ),
        .I4(\bit_idx_reg[4]_C_n_0 ),
        .I5(Q[4]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(Q[3]),
        .I1(\bit_idx_reg[3]_C_n_0 ),
        .I2(\bit_idx_reg[3]_LDC_n_0 ),
        .I3(\bit_idx_reg[3]_P_n_0 ),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(\bit_idx_reg[0]_C_n_0 ),
        .I1(\bit_idx_reg[0]_LDC_n_0 ),
        .I2(\bit_idx_reg[0]_P_n_0 ),
        .I3(Q[0]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBABA8A8ABABB8A8A)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D0D0DD00D000D0)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\bit_idx[2]_P_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bit_idx[2]_P_i_3_n_0 ),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(Q[0]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\bit_idx_reg[4]_P_n_0 ),
        .I1(\bit_idx_reg[4]_LDC_n_0 ),
        .I2(\bit_idx_reg[4]_C_n_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\bit_idx[4]_P_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAD)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(state[1]),
        .I1(auto),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD0DDD0D0D0DDDDDD)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(\bit_idx[2]_P_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\bit_idx_reg[2]_P_n_0 ),
        .I4(\bit_idx_reg[2]_LDC_n_0 ),
        .I5(\bit_idx_reg[2]_C_n_0 ),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB00B0000B00BB00B)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(Q[4]),
        .I1(datum_i_4_n_0),
        .I2(Q[3]),
        .I3(\bit_idx[4]_P_i_3_n_0 ),
        .I4(\bit_idx[2]_P_i_2_n_0 ),
        .I5(Q[2]),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD0DDD000DDDDDDDD)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(Q[0]),
        .I1(\bit_idx[2]_P_i_4_n_0 ),
        .I2(\bit_idx_reg[1]_P_n_0 ),
        .I3(\bit_idx_reg[1]_LDC_n_0 ),
        .I4(\bit_idx_reg[1]_C_n_0 ),
        .I5(Q[1]),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEFEEEE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_state[2]_i_9_n_0 ),
        .I3(\FSM_sequential_state[2]_i_10_n_0 ),
        .I4(\FSM_sequential_state[2]_i_11_n_0 ),
        .I5(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(state__0[2]));
  LUT6 #(
    .INIT(64'h4040400040404040)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[0]),
        .I1(Q[15]),
        .I2(brd_output),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(brd_output),
        .I3(Q[15]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDF0D0F00DF0DDF0D)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_state[2]_i_10_n_0 ),
        .I2(datum_i_4_n_0),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\bit_idx[4]_P_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0B00000000000000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(Q[0]),
        .I1(\bit_idx[2]_P_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(\FSM_sequential_state[2]_i_13_n_0 ),
        .I4(\FSM_sequential_state[2]_i_14_n_0 ),
        .I5(\FSM_sequential_state[2]_i_15_n_0 ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(auto),
        .I1(state[0]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(Q[4]),
        .I1(\bit_idx_reg[4]_C_n_0 ),
        .I2(\bit_idx_reg[4]_LDC_n_0 ),
        .I3(\bit_idx_reg[4]_P_n_0 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0DDD000DDDDDDDD)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(Q[2]),
        .I1(\bit_idx[2]_P_i_2_n_0 ),
        .I2(\bit_idx_reg[3]_P_n_0 ),
        .I3(\bit_idx_reg[3]_LDC_n_0 ),
        .I4(\bit_idx_reg[3]_C_n_0 ),
        .I5(Q[3]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:11111111,iSTATE0:101,iSTATE1:011,iSTATE2:100,iSTATE3:110,iSTATE4:010,iSTATE5:000,iSTATE6:001" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:11111111,iSTATE0:101,iSTATE1:011,iSTATE2:100,iSTATE3:110,iSTATE4:010,iSTATE5:000,iSTATE6:001" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:11111111,iSTATE0:101,iSTATE1:011,iSTATE2:100,iSTATE3:110,iSTATE4:010,iSTATE5:000,iSTATE6:001" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    auto_i_1
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[13]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(auto_i_1_n_0));
  FDCE auto_reg
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(auto_i_1_n_0),
        .Q(auto));
  LUT3 #(
    .INIT(8'h6A)) 
    baud_clk_INST_0
       (.I0(spi_clk),
        .I1(clk_go),
        .I2(baud_clk_0),
        .O(baud_clk));
  LUT6 #(
    .INIT(64'h033AFFFF033A0000)) 
    \bit_idx[0]_C_i_1 
       (.I0(Q[0]),
        .I1(\bit_idx[2]_P_i_4_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\bit_idx[4]_P_i_1_n_0 ),
        .I5(\bit_idx_reg[0]_C_n_0 ),
        .O(\bit_idx[0]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000303F303FAAAA)) 
    \bit_idx[0]_P_i_1 
       (.I0(Q[0]),
        .I1(\bit_idx_reg[0]_P_n_0 ),
        .I2(\bit_idx_reg[0]_LDC_n_0 ),
        .I3(\bit_idx_reg[0]_C_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(bit_idx[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[1]_C_i_1 
       (.I0(bit_idx[1]),
        .I1(\bit_idx[4]_P_i_1_n_0 ),
        .I2(\bit_idx_reg[1]_C_n_0 ),
        .O(\bit_idx[1]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C3C3AA)) 
    \bit_idx[1]_P_i_1 
       (.I0(Q[1]),
        .I1(\bit_idx[2]_P_i_4_n_0 ),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .O(bit_idx[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[2]_C_i_1 
       (.I0(bit_idx[2]),
        .I1(\bit_idx[4]_P_i_1_n_0 ),
        .I2(\bit_idx_reg[2]_C_n_0 ),
        .O(\bit_idx[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCC3CCC3AAAA)) 
    \bit_idx[2]_P_i_1 
       (.I0(Q[2]),
        .I1(\bit_idx[2]_P_i_2_n_0 ),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(\bit_idx[2]_P_i_4_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(bit_idx[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[2]_P_i_2 
       (.I0(\bit_idx_reg[2]_P_n_0 ),
        .I1(\bit_idx_reg[2]_LDC_n_0 ),
        .I2(\bit_idx_reg[2]_C_n_0 ),
        .O(\bit_idx[2]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[2]_P_i_3 
       (.I0(\bit_idx_reg[1]_P_n_0 ),
        .I1(\bit_idx_reg[1]_LDC_n_0 ),
        .I2(\bit_idx_reg[1]_C_n_0 ),
        .O(\bit_idx[2]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[2]_P_i_4 
       (.I0(\bit_idx_reg[0]_P_n_0 ),
        .I1(\bit_idx_reg[0]_LDC_n_0 ),
        .I2(\bit_idx_reg[0]_C_n_0 ),
        .O(\bit_idx[2]_P_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[3]_C_i_1 
       (.I0(bit_idx[3]),
        .I1(\bit_idx[4]_P_i_1_n_0 ),
        .I2(\bit_idx_reg[3]_C_n_0 ),
        .O(\bit_idx[3]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h003C3CAA)) 
    \bit_idx[3]_P_i_1 
       (.I0(Q[3]),
        .I1(\bit_idx[4]_P_i_3_n_0 ),
        .I2(\bit_idx[4]_P_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .O(bit_idx[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[4]_C_i_1 
       (.I0(bit_idx[4]),
        .I1(\bit_idx[4]_P_i_1_n_0 ),
        .I2(\bit_idx_reg[4]_C_n_0 ),
        .O(\bit_idx[4]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800088000)) 
    \bit_idx[4]_P_i_1 
       (.I0(Q[15]),
        .I1(brd_output),
        .I2(cpha),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\bit_idx[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C3CCC3CCAAAA)) 
    \bit_idx[4]_P_i_2 
       (.I0(Q[4]),
        .I1(datum_i_4_n_0),
        .I2(\bit_idx[4]_P_i_3_n_0 ),
        .I3(\bit_idx[4]_P_i_4_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(bit_idx[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[4]_P_i_3 
       (.I0(\bit_idx_reg[3]_P_n_0 ),
        .I1(\bit_idx_reg[3]_LDC_n_0 ),
        .I2(\bit_idx_reg[3]_C_n_0 ),
        .O(\bit_idx[4]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000001D)) 
    \bit_idx[4]_P_i_4 
       (.I0(\bit_idx_reg[2]_C_n_0 ),
        .I1(\bit_idx_reg[2]_LDC_n_0 ),
        .I2(\bit_idx_reg[2]_P_n_0 ),
        .I3(\bit_idx[2]_P_i_3_n_0 ),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .O(\bit_idx[4]_P_i_4_n_0 ));
  FDCE \bit_idx_reg[0]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\bit_idx_reg[0]_LDC_i_2_n_0 ),
        .D(\bit_idx[0]_C_i_1_n_0 ),
        .Q(\bit_idx_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[0]_LDC 
       (.CLR(\bit_idx_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\bit_idx_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\bit_idx_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx_reg[0]_LDC_i_1 
       (.I0(Q[0]),
        .I1(axi_interface_spi_aresetn),
        .O(\bit_idx_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx_reg[0]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(Q[0]),
        .O(\bit_idx_reg[0]_LDC_i_2_n_0 ));
  FDPE \bit_idx_reg[0]_P 
       (.C(axi_interface_spi_aclk),
        .CE(\bit_idx[4]_P_i_1_n_0 ),
        .D(bit_idx[0]),
        .PRE(\bit_idx_reg[0]_LDC_i_1_n_0 ),
        .Q(\bit_idx_reg[0]_P_n_0 ));
  FDCE \bit_idx_reg[1]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\bit_idx_reg[1]_LDC_i_2_n_0 ),
        .D(\bit_idx[1]_C_i_1_n_0 ),
        .Q(\bit_idx_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[1]_LDC 
       (.CLR(\bit_idx_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\bit_idx_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\bit_idx_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx_reg[1]_LDC_i_1 
       (.I0(Q[1]),
        .I1(axi_interface_spi_aresetn),
        .O(\bit_idx_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx_reg[1]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(Q[1]),
        .O(\bit_idx_reg[1]_LDC_i_2_n_0 ));
  FDPE \bit_idx_reg[1]_P 
       (.C(axi_interface_spi_aclk),
        .CE(\bit_idx[4]_P_i_1_n_0 ),
        .D(bit_idx[1]),
        .PRE(\bit_idx_reg[1]_LDC_i_1_n_0 ),
        .Q(\bit_idx_reg[1]_P_n_0 ));
  FDCE \bit_idx_reg[2]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\bit_idx_reg[2]_LDC_i_2_n_0 ),
        .D(\bit_idx[2]_C_i_1_n_0 ),
        .Q(\bit_idx_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[2]_LDC 
       (.CLR(\bit_idx_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\bit_idx_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\bit_idx_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx_reg[2]_LDC_i_1 
       (.I0(Q[2]),
        .I1(axi_interface_spi_aresetn),
        .O(\bit_idx_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx_reg[2]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(Q[2]),
        .O(\bit_idx_reg[2]_LDC_i_2_n_0 ));
  FDPE \bit_idx_reg[2]_P 
       (.C(axi_interface_spi_aclk),
        .CE(\bit_idx[4]_P_i_1_n_0 ),
        .D(bit_idx[2]),
        .PRE(\bit_idx_reg[2]_LDC_i_1_n_0 ),
        .Q(\bit_idx_reg[2]_P_n_0 ));
  FDCE \bit_idx_reg[3]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\bit_idx_reg[3]_LDC_i_2_n_0 ),
        .D(\bit_idx[3]_C_i_1_n_0 ),
        .Q(\bit_idx_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[3]_LDC 
       (.CLR(\bit_idx_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\bit_idx_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\bit_idx_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx_reg[3]_LDC_i_1 
       (.I0(Q[3]),
        .I1(axi_interface_spi_aresetn),
        .O(\bit_idx_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx_reg[3]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(Q[3]),
        .O(\bit_idx_reg[3]_LDC_i_2_n_0 ));
  FDPE \bit_idx_reg[3]_P 
       (.C(axi_interface_spi_aclk),
        .CE(\bit_idx[4]_P_i_1_n_0 ),
        .D(bit_idx[3]),
        .PRE(\bit_idx_reg[3]_LDC_i_1_n_0 ),
        .Q(\bit_idx_reg[3]_P_n_0 ));
  FDCE \bit_idx_reg[4]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\bit_idx_reg[4]_LDC_i_2_n_0 ),
        .D(\bit_idx[4]_C_i_1_n_0 ),
        .Q(\bit_idx_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[4]_LDC 
       (.CLR(\bit_idx_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\bit_idx_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\bit_idx_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx_reg[4]_LDC_i_1 
       (.I0(Q[4]),
        .I1(axi_interface_spi_aresetn),
        .O(\bit_idx_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx_reg[4]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(Q[4]),
        .O(\bit_idx_reg[4]_LDC_i_2_n_0 ));
  FDPE \bit_idx_reg[4]_P 
       (.C(axi_interface_spi_aclk),
        .CE(\bit_idx[4]_P_i_1_n_0 ),
        .D(bit_idx[4]),
        .PRE(\bit_idx_reg[4]_LDC_i_1_n_0 ),
        .Q(\bit_idx_reg[4]_P_n_0 ));
  LUT6 #(
    .INIT(64'h1515DFFF15151000)) 
    clk_go_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(rd_req_flag_i_2_n_0),
        .I4(clk_go_i_2_n_0),
        .I5(clk_go),
        .O(clk_go_i_1_n_0));
  LUT6 #(
    .INIT(64'h4040404000004000)) 
    clk_go_i_2
       (.I0(state[0]),
        .I1(Q[15]),
        .I2(brd_output),
        .I3(state[1]),
        .I4(auto),
        .I5(state[2]),
        .O(clk_go_i_2_n_0));
  FDCE clk_go_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_go_i_1_n_0),
        .Q(clk_go));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    cpha_i_1
       (.I0(Q[22]),
        .I1(Q[20]),
        .I2(Q[16]),
        .I3(Q[13]),
        .I4(Q[14]),
        .I5(Q[18]),
        .O(cpha_i_1_n_0));
  FDCE cpha_reg
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(cpha_i_1_n_0),
        .Q(cpha));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    cpol_i_1
       (.I0(Q[23]),
        .I1(Q[21]),
        .I2(Q[17]),
        .I3(Q[13]),
        .I4(Q[14]),
        .I5(Q[19]),
        .O(cpol_i_1_n_0));
  FDCE cpol_reg
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(cpol_i_1_n_0),
        .Q(spi_clk));
  LUT5 #(
    .INIT(32'h74777444)) 
    \cs[0]_C_i_1 
       (.I0(state[0]),
        .I1(\cs[3]_C_i_2_n_0 ),
        .I2(\cs_auto_out_reg_n_0_[0] ),
        .I3(\cs_auto_reg_n_0_[0] ),
        .I4(\cs_manual_r_reg_n_0_[0] ),
        .O(\cs[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cs[0]_INST_0 
       (.I0(\cs_reg[0]_P_n_0 ),
        .I1(\cs_reg[0]_LDC_n_0 ),
        .I2(\cs_reg[0]_C_n_0 ),
        .O(cs[0]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \cs[1]_C_i_1 
       (.I0(state[0]),
        .I1(\cs[3]_C_i_2_n_0 ),
        .I2(\cs_auto_out_reg_n_0_[1] ),
        .I3(\cs_auto_reg_n_0_[1] ),
        .I4(\cs_manual_r_reg_n_0_[1] ),
        .O(\cs[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cs[1]_INST_0 
       (.I0(\cs_reg[1]_P_n_0 ),
        .I1(\cs_reg[1]_LDC_n_0 ),
        .I2(\cs_reg[1]_C_n_0 ),
        .O(cs[1]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \cs[2]_C_i_1 
       (.I0(state[0]),
        .I1(\cs[3]_C_i_2_n_0 ),
        .I2(\cs_auto_out_reg_n_0_[2] ),
        .I3(\cs_auto_reg_n_0_[2] ),
        .I4(\cs_manual_r_reg_n_0_[2] ),
        .O(\cs[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cs[2]_INST_0 
       (.I0(\cs_reg[2]_P_n_0 ),
        .I1(\cs_reg[2]_LDC_n_0 ),
        .I2(\cs_reg[2]_C_n_0 ),
        .O(cs[2]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \cs[3]_C_i_1 
       (.I0(state[0]),
        .I1(\cs[3]_C_i_2_n_0 ),
        .I2(p_1_in),
        .I3(\cs_auto_reg_n_0_[3] ),
        .I4(p_2_in),
        .O(\cs[3]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cs[3]_C_i_2 
       (.I0(brd_output),
        .I1(Q[15]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\cs[3]_C_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cs[3]_INST_0 
       (.I0(\cs_reg[3]_P_n_0 ),
        .I1(\cs_reg[3]_LDC_n_0 ),
        .I2(\cs_reg[3]_C_n_0 ),
        .O(cs[3]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \cs_auto[3]_i_1 
       (.I0(state[2]),
        .I1(Q[15]),
        .I2(brd_output),
        .I3(state[0]),
        .I4(state[1]),
        .O(cpol));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cs_auto_out[0]_i_1 
       (.I0(cs_select_r[0]),
        .I1(cs_select_r[1]),
        .O(\cs_auto_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cs_auto_out[1]_i_1 
       (.I0(cs_select_r[1]),
        .I1(cs_select_r[0]),
        .O(\cs_auto_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cs_auto_out[2]_i_1 
       (.I0(cs_select_r[0]),
        .I1(cs_select_r[1]),
        .O(\cs_auto_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \cs_auto_out[3]_i_1 
       (.I0(state[2]),
        .I1(Q[15]),
        .I2(brd_output),
        .I3(axi_interface_spi_aresetn),
        .I4(state[1]),
        .I5(state[0]),
        .O(\cs_auto_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cs_auto_out[3]_i_2 
       (.I0(cs_select_r[0]),
        .I1(cs_select_r[1]),
        .O(\cs_auto_out[3]_i_2_n_0 ));
  FDRE \cs_auto_out_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(\cs_auto_out[3]_i_1_n_0 ),
        .D(\cs_auto_out[0]_i_1_n_0 ),
        .Q(\cs_auto_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cs_auto_out_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(\cs_auto_out[3]_i_1_n_0 ),
        .D(\cs_auto_out[1]_i_1_n_0 ),
        .Q(\cs_auto_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cs_auto_out_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(\cs_auto_out[3]_i_1_n_0 ),
        .D(\cs_auto_out[2]_i_1_n_0 ),
        .Q(\cs_auto_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \cs_auto_out_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(\cs_auto_out[3]_i_1_n_0 ),
        .D(\cs_auto_out[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDCE \cs_auto_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[5]),
        .Q(\cs_auto_reg_n_0_[0] ));
  FDCE \cs_auto_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[6]),
        .Q(\cs_auto_reg_n_0_[1] ));
  FDCE \cs_auto_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[7]),
        .Q(\cs_auto_reg_n_0_[2] ));
  FDCE \cs_auto_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[8]),
        .Q(\cs_auto_reg_n_0_[3] ));
  FDCE \cs_manual_r_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[9]),
        .Q(\cs_manual_r_reg_n_0_[0] ));
  FDCE \cs_manual_r_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[10]),
        .Q(\cs_manual_r_reg_n_0_[1] ));
  FDCE \cs_manual_r_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[11]),
        .Q(\cs_manual_r_reg_n_0_[2] ));
  FDCE \cs_manual_r_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[12]),
        .Q(p_2_in));
  FDCE \cs_reg[0]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\cs_reg[0]_LDC_i_2_n_0 ),
        .D(\cs[0]_C_i_1_n_0 ),
        .Q(\cs_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cs_reg[0]_LDC 
       (.CLR(\cs_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cs_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cs_reg[0]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cs_reg[0]_LDC_i_1 
       (.I0(\cs_manual_r_reg_n_0_[0] ),
        .I1(\cs_auto_reg_n_0_[0] ),
        .I2(\cs_auto_out_reg_n_0_[0] ),
        .I3(axi_interface_spi_aresetn),
        .O(\cs_reg[0]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \cs_reg[0]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(\cs_manual_r_reg_n_0_[0] ),
        .I2(\cs_auto_reg_n_0_[0] ),
        .I3(\cs_auto_out_reg_n_0_[0] ),
        .O(\cs_reg[0]_LDC_i_2_n_0 ));
  FDPE \cs_reg[0]_P 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\cs[0]_C_i_1_n_0 ),
        .PRE(\cs_reg[0]_LDC_i_1_n_0 ),
        .Q(\cs_reg[0]_P_n_0 ));
  FDCE \cs_reg[1]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\cs_reg[1]_LDC_i_2_n_0 ),
        .D(\cs[1]_C_i_1_n_0 ),
        .Q(\cs_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cs_reg[1]_LDC 
       (.CLR(\cs_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cs_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cs_reg[1]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cs_reg[1]_LDC_i_1 
       (.I0(\cs_manual_r_reg_n_0_[1] ),
        .I1(\cs_auto_reg_n_0_[1] ),
        .I2(\cs_auto_out_reg_n_0_[1] ),
        .I3(axi_interface_spi_aresetn),
        .O(\cs_reg[1]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \cs_reg[1]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(\cs_manual_r_reg_n_0_[1] ),
        .I2(\cs_auto_reg_n_0_[1] ),
        .I3(\cs_auto_out_reg_n_0_[1] ),
        .O(\cs_reg[1]_LDC_i_2_n_0 ));
  FDPE \cs_reg[1]_P 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\cs[1]_C_i_1_n_0 ),
        .PRE(\cs_reg[1]_LDC_i_1_n_0 ),
        .Q(\cs_reg[1]_P_n_0 ));
  FDCE \cs_reg[2]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\cs_reg[2]_LDC_i_2_n_0 ),
        .D(\cs[2]_C_i_1_n_0 ),
        .Q(\cs_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cs_reg[2]_LDC 
       (.CLR(\cs_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cs_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cs_reg[2]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cs_reg[2]_LDC_i_1 
       (.I0(\cs_manual_r_reg_n_0_[2] ),
        .I1(\cs_auto_reg_n_0_[2] ),
        .I2(\cs_auto_out_reg_n_0_[2] ),
        .I3(axi_interface_spi_aresetn),
        .O(\cs_reg[2]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \cs_reg[2]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(\cs_manual_r_reg_n_0_[2] ),
        .I2(\cs_auto_reg_n_0_[2] ),
        .I3(\cs_auto_out_reg_n_0_[2] ),
        .O(\cs_reg[2]_LDC_i_2_n_0 ));
  FDPE \cs_reg[2]_P 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\cs[2]_C_i_1_n_0 ),
        .PRE(\cs_reg[2]_LDC_i_1_n_0 ),
        .Q(\cs_reg[2]_P_n_0 ));
  FDCE \cs_reg[3]_C 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(\cs_reg[3]_LDC_i_2_n_0 ),
        .D(\cs[3]_C_i_1_n_0 ),
        .Q(\cs_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cs_reg[3]_LDC 
       (.CLR(\cs_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cs_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cs_reg[3]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cs_reg[3]_LDC_i_1 
       (.I0(p_2_in),
        .I1(\cs_auto_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(axi_interface_spi_aresetn),
        .O(\cs_reg[3]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \cs_reg[3]_LDC_i_2 
       (.I0(axi_interface_spi_aresetn),
        .I1(p_2_in),
        .I2(\cs_auto_reg_n_0_[3] ),
        .I3(p_1_in),
        .O(\cs_reg[3]_LDC_i_2_n_0 ));
  FDPE \cs_reg[3]_P 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .D(\cs[3]_C_i_1_n_0 ),
        .PRE(\cs_reg[3]_LDC_i_1_n_0 ),
        .Q(\cs_reg[3]_P_n_0 ));
  FDCE \cs_select_r_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[13]),
        .Q(cs_select_r[0]));
  FDCE \cs_select_r_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(Q[14]),
        .Q(cs_select_r[1]));
  FDCE \data_reg_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [0]),
        .Q(data_reg[0]));
  FDCE \data_reg_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [10]),
        .Q(data_reg[10]));
  FDCE \data_reg_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [11]),
        .Q(data_reg[11]));
  FDCE \data_reg_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [12]),
        .Q(data_reg[12]));
  FDCE \data_reg_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [13]),
        .Q(data_reg[13]));
  FDCE \data_reg_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [14]),
        .Q(data_reg[14]));
  FDCE \data_reg_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [15]),
        .Q(data_reg[15]));
  FDCE \data_reg_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [16]),
        .Q(data_reg[16]));
  FDCE \data_reg_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [17]),
        .Q(data_reg[17]));
  FDCE \data_reg_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [18]),
        .Q(data_reg[18]));
  FDCE \data_reg_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [19]),
        .Q(data_reg[19]));
  FDCE \data_reg_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [1]),
        .Q(data_reg[1]));
  FDCE \data_reg_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [20]),
        .Q(data_reg[20]));
  FDCE \data_reg_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [21]),
        .Q(data_reg[21]));
  FDCE \data_reg_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [22]),
        .Q(data_reg[22]));
  FDCE \data_reg_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [23]),
        .Q(data_reg[23]));
  FDCE \data_reg_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [24]),
        .Q(data_reg[24]));
  FDCE \data_reg_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [25]),
        .Q(data_reg[25]));
  FDCE \data_reg_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [26]),
        .Q(data_reg[26]));
  FDCE \data_reg_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [27]),
        .Q(data_reg[27]));
  FDCE \data_reg_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [28]),
        .Q(data_reg[28]));
  FDCE \data_reg_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [29]),
        .Q(data_reg[29]));
  FDCE \data_reg_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [2]),
        .Q(data_reg[2]));
  FDCE \data_reg_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [30]),
        .Q(data_reg[30]));
  FDCE \data_reg_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [31]),
        .Q(data_reg[31]));
  FDCE \data_reg_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [3]),
        .Q(data_reg[3]));
  FDCE \data_reg_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [4]),
        .Q(data_reg[4]));
  FDCE \data_reg_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [5]),
        .Q(data_reg[5]));
  FDCE \data_reg_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [6]),
        .Q(data_reg[6]));
  FDCE \data_reg_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [7]),
        .Q(data_reg[7]));
  FDCE \data_reg_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [8]),
        .Q(data_reg[8]));
  FDCE \data_reg_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(cpol),
        .CLR(SR),
        .D(\data_reg_reg[31]_0 [9]),
        .Q(data_reg[9]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    datum_i_1
       (.I0(datum_i_3_n_0),
        .I1(datum_i_4_n_0),
        .I2(datum_i_5_n_0),
        .I3(datum_i_6_n_0),
        .I4(datum4_out),
        .I5(datum),
        .O(datum_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_10
       (.I0(data_reg[7]),
        .I1(data_reg[6]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[5]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[4]),
        .O(datum_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_11
       (.I0(data_reg[3]),
        .I1(data_reg[2]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[1]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[0]),
        .O(datum_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_12
       (.I0(data_reg[31]),
        .I1(data_reg[30]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[29]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[28]),
        .O(datum_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_13
       (.I0(data_reg[27]),
        .I1(data_reg[26]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[25]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[24]),
        .O(datum_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_14
       (.I0(data_reg[23]),
        .I1(data_reg[22]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[21]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[20]),
        .O(datum_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_15
       (.I0(data_reg[19]),
        .I1(data_reg[18]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[17]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[16]),
        .O(datum_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    datum_i_2
       (.I0(axi_interface_spi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_3
       (.I0(datum_i_8_n_0),
        .I1(datum_i_9_n_0),
        .I2(\bit_idx[4]_P_i_3_n_0 ),
        .I3(datum_i_10_n_0),
        .I4(\bit_idx[2]_P_i_2_n_0 ),
        .I5(datum_i_11_n_0),
        .O(datum_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    datum_i_4
       (.I0(\bit_idx_reg[4]_P_n_0 ),
        .I1(\bit_idx_reg[4]_LDC_n_0 ),
        .I2(\bit_idx_reg[4]_C_n_0 ),
        .O(datum_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_5
       (.I0(datum_i_12_n_0),
        .I1(datum_i_13_n_0),
        .I2(\bit_idx[4]_P_i_3_n_0 ),
        .I3(datum_i_14_n_0),
        .I4(\bit_idx[2]_P_i_2_n_0 ),
        .I5(datum_i_15_n_0),
        .O(datum_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    datum_i_6
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(datum_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000808888808)) 
    datum_i_7
       (.I0(Q[15]),
        .I1(brd_output),
        .I2(state[2]),
        .I3(state[0]),
        .I4(cpha),
        .I5(state[1]),
        .O(datum4_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_8
       (.I0(data_reg[15]),
        .I1(data_reg[14]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[13]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[12]),
        .O(datum_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    datum_i_9
       (.I0(data_reg[11]),
        .I1(data_reg[10]),
        .I2(\bit_idx[2]_P_i_3_n_0 ),
        .I3(data_reg[9]),
        .I4(\bit_idx[2]_P_i_4_n_0 ),
        .I5(data_reg[8]),
        .O(datum_i_9_n_0));
  FDCE datum_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(datum_i_1_n_0),
        .Q(datum));
  LUT2 #(
    .INIT(4'h2)) 
    out_i_1
       (.I0(fifo_rd_req),
        .I1(last_in),
        .O(rd_req_flag_reg_0));
  LUT6 #(
    .INIT(64'hC000A0000000A000)) 
    rd_req_flag_i_1
       (.I0(rd_req_flag_i_2_n_0),
        .I1(fifo_rd_req),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(rd_req_flag_reg_1),
        .O(rd_req_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    rd_req_flag_i_2
       (.I0(\FSM_sequential_state[2]_i_15_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_11_n_0 ),
        .I3(\FSM_sequential_state[2]_i_13_n_0 ),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .I5(rd_req_flag_reg_1),
        .O(rd_req_flag_i_2_n_0));
  FDCE rd_req_flag_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(rd_req_flag_i_1_n_0),
        .Q(fifo_rd_req));
endmodule

(* ORIG_REF_NAME = "the_brd" *) 
module system_My_SPI_0_4_the_brd
   (brd_output,
    E,
    \ctrl_reg[15] ,
    brd_output_reg_0,
    axi_interface_spi_aclk,
    SR,
    Q,
    brd_output_reg_1,
    clk_go,
    baud_clk_next_reg);
  output brd_output;
  output [0:0]E;
  output \ctrl_reg[15] ;
  output brd_output_reg_0;
  input axi_interface_spi_aclk;
  input [0:0]SR;
  input [0:0]Q;
  input [31:0]brd_output_reg_1;
  input clk_go;
  input baud_clk_next_reg;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [6:0]acc_add;
  wire [6:6]acc_add0;
  wire \acc_add[3]_i_2_n_0 ;
  wire \acc_add[3]_i_3_n_0 ;
  wire \acc_add[3]_i_4_n_0 ;
  wire \acc_add[3]_i_5_n_0 ;
  wire \acc_add[6]_i_3_n_0 ;
  wire \acc_add[6]_i_4_n_0 ;
  wire \acc_add[6]_i_5_n_0 ;
  wire \acc_add_reg[3]_i_1_n_0 ;
  wire \acc_add_reg[3]_i_1_n_1 ;
  wire \acc_add_reg[3]_i_1_n_2 ;
  wire \acc_add_reg[3]_i_1_n_3 ;
  wire \acc_add_reg[6]_i_1_n_2 ;
  wire \acc_add_reg[6]_i_1_n_3 ;
  wire \acc_add_reg_n_0_[0] ;
  wire \acc_add_reg_n_0_[1] ;
  wire \acc_add_reg_n_0_[2] ;
  wire \acc_add_reg_n_0_[3] ;
  wire \acc_add_reg_n_0_[4] ;
  wire \acc_add_reg_n_0_[5] ;
  wire \acc_add_reg_n_0_[6] ;
  wire [5:0]acc_frac;
  wire acc_frac0_carry__0_n_0;
  wire acc_frac0_carry__0_n_1;
  wire acc_frac0_carry__0_n_2;
  wire acc_frac0_carry__0_n_3;
  wire acc_frac0_carry__1_n_0;
  wire acc_frac0_carry__1_n_1;
  wire acc_frac0_carry__1_n_2;
  wire acc_frac0_carry__1_n_3;
  wire acc_frac0_carry__2_n_1;
  wire acc_frac0_carry__2_n_2;
  wire acc_frac0_carry__2_n_3;
  wire acc_frac0_carry_i_1__0_n_0;
  wire acc_frac0_carry_i_1__1_n_0;
  wire acc_frac0_carry_i_1__2_n_0;
  wire acc_frac0_carry_i_1_n_0;
  wire acc_frac0_carry_i_2__0_n_0;
  wire acc_frac0_carry_i_2__1_n_0;
  wire acc_frac0_carry_i_2__2_n_0;
  wire acc_frac0_carry_i_2_n_0;
  wire acc_frac0_carry_i_3__0_n_0;
  wire acc_frac0_carry_i_3__1_n_0;
  wire acc_frac0_carry_i_3__2_n_0;
  wire acc_frac0_carry_i_3_n_0;
  wire acc_frac0_carry_i_4__0_n_0;
  wire acc_frac0_carry_i_4__1_n_0;
  wire acc_frac0_carry_i_4__2_n_0;
  wire acc_frac0_carry_i_4_n_0;
  wire acc_frac0_carry_i_5__0_n_0;
  wire acc_frac0_carry_i_5__1_n_0;
  wire acc_frac0_carry_i_5__2_n_0;
  wire acc_frac0_carry_i_5_n_0;
  wire acc_frac0_carry_i_6__0_n_0;
  wire acc_frac0_carry_i_6__1_n_0;
  wire acc_frac0_carry_i_6__2_n_0;
  wire acc_frac0_carry_i_6_n_0;
  wire acc_frac0_carry_i_7__0_n_0;
  wire acc_frac0_carry_i_7__1_n_0;
  wire acc_frac0_carry_i_7__2_n_0;
  wire acc_frac0_carry_i_7_n_0;
  wire acc_frac0_carry_i_8__0_n_0;
  wire acc_frac0_carry_i_8__1_n_0;
  wire acc_frac0_carry_i_8__2_n_0;
  wire acc_frac0_carry_i_8_n_0;
  wire acc_frac0_carry_n_0;
  wire acc_frac0_carry_n_1;
  wire acc_frac0_carry_n_2;
  wire acc_frac0_carry_n_3;
  wire axi_interface_spi_aclk;
  wire baud_clk_next_reg;
  wire \brd_cntr[0]_i_2_n_0 ;
  wire \brd_cntr[0]_i_3_n_0 ;
  wire \brd_cntr[0]_i_4_n_0 ;
  wire \brd_cntr[0]_i_5_n_0 ;
  wire \brd_cntr[0]_i_6_n_0 ;
  wire \brd_cntr[12]_i_2_n_0 ;
  wire \brd_cntr[12]_i_3_n_0 ;
  wire \brd_cntr[12]_i_4_n_0 ;
  wire \brd_cntr[12]_i_5_n_0 ;
  wire \brd_cntr[16]_i_2_n_0 ;
  wire \brd_cntr[16]_i_3_n_0 ;
  wire \brd_cntr[16]_i_4_n_0 ;
  wire \brd_cntr[16]_i_5_n_0 ;
  wire \brd_cntr[20]_i_2_n_0 ;
  wire \brd_cntr[20]_i_3_n_0 ;
  wire \brd_cntr[20]_i_4_n_0 ;
  wire \brd_cntr[20]_i_5_n_0 ;
  wire \brd_cntr[24]_i_2_n_0 ;
  wire \brd_cntr[24]_i_3_n_0 ;
  wire \brd_cntr[24]_i_4_n_0 ;
  wire \brd_cntr[24]_i_5_n_0 ;
  wire \brd_cntr[28]_i_2_n_0 ;
  wire \brd_cntr[28]_i_3_n_0 ;
  wire \brd_cntr[28]_i_4_n_0 ;
  wire \brd_cntr[28]_i_5_n_0 ;
  wire \brd_cntr[4]_i_2_n_0 ;
  wire \brd_cntr[4]_i_3_n_0 ;
  wire \brd_cntr[4]_i_4_n_0 ;
  wire \brd_cntr[4]_i_5_n_0 ;
  wire \brd_cntr[8]_i_2_n_0 ;
  wire \brd_cntr[8]_i_3_n_0 ;
  wire \brd_cntr[8]_i_4_n_0 ;
  wire \brd_cntr[8]_i_5_n_0 ;
  wire [31:0]brd_cntr_reg;
  wire \brd_cntr_reg[0]_i_1_n_0 ;
  wire \brd_cntr_reg[0]_i_1_n_1 ;
  wire \brd_cntr_reg[0]_i_1_n_2 ;
  wire \brd_cntr_reg[0]_i_1_n_3 ;
  wire \brd_cntr_reg[0]_i_1_n_4 ;
  wire \brd_cntr_reg[0]_i_1_n_5 ;
  wire \brd_cntr_reg[0]_i_1_n_6 ;
  wire \brd_cntr_reg[0]_i_1_n_7 ;
  wire \brd_cntr_reg[12]_i_1_n_0 ;
  wire \brd_cntr_reg[12]_i_1_n_1 ;
  wire \brd_cntr_reg[12]_i_1_n_2 ;
  wire \brd_cntr_reg[12]_i_1_n_3 ;
  wire \brd_cntr_reg[12]_i_1_n_4 ;
  wire \brd_cntr_reg[12]_i_1_n_5 ;
  wire \brd_cntr_reg[12]_i_1_n_6 ;
  wire \brd_cntr_reg[12]_i_1_n_7 ;
  wire \brd_cntr_reg[16]_i_1_n_0 ;
  wire \brd_cntr_reg[16]_i_1_n_1 ;
  wire \brd_cntr_reg[16]_i_1_n_2 ;
  wire \brd_cntr_reg[16]_i_1_n_3 ;
  wire \brd_cntr_reg[16]_i_1_n_4 ;
  wire \brd_cntr_reg[16]_i_1_n_5 ;
  wire \brd_cntr_reg[16]_i_1_n_6 ;
  wire \brd_cntr_reg[16]_i_1_n_7 ;
  wire \brd_cntr_reg[20]_i_1_n_0 ;
  wire \brd_cntr_reg[20]_i_1_n_1 ;
  wire \brd_cntr_reg[20]_i_1_n_2 ;
  wire \brd_cntr_reg[20]_i_1_n_3 ;
  wire \brd_cntr_reg[20]_i_1_n_4 ;
  wire \brd_cntr_reg[20]_i_1_n_5 ;
  wire \brd_cntr_reg[20]_i_1_n_6 ;
  wire \brd_cntr_reg[20]_i_1_n_7 ;
  wire \brd_cntr_reg[24]_i_1_n_0 ;
  wire \brd_cntr_reg[24]_i_1_n_1 ;
  wire \brd_cntr_reg[24]_i_1_n_2 ;
  wire \brd_cntr_reg[24]_i_1_n_3 ;
  wire \brd_cntr_reg[24]_i_1_n_4 ;
  wire \brd_cntr_reg[24]_i_1_n_5 ;
  wire \brd_cntr_reg[24]_i_1_n_6 ;
  wire \brd_cntr_reg[24]_i_1_n_7 ;
  wire \brd_cntr_reg[28]_i_1_n_1 ;
  wire \brd_cntr_reg[28]_i_1_n_2 ;
  wire \brd_cntr_reg[28]_i_1_n_3 ;
  wire \brd_cntr_reg[28]_i_1_n_4 ;
  wire \brd_cntr_reg[28]_i_1_n_5 ;
  wire \brd_cntr_reg[28]_i_1_n_6 ;
  wire \brd_cntr_reg[28]_i_1_n_7 ;
  wire \brd_cntr_reg[4]_i_1_n_0 ;
  wire \brd_cntr_reg[4]_i_1_n_1 ;
  wire \brd_cntr_reg[4]_i_1_n_2 ;
  wire \brd_cntr_reg[4]_i_1_n_3 ;
  wire \brd_cntr_reg[4]_i_1_n_4 ;
  wire \brd_cntr_reg[4]_i_1_n_5 ;
  wire \brd_cntr_reg[4]_i_1_n_6 ;
  wire \brd_cntr_reg[4]_i_1_n_7 ;
  wire \brd_cntr_reg[8]_i_1_n_0 ;
  wire \brd_cntr_reg[8]_i_1_n_1 ;
  wire \brd_cntr_reg[8]_i_1_n_2 ;
  wire \brd_cntr_reg[8]_i_1_n_3 ;
  wire \brd_cntr_reg[8]_i_1_n_4 ;
  wire \brd_cntr_reg[8]_i_1_n_5 ;
  wire \brd_cntr_reg[8]_i_1_n_6 ;
  wire \brd_cntr_reg[8]_i_1_n_7 ;
  wire brd_output;
  wire brd_output_reg_0;
  wire [31:0]brd_output_reg_1;
  wire clk_go;
  wire \ctrl_reg[15] ;
  wire load;
  wire [3:2]\NLW_acc_add_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_add_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_acc_frac0_carry_O_UNCONNECTED;
  wire [3:0]NLW_acc_frac0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_acc_frac0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_acc_frac0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_brd_cntr_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h9666666666666666)) 
    \acc_add[3]_i_2 
       (.I0(acc_frac[3]),
        .I1(brd_output_reg_1[4]),
        .I2(brd_output_reg_1[3]),
        .I3(brd_output_reg_1[0]),
        .I4(brd_output_reg_1[1]),
        .I5(brd_output_reg_1[2]),
        .O(\acc_add[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h95556AAA)) 
    \acc_add[3]_i_3 
       (.I0(acc_frac[2]),
        .I1(brd_output_reg_1[2]),
        .I2(brd_output_reg_1[1]),
        .I3(brd_output_reg_1[0]),
        .I4(brd_output_reg_1[3]),
        .O(\acc_add[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h956A)) 
    \acc_add[3]_i_4 
       (.I0(acc_frac[1]),
        .I1(brd_output_reg_1[0]),
        .I2(brd_output_reg_1[1]),
        .I3(brd_output_reg_1[2]),
        .O(\acc_add[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \acc_add[3]_i_5 
       (.I0(acc_frac[0]),
        .I1(brd_output_reg_1[0]),
        .I2(brd_output_reg_1[1]),
        .O(\acc_add[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \acc_add[6]_i_2 
       (.I0(brd_output_reg_1[6]),
        .I1(\acc_add[6]_i_5_n_0 ),
        .I2(brd_output_reg_1[5]),
        .O(acc_add0));
  LUT4 #(
    .INIT(16'h956A)) 
    \acc_add[6]_i_3 
       (.I0(acc_frac[5]),
        .I1(brd_output_reg_1[5]),
        .I2(\acc_add[6]_i_5_n_0 ),
        .I3(brd_output_reg_1[6]),
        .O(\acc_add[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \acc_add[6]_i_4 
       (.I0(acc_frac[4]),
        .I1(\acc_add[6]_i_5_n_0 ),
        .I2(brd_output_reg_1[5]),
        .O(\acc_add[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \acc_add[6]_i_5 
       (.I0(brd_output_reg_1[4]),
        .I1(brd_output_reg_1[3]),
        .I2(brd_output_reg_1[0]),
        .I3(brd_output_reg_1[1]),
        .I4(brd_output_reg_1[2]),
        .O(\acc_add[6]_i_5_n_0 ));
  FDCE \acc_add_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[0]),
        .Q(\acc_add_reg_n_0_[0] ));
  FDCE \acc_add_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[1]),
        .Q(\acc_add_reg_n_0_[1] ));
  FDCE \acc_add_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[2]),
        .Q(\acc_add_reg_n_0_[2] ));
  FDCE \acc_add_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[3]),
        .Q(\acc_add_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_add_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acc_add_reg[3]_i_1_n_0 ,\acc_add_reg[3]_i_1_n_1 ,\acc_add_reg[3]_i_1_n_2 ,\acc_add_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_frac[3:0]),
        .O(acc_add[3:0]),
        .S({\acc_add[3]_i_2_n_0 ,\acc_add[3]_i_3_n_0 ,\acc_add[3]_i_4_n_0 ,\acc_add[3]_i_5_n_0 }));
  FDCE \acc_add_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[4]),
        .Q(\acc_add_reg_n_0_[4] ));
  FDCE \acc_add_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[5]),
        .Q(\acc_add_reg_n_0_[5] ));
  FDCE \acc_add_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(acc_add[6]),
        .Q(\acc_add_reg_n_0_[6] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_add_reg[6]_i_1 
       (.CI(\acc_add_reg[3]_i_1_n_0 ),
        .CO({\NLW_acc_add_reg[6]_i_1_CO_UNCONNECTED [3:2],\acc_add_reg[6]_i_1_n_2 ,\acc_add_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,acc_frac[5:4]}),
        .O({\NLW_acc_add_reg[6]_i_1_O_UNCONNECTED [3],acc_add[6:4]}),
        .S({1'b0,acc_add0,\acc_add[6]_i_3_n_0 ,\acc_add[6]_i_4_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 acc_frac0_carry
       (.CI(1'b0),
        .CO({acc_frac0_carry_n_0,acc_frac0_carry_n_1,acc_frac0_carry_n_2,acc_frac0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({acc_frac0_carry_i_1_n_0,acc_frac0_carry_i_2_n_0,acc_frac0_carry_i_3_n_0,acc_frac0_carry_i_4_n_0}),
        .O(NLW_acc_frac0_carry_O_UNCONNECTED[3:0]),
        .S({acc_frac0_carry_i_5_n_0,acc_frac0_carry_i_6_n_0,acc_frac0_carry_i_7_n_0,acc_frac0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 acc_frac0_carry__0
       (.CI(acc_frac0_carry_n_0),
        .CO({acc_frac0_carry__0_n_0,acc_frac0_carry__0_n_1,acc_frac0_carry__0_n_2,acc_frac0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({acc_frac0_carry_i_1__0_n_0,acc_frac0_carry_i_2__0_n_0,acc_frac0_carry_i_3__0_n_0,acc_frac0_carry_i_4__0_n_0}),
        .O(NLW_acc_frac0_carry__0_O_UNCONNECTED[3:0]),
        .S({acc_frac0_carry_i_5__0_n_0,acc_frac0_carry_i_6__0_n_0,acc_frac0_carry_i_7__0_n_0,acc_frac0_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 acc_frac0_carry__1
       (.CI(acc_frac0_carry__0_n_0),
        .CO({acc_frac0_carry__1_n_0,acc_frac0_carry__1_n_1,acc_frac0_carry__1_n_2,acc_frac0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({acc_frac0_carry_i_1__1_n_0,acc_frac0_carry_i_2__1_n_0,acc_frac0_carry_i_3__1_n_0,acc_frac0_carry_i_4__1_n_0}),
        .O(NLW_acc_frac0_carry__1_O_UNCONNECTED[3:0]),
        .S({acc_frac0_carry_i_5__1_n_0,acc_frac0_carry_i_6__1_n_0,acc_frac0_carry_i_7__1_n_0,acc_frac0_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 acc_frac0_carry__2
       (.CI(acc_frac0_carry__1_n_0),
        .CO({load,acc_frac0_carry__2_n_1,acc_frac0_carry__2_n_2,acc_frac0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({acc_frac0_carry_i_1__2_n_0,acc_frac0_carry_i_2__2_n_0,acc_frac0_carry_i_3__2_n_0,acc_frac0_carry_i_4__2_n_0}),
        .O(NLW_acc_frac0_carry__2_O_UNCONNECTED[3:0]),
        .S({acc_frac0_carry_i_5__2_n_0,acc_frac0_carry_i_6__2_n_0,acc_frac0_carry_i_7__2_n_0,acc_frac0_carry_i_8__2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_1
       (.I0(brd_cntr_reg[7]),
        .I1(brd_output_reg_1[14]),
        .I2(brd_cntr_reg[6]),
        .I3(brd_output_reg_1[13]),
        .O(acc_frac0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_1__0
       (.I0(brd_cntr_reg[15]),
        .I1(brd_output_reg_1[22]),
        .I2(brd_cntr_reg[14]),
        .I3(brd_output_reg_1[21]),
        .O(acc_frac0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_1__1
       (.I0(brd_cntr_reg[23]),
        .I1(brd_output_reg_1[30]),
        .I2(brd_cntr_reg[22]),
        .I3(brd_output_reg_1[29]),
        .O(acc_frac0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    acc_frac0_carry_i_1__2
       (.I0(brd_cntr_reg[31]),
        .I1(brd_cntr_reg[30]),
        .O(acc_frac0_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_2
       (.I0(brd_cntr_reg[5]),
        .I1(brd_output_reg_1[12]),
        .I2(brd_cntr_reg[4]),
        .I3(brd_output_reg_1[11]),
        .O(acc_frac0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_2__0
       (.I0(brd_cntr_reg[13]),
        .I1(brd_output_reg_1[20]),
        .I2(brd_cntr_reg[12]),
        .I3(brd_output_reg_1[19]),
        .O(acc_frac0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_2__1
       (.I0(brd_cntr_reg[21]),
        .I1(brd_output_reg_1[28]),
        .I2(brd_cntr_reg[20]),
        .I3(brd_output_reg_1[27]),
        .O(acc_frac0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    acc_frac0_carry_i_2__2
       (.I0(brd_cntr_reg[29]),
        .I1(brd_cntr_reg[28]),
        .O(acc_frac0_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_3
       (.I0(brd_cntr_reg[3]),
        .I1(brd_output_reg_1[10]),
        .I2(brd_cntr_reg[2]),
        .I3(brd_output_reg_1[9]),
        .O(acc_frac0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_3__0
       (.I0(brd_cntr_reg[11]),
        .I1(brd_output_reg_1[18]),
        .I2(brd_cntr_reg[10]),
        .I3(brd_output_reg_1[17]),
        .O(acc_frac0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_3__1
       (.I0(brd_cntr_reg[19]),
        .I1(brd_output_reg_1[26]),
        .I2(brd_cntr_reg[18]),
        .I3(brd_output_reg_1[25]),
        .O(acc_frac0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    acc_frac0_carry_i_3__2
       (.I0(brd_cntr_reg[27]),
        .I1(brd_cntr_reg[26]),
        .O(acc_frac0_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_4
       (.I0(brd_cntr_reg[1]),
        .I1(brd_output_reg_1[8]),
        .I2(brd_cntr_reg[0]),
        .I3(brd_output_reg_1[7]),
        .O(acc_frac0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_4__0
       (.I0(brd_cntr_reg[9]),
        .I1(brd_output_reg_1[16]),
        .I2(brd_cntr_reg[8]),
        .I3(brd_output_reg_1[15]),
        .O(acc_frac0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    acc_frac0_carry_i_4__1
       (.I0(brd_cntr_reg[17]),
        .I1(brd_output_reg_1[24]),
        .I2(brd_cntr_reg[16]),
        .I3(brd_output_reg_1[23]),
        .O(acc_frac0_carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    acc_frac0_carry_i_4__2
       (.I0(brd_cntr_reg[25]),
        .I1(brd_output_reg_1[31]),
        .I2(brd_cntr_reg[24]),
        .O(acc_frac0_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_5
       (.I0(brd_output_reg_1[14]),
        .I1(brd_cntr_reg[7]),
        .I2(brd_output_reg_1[13]),
        .I3(brd_cntr_reg[6]),
        .O(acc_frac0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_5__0
       (.I0(brd_output_reg_1[22]),
        .I1(brd_cntr_reg[15]),
        .I2(brd_output_reg_1[21]),
        .I3(brd_cntr_reg[14]),
        .O(acc_frac0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_5__1
       (.I0(brd_output_reg_1[30]),
        .I1(brd_cntr_reg[23]),
        .I2(brd_output_reg_1[29]),
        .I3(brd_cntr_reg[22]),
        .O(acc_frac0_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_frac0_carry_i_5__2
       (.I0(brd_cntr_reg[30]),
        .I1(brd_cntr_reg[31]),
        .O(acc_frac0_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_6
       (.I0(brd_output_reg_1[12]),
        .I1(brd_cntr_reg[5]),
        .I2(brd_output_reg_1[11]),
        .I3(brd_cntr_reg[4]),
        .O(acc_frac0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_6__0
       (.I0(brd_output_reg_1[20]),
        .I1(brd_cntr_reg[13]),
        .I2(brd_output_reg_1[19]),
        .I3(brd_cntr_reg[12]),
        .O(acc_frac0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_6__1
       (.I0(brd_output_reg_1[28]),
        .I1(brd_cntr_reg[21]),
        .I2(brd_output_reg_1[27]),
        .I3(brd_cntr_reg[20]),
        .O(acc_frac0_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_frac0_carry_i_6__2
       (.I0(brd_cntr_reg[28]),
        .I1(brd_cntr_reg[29]),
        .O(acc_frac0_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_7
       (.I0(brd_output_reg_1[10]),
        .I1(brd_cntr_reg[3]),
        .I2(brd_output_reg_1[9]),
        .I3(brd_cntr_reg[2]),
        .O(acc_frac0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_7__0
       (.I0(brd_output_reg_1[18]),
        .I1(brd_cntr_reg[11]),
        .I2(brd_output_reg_1[17]),
        .I3(brd_cntr_reg[10]),
        .O(acc_frac0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_7__1
       (.I0(brd_output_reg_1[26]),
        .I1(brd_cntr_reg[19]),
        .I2(brd_output_reg_1[25]),
        .I3(brd_cntr_reg[18]),
        .O(acc_frac0_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_frac0_carry_i_7__2
       (.I0(brd_cntr_reg[26]),
        .I1(brd_cntr_reg[27]),
        .O(acc_frac0_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_8
       (.I0(brd_output_reg_1[8]),
        .I1(brd_cntr_reg[1]),
        .I2(brd_output_reg_1[7]),
        .I3(brd_cntr_reg[0]),
        .O(acc_frac0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_8__0
       (.I0(brd_output_reg_1[16]),
        .I1(brd_cntr_reg[9]),
        .I2(brd_output_reg_1[15]),
        .I3(brd_cntr_reg[8]),
        .O(acc_frac0_carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    acc_frac0_carry_i_8__1
       (.I0(brd_output_reg_1[24]),
        .I1(brd_cntr_reg[17]),
        .I2(brd_output_reg_1[23]),
        .I3(brd_cntr_reg[16]),
        .O(acc_frac0_carry_i_8__1_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    acc_frac0_carry_i_8__2
       (.I0(brd_cntr_reg[25]),
        .I1(brd_output_reg_1[31]),
        .I2(brd_cntr_reg[24]),
        .O(acc_frac0_carry_i_8__2_n_0));
  FDCE \acc_frac_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[0] ),
        .Q(acc_frac[0]));
  FDCE \acc_frac_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[1] ),
        .Q(acc_frac[1]));
  FDCE \acc_frac_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[2] ),
        .Q(acc_frac[2]));
  FDCE \acc_frac_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[3] ),
        .Q(acc_frac[3]));
  FDCE \acc_frac_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[4] ),
        .Q(acc_frac[4]));
  FDCE \acc_frac_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(load),
        .CLR(SR),
        .D(\acc_add_reg_n_0_[5] ),
        .Q(acc_frac[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    baud_clk_next_i_1
       (.I0(brd_output),
        .I1(Q),
        .I2(clk_go),
        .I3(baud_clk_next_reg),
        .O(brd_output_reg_0));
  LUT3 #(
    .INIT(8'h3A)) 
    \brd_cntr[0]_i_2 
       (.I0(brd_cntr_reg[0]),
        .I1(\acc_add_reg_n_0_[6] ),
        .I2(load),
        .O(\brd_cntr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[0]_i_3 
       (.I0(brd_cntr_reg[3]),
        .I1(load),
        .O(\brd_cntr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[0]_i_4 
       (.I0(brd_cntr_reg[2]),
        .I1(load),
        .O(\brd_cntr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[0]_i_5 
       (.I0(brd_cntr_reg[1]),
        .I1(load),
        .O(\brd_cntr[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \brd_cntr[0]_i_6 
       (.I0(\acc_add_reg_n_0_[6] ),
        .I1(brd_cntr_reg[0]),
        .I2(load),
        .O(\brd_cntr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[12]_i_2 
       (.I0(brd_cntr_reg[15]),
        .I1(load),
        .O(\brd_cntr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[12]_i_3 
       (.I0(brd_cntr_reg[14]),
        .I1(load),
        .O(\brd_cntr[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[12]_i_4 
       (.I0(brd_cntr_reg[13]),
        .I1(load),
        .O(\brd_cntr[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[12]_i_5 
       (.I0(brd_cntr_reg[12]),
        .I1(load),
        .O(\brd_cntr[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[16]_i_2 
       (.I0(brd_cntr_reg[19]),
        .I1(load),
        .O(\brd_cntr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[16]_i_3 
       (.I0(brd_cntr_reg[18]),
        .I1(load),
        .O(\brd_cntr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[16]_i_4 
       (.I0(brd_cntr_reg[17]),
        .I1(load),
        .O(\brd_cntr[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[16]_i_5 
       (.I0(brd_cntr_reg[16]),
        .I1(load),
        .O(\brd_cntr[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[20]_i_2 
       (.I0(brd_cntr_reg[23]),
        .I1(load),
        .O(\brd_cntr[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[20]_i_3 
       (.I0(brd_cntr_reg[22]),
        .I1(load),
        .O(\brd_cntr[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[20]_i_4 
       (.I0(brd_cntr_reg[21]),
        .I1(load),
        .O(\brd_cntr[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[20]_i_5 
       (.I0(brd_cntr_reg[20]),
        .I1(load),
        .O(\brd_cntr[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[24]_i_2 
       (.I0(brd_cntr_reg[27]),
        .I1(load),
        .O(\brd_cntr[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[24]_i_3 
       (.I0(brd_cntr_reg[26]),
        .I1(load),
        .O(\brd_cntr[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[24]_i_4 
       (.I0(brd_cntr_reg[25]),
        .I1(load),
        .O(\brd_cntr[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[24]_i_5 
       (.I0(brd_cntr_reg[24]),
        .I1(load),
        .O(\brd_cntr[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[28]_i_2 
       (.I0(brd_cntr_reg[31]),
        .I1(load),
        .O(\brd_cntr[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[28]_i_3 
       (.I0(brd_cntr_reg[30]),
        .I1(load),
        .O(\brd_cntr[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[28]_i_4 
       (.I0(brd_cntr_reg[29]),
        .I1(load),
        .O(\brd_cntr[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[28]_i_5 
       (.I0(brd_cntr_reg[28]),
        .I1(load),
        .O(\brd_cntr[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[4]_i_2 
       (.I0(brd_cntr_reg[7]),
        .I1(load),
        .O(\brd_cntr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[4]_i_3 
       (.I0(brd_cntr_reg[6]),
        .I1(load),
        .O(\brd_cntr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[4]_i_4 
       (.I0(brd_cntr_reg[5]),
        .I1(load),
        .O(\brd_cntr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[4]_i_5 
       (.I0(brd_cntr_reg[4]),
        .I1(load),
        .O(\brd_cntr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[8]_i_2 
       (.I0(brd_cntr_reg[11]),
        .I1(load),
        .O(\brd_cntr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[8]_i_3 
       (.I0(brd_cntr_reg[10]),
        .I1(load),
        .O(\brd_cntr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[8]_i_4 
       (.I0(brd_cntr_reg[9]),
        .I1(load),
        .O(\brd_cntr[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \brd_cntr[8]_i_5 
       (.I0(brd_cntr_reg[8]),
        .I1(load),
        .O(\brd_cntr[8]_i_5_n_0 ));
  FDCE \brd_cntr_reg[0] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[0]_i_1_n_7 ),
        .Q(brd_cntr_reg[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\brd_cntr_reg[0]_i_1_n_0 ,\brd_cntr_reg[0]_i_1_n_1 ,\brd_cntr_reg[0]_i_1_n_2 ,\brd_cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\brd_cntr[0]_i_2_n_0 }),
        .O({\brd_cntr_reg[0]_i_1_n_4 ,\brd_cntr_reg[0]_i_1_n_5 ,\brd_cntr_reg[0]_i_1_n_6 ,\brd_cntr_reg[0]_i_1_n_7 }),
        .S({\brd_cntr[0]_i_3_n_0 ,\brd_cntr[0]_i_4_n_0 ,\brd_cntr[0]_i_5_n_0 ,\brd_cntr[0]_i_6_n_0 }));
  FDCE \brd_cntr_reg[10] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[8]_i_1_n_5 ),
        .Q(brd_cntr_reg[10]));
  FDCE \brd_cntr_reg[11] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[8]_i_1_n_4 ),
        .Q(brd_cntr_reg[11]));
  FDCE \brd_cntr_reg[12] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[12]_i_1_n_7 ),
        .Q(brd_cntr_reg[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[12]_i_1 
       (.CI(\brd_cntr_reg[8]_i_1_n_0 ),
        .CO({\brd_cntr_reg[12]_i_1_n_0 ,\brd_cntr_reg[12]_i_1_n_1 ,\brd_cntr_reg[12]_i_1_n_2 ,\brd_cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[12]_i_1_n_4 ,\brd_cntr_reg[12]_i_1_n_5 ,\brd_cntr_reg[12]_i_1_n_6 ,\brd_cntr_reg[12]_i_1_n_7 }),
        .S({\brd_cntr[12]_i_2_n_0 ,\brd_cntr[12]_i_3_n_0 ,\brd_cntr[12]_i_4_n_0 ,\brd_cntr[12]_i_5_n_0 }));
  FDCE \brd_cntr_reg[13] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[12]_i_1_n_6 ),
        .Q(brd_cntr_reg[13]));
  FDCE \brd_cntr_reg[14] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[12]_i_1_n_5 ),
        .Q(brd_cntr_reg[14]));
  FDCE \brd_cntr_reg[15] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[12]_i_1_n_4 ),
        .Q(brd_cntr_reg[15]));
  FDCE \brd_cntr_reg[16] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[16]_i_1_n_7 ),
        .Q(brd_cntr_reg[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[16]_i_1 
       (.CI(\brd_cntr_reg[12]_i_1_n_0 ),
        .CO({\brd_cntr_reg[16]_i_1_n_0 ,\brd_cntr_reg[16]_i_1_n_1 ,\brd_cntr_reg[16]_i_1_n_2 ,\brd_cntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[16]_i_1_n_4 ,\brd_cntr_reg[16]_i_1_n_5 ,\brd_cntr_reg[16]_i_1_n_6 ,\brd_cntr_reg[16]_i_1_n_7 }),
        .S({\brd_cntr[16]_i_2_n_0 ,\brd_cntr[16]_i_3_n_0 ,\brd_cntr[16]_i_4_n_0 ,\brd_cntr[16]_i_5_n_0 }));
  FDCE \brd_cntr_reg[17] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[16]_i_1_n_6 ),
        .Q(brd_cntr_reg[17]));
  FDCE \brd_cntr_reg[18] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[16]_i_1_n_5 ),
        .Q(brd_cntr_reg[18]));
  FDCE \brd_cntr_reg[19] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[16]_i_1_n_4 ),
        .Q(brd_cntr_reg[19]));
  FDCE \brd_cntr_reg[1] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[0]_i_1_n_6 ),
        .Q(brd_cntr_reg[1]));
  FDCE \brd_cntr_reg[20] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[20]_i_1_n_7 ),
        .Q(brd_cntr_reg[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[20]_i_1 
       (.CI(\brd_cntr_reg[16]_i_1_n_0 ),
        .CO({\brd_cntr_reg[20]_i_1_n_0 ,\brd_cntr_reg[20]_i_1_n_1 ,\brd_cntr_reg[20]_i_1_n_2 ,\brd_cntr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[20]_i_1_n_4 ,\brd_cntr_reg[20]_i_1_n_5 ,\brd_cntr_reg[20]_i_1_n_6 ,\brd_cntr_reg[20]_i_1_n_7 }),
        .S({\brd_cntr[20]_i_2_n_0 ,\brd_cntr[20]_i_3_n_0 ,\brd_cntr[20]_i_4_n_0 ,\brd_cntr[20]_i_5_n_0 }));
  FDCE \brd_cntr_reg[21] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[20]_i_1_n_6 ),
        .Q(brd_cntr_reg[21]));
  FDCE \brd_cntr_reg[22] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[20]_i_1_n_5 ),
        .Q(brd_cntr_reg[22]));
  FDCE \brd_cntr_reg[23] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[20]_i_1_n_4 ),
        .Q(brd_cntr_reg[23]));
  FDCE \brd_cntr_reg[24] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[24]_i_1_n_7 ),
        .Q(brd_cntr_reg[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[24]_i_1 
       (.CI(\brd_cntr_reg[20]_i_1_n_0 ),
        .CO({\brd_cntr_reg[24]_i_1_n_0 ,\brd_cntr_reg[24]_i_1_n_1 ,\brd_cntr_reg[24]_i_1_n_2 ,\brd_cntr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[24]_i_1_n_4 ,\brd_cntr_reg[24]_i_1_n_5 ,\brd_cntr_reg[24]_i_1_n_6 ,\brd_cntr_reg[24]_i_1_n_7 }),
        .S({\brd_cntr[24]_i_2_n_0 ,\brd_cntr[24]_i_3_n_0 ,\brd_cntr[24]_i_4_n_0 ,\brd_cntr[24]_i_5_n_0 }));
  FDCE \brd_cntr_reg[25] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[24]_i_1_n_6 ),
        .Q(brd_cntr_reg[25]));
  FDCE \brd_cntr_reg[26] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[24]_i_1_n_5 ),
        .Q(brd_cntr_reg[26]));
  FDCE \brd_cntr_reg[27] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[24]_i_1_n_4 ),
        .Q(brd_cntr_reg[27]));
  FDCE \brd_cntr_reg[28] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[28]_i_1_n_7 ),
        .Q(brd_cntr_reg[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[28]_i_1 
       (.CI(\brd_cntr_reg[24]_i_1_n_0 ),
        .CO({\NLW_brd_cntr_reg[28]_i_1_CO_UNCONNECTED [3],\brd_cntr_reg[28]_i_1_n_1 ,\brd_cntr_reg[28]_i_1_n_2 ,\brd_cntr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[28]_i_1_n_4 ,\brd_cntr_reg[28]_i_1_n_5 ,\brd_cntr_reg[28]_i_1_n_6 ,\brd_cntr_reg[28]_i_1_n_7 }),
        .S({\brd_cntr[28]_i_2_n_0 ,\brd_cntr[28]_i_3_n_0 ,\brd_cntr[28]_i_4_n_0 ,\brd_cntr[28]_i_5_n_0 }));
  FDCE \brd_cntr_reg[29] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[28]_i_1_n_6 ),
        .Q(brd_cntr_reg[29]));
  FDCE \brd_cntr_reg[2] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[0]_i_1_n_5 ),
        .Q(brd_cntr_reg[2]));
  FDCE \brd_cntr_reg[30] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[28]_i_1_n_5 ),
        .Q(brd_cntr_reg[30]));
  FDCE \brd_cntr_reg[31] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[28]_i_1_n_4 ),
        .Q(brd_cntr_reg[31]));
  FDCE \brd_cntr_reg[3] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[0]_i_1_n_4 ),
        .Q(brd_cntr_reg[3]));
  FDCE \brd_cntr_reg[4] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[4]_i_1_n_7 ),
        .Q(brd_cntr_reg[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[4]_i_1 
       (.CI(\brd_cntr_reg[0]_i_1_n_0 ),
        .CO({\brd_cntr_reg[4]_i_1_n_0 ,\brd_cntr_reg[4]_i_1_n_1 ,\brd_cntr_reg[4]_i_1_n_2 ,\brd_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[4]_i_1_n_4 ,\brd_cntr_reg[4]_i_1_n_5 ,\brd_cntr_reg[4]_i_1_n_6 ,\brd_cntr_reg[4]_i_1_n_7 }),
        .S({\brd_cntr[4]_i_2_n_0 ,\brd_cntr[4]_i_3_n_0 ,\brd_cntr[4]_i_4_n_0 ,\brd_cntr[4]_i_5_n_0 }));
  FDCE \brd_cntr_reg[5] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[4]_i_1_n_6 ),
        .Q(brd_cntr_reg[5]));
  FDCE \brd_cntr_reg[6] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[4]_i_1_n_5 ),
        .Q(brd_cntr_reg[6]));
  FDCE \brd_cntr_reg[7] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[4]_i_1_n_4 ),
        .Q(brd_cntr_reg[7]));
  FDCE \brd_cntr_reg[8] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[8]_i_1_n_7 ),
        .Q(brd_cntr_reg[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \brd_cntr_reg[8]_i_1 
       (.CI(\brd_cntr_reg[4]_i_1_n_0 ),
        .CO({\brd_cntr_reg[8]_i_1_n_0 ,\brd_cntr_reg[8]_i_1_n_1 ,\brd_cntr_reg[8]_i_1_n_2 ,\brd_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\brd_cntr_reg[8]_i_1_n_4 ,\brd_cntr_reg[8]_i_1_n_5 ,\brd_cntr_reg[8]_i_1_n_6 ,\brd_cntr_reg[8]_i_1_n_7 }),
        .S({\brd_cntr[8]_i_2_n_0 ,\brd_cntr[8]_i_3_n_0 ,\brd_cntr[8]_i_4_n_0 ,\brd_cntr[8]_i_5_n_0 }));
  FDCE \brd_cntr_reg[9] 
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\brd_cntr_reg[8]_i_1_n_6 ),
        .Q(brd_cntr_reg[9]));
  FDCE brd_output_reg
       (.C(axi_interface_spi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(load),
        .Q(brd_output));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cs_manual_r[3]_i_1 
       (.I0(brd_output),
        .I1(Q),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    rd_req_flag_i_3
       (.I0(Q),
        .I1(brd_output),
        .O(\ctrl_reg[15] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
