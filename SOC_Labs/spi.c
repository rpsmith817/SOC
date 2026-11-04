// SPI IP FIFO testing
// SPI Shell Command
// Ryan Smith adapted from gpio.c by Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// Hardware configuration:
//
// AXI4-Lite interface:
//   Mapped to offset of 0x20000
//
//

//-----------------------------------------------------------------------------

#include <stdlib.h>         // EXIT_ codes
#include <stdio.h>          // printf
#include <string.h>         // strcmp
#include <stdint.h>			// uint
#include <time.h>			// wait timing
#include "spi_ip.h"         // spi IP library

#define BRDCLKMAX 25000000
#define BRDCLKMIN 100000


#define SPI_IODIR	0x00
#define SPI_GPINTEN	0x02
#define SPI_DEFVAL	0x03
#define SPI_INTCON	0x04
#define SPI_IOCON	0x05
#define SPI_GPPU	0x06
#define SPI_INTCAP	0x08
#define SPI_GPIO	0x09
#define SPI_OLAT	0x0A
#define SPI_WRITE	0x40
#define SPI_READ	0x41

//convert from an integer into an ascii output.
void intToAlpha(uint32_t in, char* buf)
{
    uint32_t val=in;        //set val to input so we can manipulate it without worry
    uint32_t intermediate=0;
    uint8_t len=0;            //an iterator to hold some length
    uint8_t j;
    int16_t i;

    //shortcut if we are 0.
    if(in==0)
    {
        buf[0]='0';
        buf[1]='\0';
        return;
    }

    //get length
    while(val != 0)
    {
        val /= 10;
        len++;
    }    


    //bounds. If len extends beyond 10 digits then something has gone wrong and we should yell about it.
    if(len>11)
    {
        for(i=0;i<10;i++)
        {
            buf[i]='!';
        }
        buf[10]='\0';
        return;
    }

    
    //otherwise we can continue.
    val=1;
    //loop through to get the value into the output buffer
    for(i=len-1;i>-1;i--)
    {
        for(j=0; j<i; j++)
        {
            val*=10;
        }
        intermediate = ((in/val));
        intermediate = intermediate %10;
        buf[len-1-i] = intermediate +'0';
        val=1;
    }

    //terminate the string
    buf[len] = '\0';
    return;
}


//take input clockrate and put the right ibrd+fbrd into BRD_reg so we output tht clock rate.
void setClockRate(int clockRate)
{
	char buf[256];
	long long big_clk = 6400000000LL;			//assuming 100MHz clk
	long long big_baud = (big_clk/clockRate);
	uint32_t ibrd_val = (uint32_t)big_baud/64;	//this might truncate, make sure input is within bounds external to this function.	

	if(ibrd_val == 0){return;}				//if ibrd is 0 then baud will be greater than clock rate, so gtfo. Handle other sanitization at input.

	uint32_t fbrd_val = (uint32_t)(big_baud - (ibrd_val*64));	//this is unlikely to truncate.

	volatile uint32_t the_brd = big_baud;	//big baud is already the value, no need to do weird math to get at the other values, except for debugging.	

	intToAlpha(the_brd,buf);
	printf("the_brd raw is:");
	printf(buf);
	printf("\r\n");
	
	intToAlpha(big_baud,buf);
	printf("big_baud: ");
	printf(buf);
	printf("\r\n");
	
	intToAlpha(ibrd_val,buf);
	printf("ibrd: ");
	printf(buf);
	printf("\r\n");
	
	intToAlpha(fbrd_val,buf);
	printf("fbrd: ");
	printf(buf);
	printf("\r\n");
	
	
	
	//then push the brd
	set_brd(the_brd);
}


uint32_t strto32_t(char* buf)
{
	uint32_t val=0;
	uint32_t tens=1;
	uint8_t len = strlen(buf);
	uint8_t i;
	

	if(len>8) return 0;	//uint32 largest value is 4,294,967,295, or 10 places large, but our input should be between 25mhz and 100khz, so we need 25,000,000 as max, or 8 length

	//set initial tens value
    for(i=1;i<len;i++)
    {
        tens*=10;
    }

    //reset iterator
    i=0;

    //loop through each idx
    while(len!=0)
    {
        val += ((buf[i++]-'0') * tens);       //add to value the numeric value of field times the tens place that it is in.
        tens/=10;                               //divide by tens to reduce tens place
        len--;                                    //iterate down
    }

	return val;
}


//setup the SPI mux pins
void setup_blinky() {
	write_reg(SPI_IODIR, 0xFD);	//1111.1101 -> IO1=output(LED)
	write_reg(SPI_OLAT,  0x00);	//clear output latch
}


//write a byte to a MCP23S08 register
void write_reg(unsigned char reg, unsigned char val) 
{
	unsigned char len = 0;
	unsigned char idx = 0;
	buffer[len++] = SPI_WRITE;		//set to write - put opcode in
	buffer[len++] = reg;			//put in the register to write to
	buffer[len++] = val;			//put in the value to write to that register
	cs_low();						//start frame
	push_data(buffer);				//yell down the line.
	cs_high();						//end frame
}


void init_spi_cs_man(uint8_t mode)
{
	uint32_t val = 0x17 | (1<<9) | (mode<<15);		//set word size 24, assert cs for idle, assert enable spi
	set_control(val);
}


// void init_spi_cs_auto(uint8_t mode)
// {
// 	uint32_t val = 0x17 | (1<<9) | (1<<15) | (mode<<16);//set word size 24, assert cs for idle, assert enable spi
// 	set_control(val);
// }


int main(int argc, char* argv[])	//reads in how many arguments and what they are, which we don't usually care about but maybe we will later so lets preserve the form for now.
{
//setup the maps for use
	uint8_t check =0;
	check = spiOpen();
	if(check == 0)
	{
		printf("ERROR:Failed to open map");
		return EXIT_SUCCESS;
	}
// 	else if(check == 1)
// 	{		
// 		printf("ERROR: Failed to open gpio map");
// 		getchar();
// 		return EXIT_SUCCESS;
// 	}
// 	else if(check == 2)
// 	{
// 		printf("ERROR: Failed to open spi map");
// 		getchar();
// 		return EXIT_SUCCESS;
// 	}

	
	char buf[256];
	uint32_t val;
	
	
	//setup time struct for sleeping 1/2 sec
	struct timespec timetime;
	timetime.tv_sec	=0;
	timetime.tv_nsec=500000000;
	
	uint8_t val=0;
	
	init_spi_cs_man(0);	//setup spi for manual operation in mode 0
	setup_blinky();		//push settings to spi for LED as output
	
	
	while(1)
	{
		printf("Enter the clockrate: ");
		if (fgets(buf, sizeof(buf), stdin) != NULL) {	//read line
			buf[strcspn(buf, "\r\n")] = '\0';				//sanitize input
		} else {
			printf("Error reading input.\r\n");
			return EXIT_SUCCESS;
		}
		val=strto32_t(buf);								//pull entered value into int
		if(!val)										//if NULL then something went wrong
		{
			printf("Input error...\r\n");
			return EXIT_SUCCESS;
		}
		else if(val > BRDCLKMAX || val < BRDCLKMIN)
		{
			printf("Input out of bounds.\r\n");
			return EXIT_SUCCESS;
		}
		
		
		setClockRate(val);
		intToAlpha(val,buf);
		printf("Clock rate set to input value of:");
		printf(buf);
		printf("\r\n");
		
		val=get_brd();
		printf("BRD register set to: ");
		intToAlpha(val, buf);
		printf(buf);
		printf("\r\n");
		printf("manual operation in mode 0");
		for(i=0;i<30;i++)
		{
			if(nanosleep(&timetime,0) == 0)
			{
				//half a second has elapsed. toggle
				val = ~val;
				if(val)
				{
					write_reg(SPI_OLAT,0x02);
				}
				else
				{
					write_reg(SPI_OLAT,0x00);
				}
			}
		}
	}
	
	
	

    return EXIT_SUCCESS;
}

