// spi IP Library (spi_ip.h)
// ryan smith from gpio_ip.h by Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// Hardware configuration:
//
// AXI4-Lite interface:
//   Mapped to offset of 0x2.0000
//


//-----------------------------------------------------------------------------

#ifndef SPI_IP_H_
#define SPI_IP_H_

#include <stdint.h>
#include <stdbool.h>

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------

bool spiOpen(void);


uint32_t get_status(void);

void clear_overflow(void);
uint8_t we_empty(void);
uint8_t we_full(void);

uint32_t get_data(void);

void push_data(uint32_t val);

uint32_t get_control(void);
void set_control(uint32_t val);

uint32_t get_brd(void);
void set_brd(uint32_t val);

void cs_low(void);
void cs_high(void);

#endif
