// SPI IP Library Registers
// adapteD from (PARROTED) gpio_regs.h by Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard
// Target uC:       -
// System Clock:    -

// Hardware configuration:
// My_SPI IP core connected to AXI4-lite bus

//-----------------------------------------------------------------------------
// Device includes, defines, and assembler directives
//-----------------------------------------------------------------------------

#ifndef SPI_REGS_H_
#define SPI_REGS_H_

#define OFS_FIFO_DATA  	0
#define OFS_STATUS      1
#define OFS_CTRL        2
#define OFS_BRD       	3

#define SPAN_IN_BYTES 32

#endif
