`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: uta estudiante
// Engineer: ryan smith
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


module lab3(


    );
endmodule


module fifo15x16
(
    input clk,
    input reset,
    input [15:0] wr_data,
    input wr_request,
    input rd_request,
    input clear_overflow_request,
    output [15:0] rd_data,
    output empty,
    output full,
    output reg overflow,
    output reg [3:0] wr_index,
    output reg [3:0] rd_index,
    output reg [3:0] watermark
);







endmodule


//Implement a edge detector module so that outputs a single-clock pulse when a positive edge is
//detected so that a write or read request longer than 1 clock results in only one write or read. This
//is critical to the AXI connection
module edge_detector
(
    input clk,
    input in,
    output reg out
);
    logic lastin;
    always_ff @(posedge clk)
    begin
        lastin <= in;
        if(lastin!=in)
        begin
            out<=in;    //will only trigger high at posedge, else will trigger low
        end
        else begin
            out <= 0;   //will set to low when not at posedge.
        end
    end
endmodule