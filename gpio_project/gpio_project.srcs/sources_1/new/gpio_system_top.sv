// Top level file for hosting various modules for Xilinx XUP Blackboard rev D 
// (gpio_system_top.sv)
// ryan smith adapted from gpio example by Jason Losh
//
// 32-bit GPIO port:
//   GPIO port for IP module tied to GPIO [23:0]
//   INTR debug output for IP module tied to RGB0[1]
//   AXI4-lite aperature memory offset is 0x00000000

module the_system_top (
    input CLK100,
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
    output IMU_DEN_AG,       // IMU data enable (accel/gyro)
    inout [14:0]DDR_addr,
    inout [2:0]DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p,
    inout DDR_cke,
    inout DDR_cs_n,
    inout [3:0]DDR_dm,
    inout [31:0]DDR_dq,
    inout [3:0]DDR_dqs_n,
    inout [3:0]DDR_dqs_p,
    inout DDR_odt,
    inout DDR_ras_n,
    inout DDR_reset_n,
    inout DDR_we_n,
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb
    );
     
    // Terminate all of the unused outputs or i/o's
    // assign LED = 10'b0000000000;
    //assign RGB0 = 3'b000;
    assign RGB1 = 3'b000;
    // assign SS_ANODE = 4'b0000;
    // assign SS_CATHODE = 8'b11111111;
    assign GPIO[23:1] = 23'bzzzzzzzzzzzzzzzzzzzzzzz;
    assign SERVO = 4'b0000;
    assign PDM_SPEAKER = 1'b0;
    assign PDM_MIC_CLK = 1'b0;
    assign ESP32_UART1_TXD = 1'b0;
    assign IMU_SCLK = 1'b0;
    assign IMU_SDI = 1'b0;
    assign IMU_CS_AG = 1'b1;
    assign IMU_CS_M = 1'b1;
    assign IMU_DEN_AG = 1'b0;


    // display c (crude) on left seven segment display
    assign SS_ANODE = 4'b0111;
    assign SS_CATHODE = 8'b10100111;
    

    // Tie gpio to PMOD connectors
    wire [31:0] gpio_data_in;
    wire [31:0] gpio_data_out;
    wire [31:0] gpio_data_oe;

//    // pin control
//    genvar j;
//    for (j = 1; j < 21; j = j + 1)
//        assign GPIO[j] = gpio_data_oe[j] ? gpio_data_out[j] : 1'bz;
//    assign gpio_data_in = {8'b0, GPIO[22:1]};

//    // pin control
//    genvar j;
//    for (j = 1; j < 21; j = j + 1)
//        assign GPIO[j] = gpio_data_oe[j] ? gpio_data_out[j] : 1'bz;
//    assign gpio_data_in = {8'b0, GPIO[22:1]};
        
    // Tie intr output to RGB0 green LED
    wire intr;
    assign RGB0 = {1'b0, intr, 1'b0};


//SPI
    wire [31:0] datain;
    wire [31:0] dataout;
    wire [31:0] status; //        .rd_index(status[31:28]),.wr_index(status[27:24]),.watermark(status[23:20])
    wire clr_overflow;
    wire rd_req;
    wire wr_req;
    wire empty;
    wire full;
    wire overflow;
    wire baud_clk;
    
    //metastability for switches & a button
    reg [11:0] sw_last;
    reg [11:0] sw_final;
    reg reset_btn_last;
    reg reset_btn_final;
    always_ff @(posedge CLK100)
    begin
        sw_last <= SW;
        sw_final <= sw_last;
        reset_btn_last <= PB[3];
        reset_btn_final <= reset_btn_last;
    end

    assign GPIO[0] = baud_clk;

//    //tryna reset and failing. figure it out later no time rn
//    wire resetter;
//    assign resetter = (DDR_reset_n | reset_btn_final);
    
    //sw handlin
    reg [11:0] led_out;
    always_ff @ (posedge CLK100)
    begin
        if(sw_final[1:0] == 2'b00)
        begin
            led_out[3:0] <= status[31:28];  //rd_index
            led_out[7:4] <= status[27:24];  //wr_index
            led_out[9:8] <= 2'b0;
        end
        if(sw_final[1:0] == 2'b01)
        begin
            led_out[9:0] <= {2'b0,status[23:20],1'b0,status[2:0]};    //watermark on the left; 5 blanks fe,ff,ov on the right
        end
        if(sw_final[1:0] == 2'b10)
        begin
            led_out[9:0] <= dataout[9:0];
        end        
    end
    
    assign LED = led_out;


    // Instantiate system wrapper
    system_wrapper system(
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .gpio_data_in(gpio_data_in),
        .gpio_data_out(gpio_data_out),
        .gpio_data_oe(gpio_data_oe),
        .intr(intr),
        .datain(datain),
        .dataout(dataout),
        .status(status),
        .clr_overflow(clr_overflow),
        .rd_req(0), //set definite, maybe we will have cause to poke it later, but for now any wr/rd should just do
        .wr_req(0), //ditto
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .baud_clk(baud_clk)
        );

endmodule