// Demo example for Xilinx XUP Blackboard rev D (demo.sv)
// Jason Losh
//
// Switch inputs
//   SW[2:0] feeding logic
// Onboard LEDs
//   x on LED[0]
//   y on LED[1]
//   z on LED[2]

module demo(
    input CLK100,           // 100 MHz clock input
    output [9:0] LED,       // RGB1, RGB0, LED 9..0 placed from left to right
    output [2:0] RGB0,      
    output [2:0] RGB1,
    output [3:0] SS_ANODE,   // Anodes 3..0 placed from left to right
    output [7:0] SS_CATHODE, // Bit order: DP, G, F, E, D, C, B, A
    input [11:0] SW,         // SWs 11..0 placed from left to right
    input [3:0] PB,          // PBs 3..0 placed from left to right
    inout [23:0] GPIO,       // PMODA-C 1P, 1N, ... 3P, 3N order
    output [3:0] SERVO,      // Servo outputs
    output PDM_SPEAKER,      // PDM signals for mic and speaker
    input PDM_MIC_DATA,      
    output PDM_MIC_CLK,
    output ESP32_UART1_TXD,  // WiFi/Bluetooth serial interface 1
    input ESP32_UART1_RXD,
    output IMU_SCLK,         // IMU spi clk
    output IMU_SDI,          // IMU spi data input
    input IMU_SDO_AG,        // IMU spi data output (accel/gyro)
    input IMU_SDO_M,         // IMU spi data output (mag)
    output IMU_CS_AG,        // IMU cs (accel/gyro) 
    output IMU_CS_M,         // IMU cs (mag)
    input IMU_DRDY_M,        // IMU data ready (mag)
    input IMU_INT1_AG,       // IMU interrupt (accel/gyro)
    input IMU_INT_M,         // IMU interrupt (mag)
    output IMU_DEN_AG        // IMU data enable (accel/gyro)
    );
     
    // Terminate all of the unused outputs or i/o's
    assign LED[9:1] = 9'b000000000;
    assign RGB0 = 3'b000;
    assign RGB1 = 3'b000;
    // assign SS_ANODE = 4'b0000;
    // assign SS_CATHODE = 8'b11111111;
    assign GPIO = 24'bzzzzzzzzzzzzzzzzzzzzzzzz;
    assign SERVO = 4'b0000;
    assign PDM_SPEAKER = 1'b0;
    assign PDM_MIC_CLK = 1'b0;
    assign ESP32_UART1_TXD = 1'b0;
    assign IMU_SCLK = 1'b0;
    assign IMU_SDI = 1'b0;
    assign IMU_CS_AG = 1'b1;
    assign IMU_CS_M = 1'b1;
    assign IMU_DEN_AG = 1'b0;
    
    logic [11:0] switchd;
    logic [7:0] segments [3:0];
    logic [15:0] bcds;        
    logic [3:0] btns;
    
assign btns = PB;   //debounce logic stuck on, figure it out later if debounce is needed.

//convert switch input into timer controlled with buttons.
start_stop st_sp
(
    .clk_in(CLK100), .stp(~btns[2]), .strt(~btns[3]), .clr(~btns[0]), .clrstrt(~btns[1]),    //input clk_in, strt, stp, clr, clrstrt
    .time_cnt(SW[11:0]),                                                                //input [11:0] time_cnt,
    .time_out(switchd[11:0]),                                                           //output logic [11:0] time_out
    .timesup(LED[0])                                                                    //output alarm
);


//convert the switch inputs into a 4digit bcd inside of a 16bit register
sw_to_sw sw_to_sw_inst
(
    .switch(switchd[11:0]),
    .switched(bcds[15:0])
);

//convert bcd to 7seg outputs
decTo8 d_0
(
    .hex(bcds[15:12]),
    .SEV(segments[3])
);
decTo8 d_1
(
    .hex(bcds[11:8]),
    .SEV(segments[2])
);
decTo8 d_2
(
    .hex(bcds[7:4]),
    .SEV(segments[1])
);
decTo8 d_3
(
    .hex(bcds[3:0]),
    .SEV(segments[0])
);

//accept multidimensional input for 7seg, rapidly output anode and matching cathode
seven_seg sev_seg
(
    .md_in(segments),            //input [7:0] md_in [3:0],    //multidimensional input per assignment doc.
    .clok(CLK100), .clr(~btns[0]),  //input clok, clr,
    .anode(SS_ANODE),           //output [3:0] anode,
    .cathode(SS_CATHODE)        //output [7:0] cathode
);

endmodule



module decTo8       //this particular version uses active low with dGFEDCBA for segment registers, G=middle, A=top, d=decimalpoint
(
    input [3:0] hex,
    output logic [7:0] SEV
);

    always_comb
    begin
        case (hex)
            4'b0000: SEV = 8'b11000000; //0
			4'b0001: SEV = 8'b11111001; //1
			4'b0010: SEV = 8'b10100100; //2
			4'b0011: SEV = 8'b10110000; //3
			4'b0100: SEV = 8'b10011001; //4
			4'b0101: SEV = 8'b10010010; //5
			4'b0110: SEV = 8'b10000010; //6
			4'b0111: SEV = 8'b11111000; //7
			4'b1000: SEV = 8'b10000000; //8
			4'b1001: SEV = 8'b10010000; //9
			4'b1010: SEV = 8'b10001000; //A
			4'b1011: SEV = 8'b10000011; //b
			4'b1100: SEV = 8'b11000110; //C
			4'b1101: SEV = 8'b10100001; //d
			4'b1110: SEV = 8'b10000110; //E
			4'b1111: SEV = 8'b10001110; //F
			endcase
    end

endmodule




//convert switch settings to sw_set
module sw_to_sw
    (
        input logic [11:0] switch,
        output logic [15:0] switched
    );
    
    logic [5:0] sw1,sw2;
    logic [3:0] a,b,c,d;
    
    assign sw1 = switch[11:6];
    assign sw2 = switch[5:0];
    
    tens_ones_time minutes
    (
        .sw(sw1),
        .th(a),
        .tl(b)
    );
    
    tens_ones_time seconds
    (
        .sw(sw2),
        .th(c),
        .tl(d)
    );

    always_comb
    begin
        switched[15:0] <= {a,b,c,d};
    end


endmodule

//breakout tens and ones from a 12digit to two 4 digit bins
module tens_ones_time
(
    input [5:0]sw,
    output logic [3:0]th,tl
);

always_comb
begin
    case({sw[5:0]})
        6'b111111: th = 4'd6; // 6
        6'b111110: th = 4'd6; // 6
        6'b111101: th = 4'd6; // 6
        6'b111100: th = 4'd6; // 6
        6'b111011: th = 4'd5; // 5
        6'b111010: th = 4'd5; // 5
        6'b111001: th = 4'd5; // 5
        6'b111000: th = 4'd5; // 5
        6'b110111: th = 4'd5; // 5
        6'b110110: th = 4'd5; // 5
        6'b110101: th = 4'd5; // 5
        6'b110100: th = 4'd5; // 5
        6'b110011: th = 4'd5; // 5
        6'b110010: th = 4'd5; // 5
        6'b110001: th = 4'd4; // 4
        6'b110000: th = 4'd4; // 4
        6'b101111: th = 4'd4; // 4
        6'b101110: th = 4'd4; // 4
        6'b101101: th = 4'd4; // 4
        6'b101100: th = 4'd4; // 4
        6'b101011: th = 4'd4; // 4
        6'b101010: th = 4'd4; // 4
        6'b101001: th = 4'd4; // 4
        6'b101000: th = 4'd4; // 4
        6'b100111: th = 4'd3; // 3
        6'b100110: th = 4'd3; // 3
        6'b100101: th = 4'd3; // 3
        6'b100100: th = 4'd3; // 3
        6'b100011: th = 4'd3; // 3
        6'b100010: th = 4'd3; // 3
        6'b100001: th = 4'd3; // 3
        6'b100000: th = 4'd3; // 3
        6'b011111: th = 4'd3; // 3
        6'b011110: th = 4'd3; // 3
        6'b011101: th = 4'd2; // 2
        6'b011100: th = 4'd2; // 2
        6'b011011: th = 4'd2; // 2
        6'b011010: th = 4'd2; // 2
        6'b011001: th = 4'd2; // 2
        6'b011000: th = 4'd2; // 2
        6'b010111: th = 4'd2; // 2
        6'b010110: th = 4'd2; // 2
        6'b010101: th = 4'd2; // 2
        6'b010100: th = 4'd2; // 2
        6'b010011: th = 4'd1; // 1
        6'b010010: th = 4'd1; // 1
        6'b010001: th = 4'd1; // 1
        6'b010000: th = 4'd1; // 1
        6'b001111: th = 4'd1; // 1
        6'b001110: th = 4'd1; // 1
        6'b001101: th = 4'd1; // 1
        6'b001100: th = 4'd1; // 1
        6'b001011: th = 4'd1; // 1
        6'b001010: th = 4'd1; // 1
        6'b001001: th = 4'd0; // 0
        6'b001000: th = 4'd0; // 0
        6'b000111: th = 4'd0; // 0
        6'b000110: th = 4'd0; // 0
        6'b000101: th = 4'd0; // 0
        6'b000100: th = 4'd0; // 0
        6'b000011: th = 4'd0; // 0
        6'b000010: th = 4'd0; // 0
        6'b000001: th = 4'd0; // 0
        6'b000000: th = 4'd0; // 0
    endcase
end

always_comb
begin
    case({sw[5:0]})
        6'b111111: tl = 4'd3; // 3
        6'b111110: tl = 4'd2; // 2
        6'b111101: tl = 4'd1; // 1
        6'b111100: tl = 4'd0; // 0
        6'b111011: tl = 4'd9; // 9
        6'b111010: tl = 4'd8; // 8
        6'b111001: tl = 4'd7; // 7
        6'b111000: tl = 4'd6; // 6
        6'b110111: tl = 4'd5; // 5
        6'b110110: tl = 4'd4; // 4
        6'b110101: tl = 4'd3; // 3
        6'b110100: tl = 4'd2; // 2
        6'b110011: tl = 4'd1; // 1
        6'b110010: tl = 4'd0; // 0
        6'b110001: tl = 4'd9; // 9
        6'b110000: tl = 4'd8; // 8
        6'b101111: tl = 4'd7; // 7
        6'b101110: tl = 4'd6; // 6
        6'b101101: tl = 4'd5; // 5
        6'b101100: tl = 4'd4; // 4
        6'b101011: tl = 4'd3; // 3
        6'b101010: tl = 4'd2; // 2
        6'b101001: tl = 4'd1; // 1
        6'b101000: tl = 4'd0; // 0
        6'b100111: tl = 4'd9; // 9
        6'b100110: tl = 4'd8; // 8
        6'b100101: tl = 4'd7; // 7
        6'b100100: tl = 4'd6; // 6
        6'b100011: tl = 4'd5; // 5
        6'b100010: tl = 4'd4; // 4
        6'b100001: tl = 4'd3; // 3
        6'b100000: tl = 4'd2; // 2
        6'b011111: tl = 4'd1; // 1
        6'b011110: tl = 4'd0; // 0
        6'b011101: tl = 4'd9; // 9
        6'b011100: tl = 4'd8; // 8
        6'b011011: tl = 4'd7; // 7
        6'b011010: tl = 4'd6; // 6
        6'b011001: tl = 4'd5; // 5
        6'b011000: tl = 4'd4; // 4
        6'b010111: tl = 4'd3; // 3
        6'b010110: tl = 4'd2; // 2
        6'b010101: tl = 4'd1; // 1
        6'b010100: tl = 4'd0; // 0
        6'b010011: tl = 4'd9; // 9
        6'b010010: tl = 4'd8; // 8
        6'b010001: tl = 4'd7; // 7
        6'b010000: tl = 4'd6; // 6
        6'b001111: tl = 4'd5; // 5
        6'b001110: tl = 4'd4; // 4
        6'b001101: tl = 4'd3; // 3
        6'b001100: tl = 4'd2; // 2
        6'b001011: tl = 4'd1; // 1
        6'b001010: tl = 4'd0; // 0
        6'b001001: tl = 4'd9; // 9
        6'b001000: tl = 4'd8; // 8
        6'b000111: tl = 4'd7; // 7
        6'b000110: tl = 4'd6; // 6
        6'b000101: tl = 4'd5; // 5
        6'b000100: tl = 4'd4; // 4
        6'b000011: tl = 4'd3; // 3
        6'b000010: tl = 4'd2; // 2
        6'b000001: tl = 4'd1; // 1
        6'b000000: tl = 4'd0; // 0
    endcase    
end

endmodule


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

module start_stop
(
    input clk_in, strt, stp, clr, clrstrt,
    input [11:0] time_cnt,
    output logic [11:0] time_out,
    output logic timesup
);

    logic int_clk, clk_s, strt_now, strt_nxt, stpd_now, stpd_nxt, runnin, clrd;
    logic [5:0] min, sec, min_nxt, sec_nxt;
    logic but_srsly_clr;
    logic [31:0] time_counter;
    
    always_comb
    begin
        but_srsly_clr <= clr * clrstrt;
    end

    
    //fix strt_stp logic to separate buttons.
    always_ff @ (negedge clk_in)   //always be checking
    begin
        //push next states and current states
        strt_nxt <= strt;
        strt_now <= strt_nxt;
        stpd_nxt <= stp;
        stpd_now <= stpd_nxt;
        
        if(clr == 0)    //if clear, clear settings.
        begin
            runnin <= 1'b0;
        end
        else if(clrstrt == 0)   //clear but also start
        begin
            runnin <= 1'b1;
        end
        else if (!strt_nxt & strt_now)   //if we need to start
        begin
            runnin <= 1'b1;
        end
        else if (!stpd_nxt & stpd_now)  //if we need to stop.
        begin
            runnin <= 1'b0;
        end
        
        if(but_srsly_clr == 0)  //if we need to clear
        begin
            time_counter <= 32'd99999999;
            clk_s = 0;
        end
        else if(runnin == 0)    //if we aren't running don't run
        begin
            clk_s <= 0;
        end
        else if(time_counter == 32'd0)
        begin
            //then we have reached a second and should reset and also output now
            clk_s <= 1;
            time_counter<= 32'd99999999;
        end
        else if(runnin == 1)    //if we are running then decrement
        begin
            time_counter <= time_counter -1;
        end
        
        if(clk_s==1 && runnin == 1)    //if we hit a second.
        begin
        if(sec == 6'd1 && min == 6'd0)
        begin
            timesup<=1; //trigger 1 tick early so we catch the alarm on 0.
        end
            if(sec == 6'd0)    //check if we are out of seconds.
            begin
                if(min == 6'd0) //check if we are out of minutes
                begin
                    timesup <= 1;
                end
                else    //then we aren't out of minutes, and should decrement minutes and reset seconds
                begin
                    min <= min-1;
                    sec <= sec+59;
                end
            end
            else
            begin
                sec <= sec-1;
            end
            clk_s <= 0;
        end
        

        
        if(but_srsly_clr == 0)    //if we get a clr, then push the switch settings into the current count and clear the alarm
        begin
            //rectify sec
            if(time_cnt[5:0] == 6'b111111 ||time_cnt[5:0] == 6'b111110 ||time_cnt[5:0] == 6'b111101 ||time_cnt[5:0] == 6'b111100)
            begin
                sec <= 6'd59; //set seconds to 59 max
            end
            else
            begin
                sec <= time_cnt[5:0];
            end
            //rectify minutes
            if(time_cnt[11:6] == 6'b111111 ||time_cnt[11:6] == 6'b111110 ||time_cnt[11:6] == 6'b111101 ||time_cnt[11:6] == 6'b111100)
            begin
                min <= 6'd60;   // set min to 60 max
            end
            else
            begin
                min <= time_cnt[11:6];  //otherwise just do the thing
            end
            timesup <= 0;
        end
    end
    
//what was this for?    
//    //ok fine, redo the clock to just do the thing instead of using a clockdiv
//    always_ff @ (posedge clk_in)
//    begin

//    end
    

    always_comb
    begin
        time_out <= {min,sec};
    end

endmodule



module seven_seg
(
    input [7:0] md_in [3:0],    //multidimensional input per assignment doc.
    input clok, clr,
    output [3:0] anode,
    output [7:0] cathode
);

    logic [1:0] st;
    logic clk_bet;


    //clock ladder to slow standard clock
    logic [23:0] clk_divd; //holds output of clockladder
	NbitBinCount #(.N(24)) ClockLadder 
	(
		.COUNT(clok) ,	// input  COUNT_sig
		.CLEAR(clr) ,	// input  CLEAR_sig
		.y(clk_divd) 	// output [N-1:0] y_sig
	);

//so NbitBinCount runs off CLK100 triggered at posedge, so 100MHz.
//then it counts upwards ad infinitum.
//assume we want a 120hz refresh just because.
// 120*4 = 480      cause there are 4 displays to get through for a single cycle we realy want 480hz overall.
// 100e6/480 = ~208333
// log(208333,2) = ~17.7
//lets keep it fast then at 17.
// 2^17 = 131072
// 100e6/131072 = ~763
// 763/4 = ~190
//good enough.

    FSM FMS_inst
    (
        .clock(clk_divd[17]),
        .reset(clr),
        .SEL(st),         //2bit output state
        .AN(anode)           //4bit output selection
    );
    
    Four2OneMux four21_inst
    (
        .In(st),  //2bit state input
        //these next are all 4bits
        .D0(md_in[3]),  //input for 0 state
        .D1(md_in[2]),  //input for 1 state
        .D2(md_in[1]),  //input for 2 state
        .D3(md_in[0]),  //input for 3 state
        .Y(cathode)    //output 4bit
    );

endmodule


//systemverilog 4 to one multiplexor. modified from dl2
module Four2OneMux
	(
		input [1:0] In,
		input [7:0] D0,D1,D2,D3,
		output logic [7:0] Y
	);

	always_comb
		case (In)
			2'b00: Y = D0;
			2'b01: Y = D1;
			2'b10: Y = D2;
			2'b11: Y = D3;
	endcase
endmodule


//finite state machine module from dl2 with mod for blackboard revd
module FSM
	(
		input clock, reset,
		output reg [1:0] SEL,
		output reg [3:0] AN
	);
	reg [1:0] state, nextstate;
	always @ (negedge clock, negedge reset)
		if (reset == 0) state <= 2'b00; else state <= nextstate;
	always @ (state)
		case ({state})
		2'b00: begin nextstate = 2'b01; SEL = 2'b00; AN = 4'b0111; end
		2'b01: begin nextstate = 2'b10; SEL = 2'b01; AN = 4'b1011; end
		2'b10: begin nextstate = 2'b11; SEL = 2'b10; AN = 4'b1101; end
		2'b11: begin nextstate = 2'b00; SEL = 2'b11; AN = 4'b1110; end
		endcase
endmodule


//maybe just count til the time and push a clk_s? either way no go.
////modified clock divider takes 100mhz signal and outputs a 1hz signal. Use output on negedge.modified from dl2
//module clock_div
//	(
//		input clk, reset,
//		output clk_out
//	);
	
//	logic [26:0] r_reg;
//	logic [26:0] r_nxt;
//	logic clk_track;

//	always @(negedge clk or negedge reset)
//	begin
//		if (reset == 0)
//        begin
//            r_reg <= 0;
//            clk_track <= 1'b0;
//        end
//		else if (r_nxt == 26'd49999999)
//        begin
//            r_reg <= 0;
//            clk_track <= ~clk_track;
//        end
//		else
//			r_reg <= r_nxt;
//	end

//	assign r_nxt = r_reg+1;
//	assign clk_out = clk_track;

//endmodule