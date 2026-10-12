`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 05:38:18 PM
// Design Name: 
// Module Name: lab3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//the fixed instantiated fifo, including edge detection.
module fifo_fixed(
    input clock,
    input reset,
    input clr_overflow,
    input [1:0] sw,
    input [31:0] datain,
    input rd_req,
    input wr_req,
    output [10:0] LEDs,
    output [31:0] dataout,
    output empty,
    output full,
    output overflow
    );

    logic rd_out,wr_out;
    logic [3:0] rd_id_out;
    logic [3:0] wr_idx_out;
    logic [3:0] count;

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
    
    fifo15x32 a_fifo
    (
        .clk(clock),
        .reset(reset),
        .wr_data(datain),
        .wr_request(wr_out),
        .rd_request(rd_out),
        .clear_overflow_request(clr_overflow),
        .rd_data(dataout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .wr_index(wr_idx_out),
        .rd_index(rd_idx_out),
        .watermark(count)
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

//at posedge clock
    always_ff @ (posedge clk)
    begin

//writes
        if(wr_request && !full && !overflow)       //if someone wants to write and we aren't full or overflowed
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

//watermark
        watermark <= wr_index - rd_index;   //per doc we need to have the watermark dpend on the indices. writes are always greater or equal, and this should wrap around ok.
       
        
//resets        
        if(reset==1)                //if we are clearing
        begin
            watermark <= 4'b0;      //reset the watermark
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
    input reg in,
    output reg out
);
    logic last_in;
    
    always_ff @ (posedge clk)
    begin
        if(in & !last_in)       //if we changed edges
        begin
            out=1;
        end      
        else
        begin
            out=0;
        end
    end
endmodule