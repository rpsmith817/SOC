
`timescale 1 ns / 1 ps

	module My_SPI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface AXI_Interface_SPI
		parameter integer C_AXI_Interface_SPI_DATA_WIDTH	= 32,
		parameter integer C_AXI_Interface_SPI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here
		input wire [31:0] datain,
        output wire [31:0] dataout,
        output wire [31:0] status,
        input wire clr_overflow,
        input wire rd_req,
        input wire wr_req,
        output wire empty,
        output wire full,
        output wire overflow,
        
        output wire baud_clk,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface AXI_Interface_SPI
		input wire  axi_interface_spi_aclk,
		input wire  axi_interface_spi_aresetn,
		input wire [C_AXI_Interface_SPI_ADDR_WIDTH-1 : 0] axi_interface_spi_awaddr,
		input wire [2 : 0] axi_interface_spi_awprot,
		input wire  axi_interface_spi_awvalid,
		output wire  axi_interface_spi_awready,
		input wire [C_AXI_Interface_SPI_DATA_WIDTH-1 : 0] axi_interface_spi_wdata,
		input wire [(C_AXI_Interface_SPI_DATA_WIDTH/8)-1 : 0] axi_interface_spi_wstrb,
		input wire  axi_interface_spi_wvalid,
		output wire  axi_interface_spi_wready,
		output wire [1 : 0] axi_interface_spi_bresp,
		output wire  axi_interface_spi_bvalid,
		input wire  axi_interface_spi_bready,
		input wire [C_AXI_Interface_SPI_ADDR_WIDTH-1 : 0] axi_interface_spi_araddr,
		input wire [2 : 0] axi_interface_spi_arprot,
		input wire  axi_interface_spi_arvalid,
		output wire  axi_interface_spi_arready,
		output wire [C_AXI_Interface_SPI_DATA_WIDTH-1 : 0] axi_interface_spi_rdata,
		output wire [1 : 0] axi_interface_spi_rresp,
		output wire  axi_interface_spi_rvalid,
		input wire  axi_interface_spi_rready
	);
// Instantiation of Axi Bus Interface AXI_Interface_SPI
	My_SPI_slave_lite_v1_0_AXI_Interface_SPI # ( 
		.C_S_AXI_ADDR_WIDTH(C_AXI_Interface_SPI_ADDR_WIDTH)
	) My_SPI_slave_lite_v1_0_AXI_Interface_SPI_inst (
		.S_AXI_ACLK(axi_interface_spi_aclk),
		.S_AXI_ARESETN(axi_interface_spi_aresetn),
		.S_AXI_AWADDR(axi_interface_spi_awaddr),
		.S_AXI_AWPROT(axi_interface_spi_awprot),
		.S_AXI_AWVALID(axi_interface_spi_awvalid),
		.S_AXI_AWREADY(axi_interface_spi_awready),
		.S_AXI_WDATA(axi_interface_spi_wdata),
		.S_AXI_WSTRB(axi_interface_spi_wstrb),
		.S_AXI_WVALID(axi_interface_spi_wvalid),
		.S_AXI_WREADY(axi_interface_spi_wready),
		.S_AXI_BRESP(axi_interface_spi_bresp),
		.S_AXI_BVALID(axi_interface_spi_bvalid),
		.S_AXI_BREADY(axi_interface_spi_bready),
		.S_AXI_ARADDR(axi_interface_spi_araddr),
		.S_AXI_ARPROT(axi_interface_spi_arprot),
		.S_AXI_ARVALID(axi_interface_spi_arvalid),
		.S_AXI_ARREADY(axi_interface_spi_arready),
		.S_AXI_RDATA(axi_interface_spi_rdata),
		.S_AXI_RRESP(axi_interface_spi_rresp),
		.S_AXI_RVALID(axi_interface_spi_rvalid),
		.S_AXI_RREADY(axi_interface_spi_rready),
        .datain(datain),
        .dataout(dataout),
        .status(status),
        .clr_overflow(clr_overflow),
        .rd_req(rd_req),
        .wr_req(wr_req),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .baud_clk(baud_clk)        	
	);

	// Add user logic here

	// User logic ends

	endmodule
