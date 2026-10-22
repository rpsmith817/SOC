// AXI4-lite FIFO IP implementation
// (My_SPI_slave_lite_v1_0_AXI_Interface_SPI.v)
// modified from gpio_v1_0_AXI.v from Jason Losh based on Xilinx IP tool auto-generated file by Ryan Smith. (Ryan Smith modified his professor's modifications to a autogen file).
//
// Contains:
// AXI4-lite interface
//	ETC

`timescale 1 ns / 1 ps

    module My_SPI_slave_lite_v1_0_AXI_Interface_SPI #
    (
        // Bit width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH = 5
    )
    (
//         // Ports to top level module (what makes this the GPIO IP module)
//         input wire [31:0] gpio_data_in,
//         output wire [31:0] gpio_data_out,
//         output wire [31:0] gpio_data_oe,
//         output wire intr,
		
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

        // AXI clock and reset        
        input wire S_AXI_ACLK,
        input wire S_AXI_ARESETN,

        // AXI write channel
        // address:  add, protection, valid, ready
        // data:     data, byte enable strobes, valid, ready
        // response: response, valid, ready
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
        input wire [2:0] S_AXI_AWPROT,
        input wire S_AXI_AWVALID,
        output wire S_AXI_AWREADY,
            
        input wire [31:0] S_AXI_WDATA,
        input wire [3:0] S_AXI_WSTRB,
        input wire S_AXI_WVALID,
        output wire  S_AXI_WREADY,

        output wire [1:0] S_AXI_BRESP,
        output wire S_AXI_BVALID,
        input wire S_AXI_BREADY,

        // AXI read channel
        // address: add, protection, valid, ready
        // data:    data, resp, valid, ready
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
        input wire [2:0] S_AXI_ARPROT,
        input wire S_AXI_ARVALID,
        output wire S_AXI_ARREADY,

        output wire [31:0] S_AXI_RDATA,
        output wire [1:0] S_AXI_RRESP,
        output wire S_AXI_RVALID,
        input wire S_AXI_RREADY
    );

    // Internal registers
//     reg [31:0] latch_data;
//     reg [31:0] out;
//     reg [31:0] od;
//     reg [31:0] int_enable;
//     reg [31:0] int_positive;
//     reg [31:0] int_negative;
//     reg [31:0] int_edge_mode;
//     reg [31:0] int_status;
//     reg [31:0] int_clear_request;
	reg [31:0] data;
	reg [31:0] ctrl;
	reg [31:0] brd;
	reg clr_overflow_req;

	wire [31:0] fifo_rd_data;
	wire fifo_empty;
	wire fifo_full;
	wire fifo_overflow;
	wire [3:0] fifo_wr_index;
	wire [3:0] fifo_rd_index;
	wire [3:0] fifo_watermark;
	assign status = {fifo_rd_index, fifo_wr_index, fifo_watermark, 17'b0, fifo_empty, fifo_full, fifo_overflow};	//defined as [31:28] =rd_index, [27:24] =wr_index, [23:20]=watermark, [19:3] UNUSED, [2]=empty, [1] =full, [0] =overflow
	assign dataout = fifo_rd_data;
	assign empty = fifo_empty;
	assign full = fifo_full;
	assign overflow = fifo_overflow;

    // Register numbers
    localparam integer DATA_REG             = 3'b000;
    localparam integer STATUS_REG           = 3'b001;
    localparam integer CTRL_REG             = 3'b010;
    localparam integer BRD_REG       		= 3'b011;

    // AXI4-lite signals
    reg axi_awready;
    reg axi_wready;
    reg [1:0] axi_bresp;
    reg axi_bvalid;
    reg axi_arready;
    reg [31:0] axi_rdata;
    reg [1:0] axi_rresp;
    reg axi_rvalid;

    // friendly clock, reset, and bus signals from master
    wire axi_clk           = S_AXI_ACLK;
    wire axi_resetn        = S_AXI_ARESETN;
    wire [31:0] axi_awaddr = S_AXI_AWADDR;
    wire axi_awvalid       = S_AXI_AWVALID;
    wire axi_wvalid        = S_AXI_WVALID;
    wire [3:0] axi_wstrb   = S_AXI_WSTRB;
    wire axi_bready        = S_AXI_BREADY;
    wire [31:0] axi_araddr = S_AXI_ARADDR;
    wire axi_arvalid       = S_AXI_ARVALID;
    wire axi_rready        = S_AXI_RREADY;    

    // assign bus signals to master to internal reg names
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

//     // Handle gpio input metastability safely
//     reg [31:0] read_port_data;
//     reg [31:0] pre_read_port_data;
//     always_ff @ (posedge(axi_clk))
//     begin
//         pre_read_port_data <= gpio_data_in;
//         read_port_data <= pre_read_port_data;
//     end

	reg [31:0] datain_betweener;
	reg [31:0] datain_final;
	reg rd_req_betweener, wr_req_betweener, clr_overflow_betweener;
	reg rd_req_final, wr_req_final, clr_overflow_final;
	always_ff @ (posedge(S_AXI_ACLK))
    begin
        datain_betweener <= datain;
        datain_final <= datain_betweener;
        rd_req_betweener <= rd_req;
        rd_req_final <= rd_req_betweener;
        wr_req_betweener <= wr_req;
        wr_req_final <= wr_req_betweener;
        clr_overflow_betweener <= clr_overflow;
        clr_overflow_final <= clr_overflow_betweener;
    end

    // Assert address ready handshake (axi_awready)
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    // De-assert ready (axi_awready)
    // - after write response channel ready handshake received (axi_bready)
    // - after this module sends write response channel valid (axi_bvalid)
    wire wr_add_data_valid = axi_awvalid && axi_wvalid;
    reg aw_en;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_awready <= 1'b0;
            aw_en <= 1'b1;
        end
        else
        begin
            if (wr_add_data_valid && ~axi_awready && aw_en)
            begin
                axi_awready <= 1'b1;
                aw_en <= 1'b0;
            end
            else if (axi_bready && axi_bvalid)
                begin
                    aw_en <= 1'b1;
                    axi_awready <= 1'b0;
                end
            else 
                axi_awready <= 1'b0;
        end 
    end

    // Capture the write address (axi_awaddr) in the first clock (~axi_awready)
    // - after write address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    reg [C_S_AXI_ADDR_WIDTH-1:0] waddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            waddr <= 0;
        else if (wr_add_data_valid && ~axi_awready && aw_en)
            waddr <= axi_awaddr;
    end

    // Output write data ready handshake (axi_wready) generation for one clock
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_wready <= 1'b0;
        else
            axi_wready <= (wr_add_data_valid && ~axi_wready && aw_en);
    end

    // Write data to internal registers
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // write correct bytes in 32-bit word based on byte enables (axi_wstrb)
    // int_clear_request write is only active for one clock
    wire wr = wr_add_data_valid && axi_awready && axi_wready;
//    reg fifo_wr_req;    //indicates that this is a write to fifo.
    wire fifo_wr_req = wr && (waddr[4:2] == DATA_REG);  //fine, then a wire?
    integer byte_index;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
//             latch_data[31:0] <= 32'b0;
//             out <= 32'b0;
//             od <= 32'b0;
//             int_enable <= 32'b0;
//             int_positive <= 32'b0;
//             int_negative <= 32'b0;
//             int_edge_mode <= 32'b0;
//             int_clear_request <= 32'b0;
			//old resets commented out above, below we find SPI resets.
            data <= 32'b0;
            ctrl <= 32'b0;
            brd <= 32'b0;
            clr_overflow_req <= 1'b0;
        end
        else
        begin
            clr_overflow_req <= 1'b0;	//add default so it doesn't wig out
            if (wr)
            begin
                case (waddr[4:2])
                    DATA_REG:
                    begin
//                        fifo_wr_req <= 1'b1;  //yes a write.
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if ( axi_wstrb[byte_index] == 1)
                            begin
                                data[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    end                        
                    STATUS_REG:
                    begin
//                        fifo_wr_req <= 1'b0;    //not a fifo wr
                        if (axi_wstrb[0] && S_AXI_WDATA[0])     //for now we only care about if the thing came through, later we will add the other writes we care about. like clearing the fifowrreq sig
                        begin
                            clr_overflow_req <= 1'b1;           //this is then 0x1 @ offset 0x4, just like the project datasheet for rx.
                        end
                    end
                    CTRL_REG:
                    begin
//                        fifo_wr_req <= 1'b0;    //not a fifo wr
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                            begin
                                ctrl[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    end
                    BRD_REG:
                    begin
//                        fifo_wr_req <= 1'b0;    //not a fifo wr
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                brd[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end 

                endcase
            end
        end
    end

    reg axi_wr_sel;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_wr_sel <= 1'b0;
        else
            axi_wr_sel <= fifo_wr_req;
    end
    wire [31:0] fifo_wr_data = axi_wr_sel ? data : datain_final;

    // Send write response (axi_bvalid, axi_bresp)
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // Clear write response valid (axi_bvalid) after one clock
    wire wr_add_data_ready = axi_awready && axi_wready;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end
        else
        begin
            if (wr_add_data_valid && wr_add_data_ready && ~axi_bvalid)
            begin
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid) 
                axi_bvalid <= 1'b0;
        end
    end

    // In the first clock (~axi_arready) that the read address is valid
    // - capture the address (axi_araddr)
    // - output ready (axi_arready) for one clock
    reg [C_S_AXI_ADDR_WIDTH-1:0] raddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_arready <= 1'b0;
            raddr <= 32'b0;
        end
        else
        begin
            // if valid, pulse ready (axi_rready) for one clock and save address
            if (axi_arvalid && ~axi_arready)
            begin
                axi_arready <= 1'b1;
                raddr  <= axi_araddr;
            end
            else
                axi_arready <= 1'b0;
        end
    end

    // Update register read data
    // - after this module receives a valid address (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // - before the module asserts the data is valid (~axi_rvalid)
    //   (don't change the data while asserting read data is valid)
    wire rd = axi_arvalid && axi_arready && ~axi_rvalid;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_rdata <= 32'b0;
        end
        else
        begin
            if (rd)
            begin
		// Address decoding for reading registers
		case (raddr[4:2])
		    DATA_REG:
		        axi_rdata <= fifo_rd_data;
		    STATUS_REG:
		        axi_rdata <= status;
		    CTRL_REG:
		        axi_rdata <= ctrl;
		    BRD_REG:
				axi_rdata <= brd;

		endcase
            end
        end
    end

    wire fifo_rd_req = rd && (raddr[4:2] == DATA_REG);

    // Assert data is valid for reading (axi_rvalid)
    // - after address is valid (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // De-assert data valid (axi_rvalid)
    // - after master ready handshake is received (axi_rready)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_rvalid <= 1'b0;
        end
        else
        begin
            if (axi_arvalid && axi_arready && ~axi_rvalid)
            begin
                axi_rvalid <= 1'b1;
                axi_rresp <= 2'b0;
            end
            else if (axi_rvalid && axi_rready)
                axi_rvalid <= 1'b0;
        end
    end

//     // pin control
//     // OUT LATCH ODR   PIN
//     //  0    x    x    hi-Z
//     //  1    0    x     0
//     //  1    1    0     1
//     //  1    1    1    hi-Z
//     genvar j;
//     for (j = 0; j < 32; j = j + 1)
//     begin
//         assign gpio_data_oe[j] = out[j] && (!latch_data[j] || !od[j]);
//     end
//     assign gpio_data_out = latch_data;

//	assign ctrl[13] = wr_req;
//	assign ctrl[14] = rd_req;
//	assign status[3] = clr_overflow;
//	assign status[2] = empty;
//	assign status[1] = full;
//	assign status[0] = overflow;



	fifo_fixed tx_fifo
    (
        .clock(S_AXI_ACLK),         //input
        .reset(S_AXI_ARESETN),      //input
        .datain(fifo_wr_data),      //input [31:0]
        .dataout(fifo_rd_data),     //output [31:0]
        .clr_overflow(clr_overflow_req | clr_overflow_final),   //input
        .rd_req(fifo_rd_req | rd_req_final),       //input also piggybacks, but off an axird or assert
        .wr_req(fifo_wr_req | wr_req_final),       //input piggybacks off the axiwr or an actual assert. 
        .empty(fifo_empty),         //output
        .full(fifo_full),           //output
        .overflow(fifo_overflow),   //output
        .wr_index(fifo_wr_index),
        .rd_index(fifo_rd_index),
        .watermark(fifo_watermark)
    );

//     // Interrupt generation
//     integer i;
//     reg [31:0] last_read_port_data;
//     always_ff @ (posedge axi_clk)
//     begin
//         if (axi_resetn == 1'b0)
//         begin
//             last_read_port_data <= 32'b0;
//             int_status <= 32'b0;
//         end
//         else if (int_clear_request != 32'b0)
//             int_status <= int_status & ~int_clear_request;
//         else
//         begin
//             last_read_port_data <= read_port_data;
//             for (i = 0; i < 32; i = i + 1)
//             begin
//                 if (int_enable[i])
//                 begin
//                     if (int_edge_mode[i])
//                     begin
//                         if (int_positive[i] && read_port_data[i] && !last_read_port_data[i])
//                             int_status[i] <= 1'b1;
//                         if (int_negative[i] && !read_port_data[i] && last_read_port_data[i])
//                             int_status[i] <= 1'b1;
//                     end
//                     else
//                     begin
//                         if (int_positive[i] && read_port_data[i])
//                             int_status[i] <= 1'b1;
//                         if (int_negative[i] && !read_port_data[i])
//                             int_status[i] <= 1'b1;
//                     end
//                 end
//             end
//         end
//     end
//     assign intr = int_status != 32'b0;

    reg brd_tick;    
    the_brd the_brd_instantiation
    (
    .clk(axi_clk),
    .enable(ctrl[15]),   //control register should drive this
    .ibrd(brd[31:6]),     //this lives in the brd reg
    .fbrd(brd[5:0]),     //this lives in the brd reg
    .reset(axi_resetn),
    .out(brd_tick)      //single clock tick of brd (each clk edge)
    );

    //baud_clk
    reg baud_clk_next;

    always @(posedge axi_clk or negedge axi_resetn)
    begin
        if(axi_resetn == 0)
        begin
            baud_clk_next <= 0;
        end
        else if(brd_tick)
        begin
        baud_clk_next <= ~baud_clk_next;
        end 
    end
    assign baud_clk = baud_clk_next;

endmodule


//the fixed instantiated fifo, including edge detection.
module fifo_fixed(
    input clock,
    input reset,
    input [31:0] datain,
    output [31:0] dataout,
    input clr_overflow,
    input rd_req,
    input wr_req,
    output empty,
    output full,
    output overflow,
    output [3:0] wr_index,
    output [3:0] rd_index,
    output [3:0] watermark
    );

    logic rd_out,wr_out,clr_out;

    edge_detector rd_det
    (
        .clk(clock),
        .in(rd_req),
        .out(rd_out)
    );
    edge_detector wr_det
    (
        .clk(clock),
        .in(wr_req),
        .out(wr_out)
    );
    edge_detector clr_det
    (
        .clk(clock),
        .in(clr_overflow),
        .out(clr_out)
    );

    fifo15x32 a_fifo
    (
        .clk(clock),
        .reset(reset),
        .wr_data(datain),
        .wr_request(wr_out),
        .rd_request(rd_out),
        .clear_overflow_request(clr_out),
        .rd_data(dataout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .wr_index(wr_index),
        .rd_index(rd_index),
        .watermark(watermark)
    );
endmodule


//our fifo module
module fifo15x32
(
    input clk,
    input reset,
    input [31:0] wr_data,
    input wr_request,
    input rd_request,
    input clear_overflow_request,
    output [31:0] rd_data,
    output empty,
    output full,
    output reg overflow,
    output reg [3:0] wr_index,
    output reg [3:0] rd_index,
    output reg [3:0] watermark
);

    logic  [31:0]data[0:15];            //data array holds the data in the fifo. though we have instantiated a 16 row register, due to index and flag rules only 15 are useful without encountering overflow.
    assign rd_data = data[rd_index];    //always look at the rd_data at the last given rd_index.

//flags
    assign empty = (wr_index == rd_index);              //if we have read as much as we have written we are empty
    assign full = (((wr_index+1) % 16) == rd_index);    //if iterating the write index would make us seem empty, then we are full.

    always_comb
    begin
        watermark = (wr_index - rd_index);
    end

//at posedge clock
    always_ff @ (posedge clk)
    begin

//writes
        if(wr_request && (full==0) && (overflow==0))       //if someone wants to write and we aren't full or overflowed
        begin
            wr_index <= wr_index + 1;   //iterate idx
            data[wr_index] <= wr_data;  //push data in the array
        end
        else if(wr_request && (full || overflow))  //if someone wants to write and we are full or already in overflow
        begin
            overflow <= 1'b1;                       //wig out and overflow, freezing the fifo til clear
        end

//reads
        if(rd_request && !empty)      //if someone wants to read and we aren't empty, regardless of overflow
        begin
            rd_index <= rd_index + 1; //iterate idx, which changes the output and watermark.
        end


//resets
        if(!reset)                //if we are clearing
        begin
            wr_index <= 4'b0;       //reset indices
            rd_index <= 4'b0;       //reset indices
            overflow <= 1'b0;       //reset overflow bit.
            data[0] <= 32'b0;       //push a clear val to the 1st row so we output 0s.
        end

        if(clear_overflow_request==1)   //assuming that overflow clear requests simply stop the sticking.
        begin
            overflow <= 1'b0;       //then we should clear the bit and move on.
        end
    end

endmodule


//Implement a edge detector module so that outputs a single-clock pulse when a positive edge is
//detected so that a write or read request longer than 1 clock results in only one write or read. This
//is critical to the AXI connection
module edge_detector
(
    input clk,
    input logic in,
    output logic out
);
    logic last_in;

    always_ff @ (posedge clk)
    begin
        if(in & !last_in)       //if we changed edges
        begin
            out <= 1;
        end
        else
        begin
            out <= 0;
        end
        last_in <= in;
    end
endmodule


//this module takes in the ibrd+fbrd, then divides the clock rate using it. outputs a toggle fx, not a clock.
module the_brd
(
    input clk,
    input enable,   //control register should drive this
    input [31:6] ibrd,     //this lives in the brd reg
    input [5:0]fbrd,     //this lives in the brd reg
    input reset,
    output logic out
    
    
);
    
    logic [31:0] brd_cntr, brd_thr;
    logic [5:0] acc_frac;
    logic [6:0] acc_add,fbrd_half;
    logic brd_output;

    assign out = (brd_output & enable);

    always_comb
    begin
        brd_thr = ((ibrd)/2);
        fbrd_half = (({ibrd[6],fbrd}+1)/2);    //add the ibrd half to fbrd if it exists, then half them
        end
    
    always_ff @ (posedge clk or negedge reset)
    begin
        if(!reset)              //reset all the values.
        begin
            acc_frac <= 0;
            acc_add <= 0;
            brd_cntr <= 0;
            brd_output <= 0;
        end
        else if(brd_cntr >= brd_thr)           //if our tick hits the threshold
        begin
            if(acc_add[6])              //if we accumulate enough to make a whole
            begin
                brd_cntr <=0;           //we delay a cycle
            end 
            else
            begin
                brd_cntr <= 1;          //otherwise we don't delay
            end            
            acc_frac <= acc_add[5:0];   //either way accumulate.
            brd_output <= 1;                   //and pulse an output
            acc_add <= acc_frac+fbrd_half;        //and add frac to acc
        end
        else
        begin
            brd_cntr <= brd_cntr + 1;           //tick
            brd_output <= 0;                     //ensure it is a pulsed output
            acc_add <= acc_frac+fbrd_half;        //and add frac to acc (otherwise vivado yells clock stuff at us)
        end
    end
endmodule
