/////////////////////////////////////
//toplevel module that runs the thing.
module lab1
(
    
);

logic [15:0] bcds;
logic [7:0] disps [3:0];

//timer
    timing timer_inst
    (
        .clk(clk),          //the clock (100MHz is assumed)
        .clr(clr),          //reset button
        .sw_set(switches),  //switches in bcd to set mmss
        .mmss(bcds)         //output minutes and seconds in bcd
    );


//4ct decTo8 instantiations
    decTo8 dt8_inst[3:0]
    (
        .bcd(bcds),         //input 4bitea = 16 bits
        .lcd_out(disps)     //output 8bitea = 64bits
    );

//output to 4ct 7-segment display from 8x4 input array.
    seven_seg seven_seg_inst
    (
        .disp(disps),
        .clk(clk),
        .digit(digit_out),
        .cathodes(cat_out)
    );



endmodule


//////////////////////
//holds timer
module timing
(
    input clk,
    input clr,
    input stop_start,
    input logic [15:0] sw_set,
    output logic [15:0] mmss
);

logic [26:0] second_now;    //our ticker, which counts to 100meg
logic tick;                 //our tick, which indicates a second has passed
logic stop_start_flag;      //should we be active or not active

//count until we get to the right number of count, which should be like 100,000,000, or if a reset occurs
always@(posedge clk or negedge clr or negedge stop_start)
begin
    if(stop_start == 0)                         //if we the stop/start button is pressed
    begin
        stop_start_flag <=1;                    //then we should set the flag high to say stop doing things.
    end else begin
        if(!(clr | stop_start_flag))            //if neither flag is high proceed
        begin
            second_now <= '0;                   //if we reset, then clear the tick.
        end else begin
            second_now <= second_now + 1'b1;    //otherwise tick up.
            if(second_now > 100000000-1)        //if we hit the time
            begin
                tick <= 1'b1;                   //push the tick out if we should be ticking
            end
        end
    end
end

always@ (posedge tick)          //handle seconds tick
begin
    second_now <= '0;           //reset ticker
    tick <= '0;                 //reset tick
    mmss <= mmss - 1'b1;        //decrement seconds
    if(mmss[7:0] > 0)           //if we can decrement
    begin
        mmss <= mmss -1'b1;     //then simple decrement
    end else begin              //otherwise we looped around
        mmss[7:0] <= 8'b01011001;   //so set seconds to 59
        if(mmss[15:8] > 0)      //and if we can decrement the minute
        begin
            mmss[15:8] <= mmss[15:8] - 1'b1;//then decrement the minute
        end
    end
end

always@(negedge clr)        //when reset button occurs
begin
    second_now <= '0;       //clear our tick
    mmss <= sw_set;         //and push the switch settings to it.
end

endmodule


////////////////////////////////////////////////
//converts decimal input to common anode output of a seven segement digit display. essentially BCD to seven-segment like in DL1.
module decTo8
(
    input [3:0] bcd,
    output reg [7:0] lcd_out
);

//{dp, g, f, e, d, c, b, a} for blackboard; start at a=top, go clockwise around til f, then center = g
always_comb	
    case ({bcd[3:0]})
        4'b0000: lcd_out = 8'b11000000; // 0
        4'b0001: lcd_out = 8'b11111001; // 1
        4'b0010: lcd_out = 8'b10100100; // 2
        4'b0011: lcd_out = 8'b10110000; // 3
        4'b0100: lcd_out = 8'b10011001; // 4
        4'b0101: lcd_out = 8'b10010010; // 5
        4'b0110: lcd_out = 8'b10000110; // 6
        4'b0111: lcd_out = 8'b11111000; // 7
        4'b1000: lcd_out = 8'b10000000; // 8
        4'b1001: lcd_out = 8'b10010000; // 9
        default: lcd_out = 8'b11111111; // null/empty/blank
    endcase
endmodule


///////////////////////////////
//output to 4ct  7-segment display from 8x4 input array.
module seven_seg
(
    input reg [7:0] disp [3:0],                 //multidimensional dispay data in; 8x4 array.
    input clk,                                  //clk input
    output [3:0] digit,                         //anode driver to select which digit is displayed
    output [7:0] cathodes                       //cathode driver for segment output
);
    
    /*
    Create a module, seven_seg, that accepts a clock input, multidimensional
    display data (8-bits for each of the 4 seven-segment displays), a 4-bit output
    to drive the anodes, and an 8-bit output to drive the cathodes. The module
    should repeatedly cycle through the 4 seven-segment displays driving one
    anode at a time while time multiplexing the correct display data to the
    cathodes. The module should cycle through the 4 anodes fast enough to
    avoid any visible flicker to the human eye (a camera phone will still detect the
    multiplexing).
    */
    
//internal nets
    logic clockout, muxrate;
    logic [31:0] clkladder;
    logic [3:0] muxout;
    logic [1:0] sel;
    assign muxrate = clkladder[17];
    
//ring counter for clkladder
    defparam clkladder_int.N = 32;
    NbitBinCount clkladder_inst
    (
        .COUNT(clk),    //input clk
        .CLEAR(1),  //input clr
        .y(clkladder)   //output clkladder
    );

//four2onemux multiplexer, updates muxout from state and inputs
	Four2OneMux four2one_inst
	(
		.In(sel) , // input state
		.D0(disp[1]) , // input bcd
		.D1(disp[2]) , // input bcd
		.D2(disp[3]) , // input bcd
		.D3(disp[4]) , // input bcd
		.Y(muxout) // output bcd
	);

//decimal to seven-segment with decimal
    decTo8 decTo8_inst
    (
        .bcd(muxout),       //input bcd [3:0]
        .lcd_out(cathodes)  //output 
    );

//controller FSM (finite state machine)
	FSM FSM_inst
	(
		.clock(muxrate) , // input clock
		.reset(1) , // input reset
		.SEL(sel) , // output [1:0]
		.out(digit) // output [3:0] 
    );


endmodule


///////////////////////////////////////////
//systemverilog 4 to one multiplexor.
module Four2OneMux
	(
		input [1:0] In,
		input [3:0] D0,D1,D2,D3,
		output logic [3:0] Y
	);

	always_comb
		case (In)
			2'b00: Y = D0;
			2'b01: Y = D1;
			2'b10: Y = D2;
			2'b11: Y = D3;
	endcase
endmodule


////////////////////////////////////////////
//finite state machine module
module FSM
	(
		input clock, reset,
		output reg [1:0] SEL,
		output reg [3:0] out
	);
	reg [1:0] state, nextstate;
	always @ (negedge clock, negedge reset)
		if (reset == 0) state <= 2'b0; else state <= nextstate;
	always @ (state)
		case ({state})
		2'b00: begin nextstate = 2'b01; SEL = 2'b00; out = 4'b0111; end
		2'b01: begin nextstate = 2'b10; SEL = 2'b01; out = 4'b1011; end
		2'b10: begin nextstate = 2'b11; SEL = 2'b10; out = 4'b1101; end
		2'b11: begin nextstate = 2'b00; SEL = 2'b11; out = 4'b1110; end
		endcase
endmodule


///////////////////////////////////////////////////////
//N-Bit Register module from DL1 modded for system verilog use
module NBitRegister #(parameter N = 4)
	(
		input [N-1:0] D,
		input CLK, CLR,
		output logic [N-1:0] Q
	);
	always_ff @ (posedge CLK, negedge CLR)
		begin
				if (CLR==1'b0) Q <= 0; //register loaded with all 0’s
				else if (CLK==1'b1) Q <= D; //data input values loaded in register
		end
endmodule


//////////////////////////////////////////////////////////
//SystemVerilog behavioral model of an n-bit binary counter
module NbitBinCount #(parameter N = 4)
	(
		input COUNT, CLEAR,
		output logic [N-1:0] y // y is defined as a register
	);
	always_ff @ (posedge COUNT, negedge CLEAR)
		if (CLEAR==1'b0) y <= 0; // y is loaded with all 0's
		else y <= y + 1'b1; // y is incremented
endmodule




