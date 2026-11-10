// SPI IP Library (SPI_ip.c)
// Ryan Smith, adapted from gpio_ip.c from Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// AXI4-Lite interface: 
//   Mapped to offset of 0x2.0000
//
//

//-----------------------------------------------------------------------------


#include <stdint.h>          // C99 integer types -- uint32_t
#include <stdbool.h>         // bool
#include <fcntl.h>           // open
#include <sys/mman.h>        // mmap
#include <unistd.h>          // close
#include "../address_map.h"  // address map
#include "spi_ip.h"         // tha header for this here.
#include "spi_regs.h"       // SPI registers

//-----------------------------------------------------------------------------
// Global variables
//-----------------------------------------------------------------------------

uint32_t *base = NULL;

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------

bool spiOpen(void)	//I suppose this checks if the addresses are available and accessible.
{
    // Open /dev/mem
    int file = open("/dev/mem", O_RDWR | O_SYNC);
    bool bOK = (file >= 0);
    if (bOK)
    {
        // Create a map from the physical memory location of
        // /dev/mem at an offset to LW avalon interface
        // with an aperature of SPAN_IN_BYTES bytes
        // to any location in the virtual 32-bit memory space of the process
        base = mmap(NULL, SPAN_IN_BYTES, PROT_READ | PROT_WRITE, MAP_SHARED,
                    file, AXI4_LITE_BASE + SPI_BASE_OFFSET);
        bOK = (base != MAP_FAILED);

        // Close /dev/mem
        close(file);
    }
    return bOK;
}



//return the value of the status register, for now defined as [31:28] =rd_index, [27:24] =wr_index, [23:20]=watermark, [19:3] UNUSED, [2]=empty, [1] =full, [0] =overflow, really these should be back, but for fifo testing its fine.
uint32_t get_status(void)
{
	uint32_t value = *(base+OFS_STATUS);
	return value;
}

//clear the ov flag
void clear_overflow(void)
{
	*(base+OFS_STATUS) = 0x1;    
}

uint8_t we_empty(void)
{
	uint32_t value = *(base+OFS_STATUS) & 0x4;
	if(value)
		return 1;
	else
		return 0;
}

uint8_t we_full(void)
{
	uint32_t value = *(base+OFS_STATUS) & 0x2;
	if(value)
		return 1;
	else
		return 0;
}

//return the value of the data register
uint32_t get_data(void)
{
	uint32_t value = *(base+OFS_FIFO_DATA);
	return value;
}

//push a write.
void push_data(uint32_t val)
{
	*(base+OFS_FIFO_DATA) = val;
}

//return the value of the control register
uint32_t get_control(void)
{
	uint32_t value = *(base+OFS_CTRL);
	return value;
}

//set the control bits
void set_control(uint32_t val)
{
	*(base+OFS_CTRL) = val;
}

//return the value of the brd register
uint32_t get_brd(void)
{
	uint32_t value = *(base+OFS_BRD);
	return value;
}

//set the brd
void set_brd(uint32_t val)
{
	*(base+OFS_BRD) = val;
}

//sets cs0 low
void cs_low()
{
	uint32_t val = get_control();	//get the current setting
	set_control( val & (!(1<<9)) );		//push bit 9 low
}

//sets cs0 high
void cs_high()
{
	uint32_t val = get_control();	//get the current setting
	set_control( val | (1<<9) );		//push bit 9 low
}








