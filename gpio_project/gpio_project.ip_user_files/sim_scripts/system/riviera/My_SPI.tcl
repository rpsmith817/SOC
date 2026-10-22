

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "My_SPI" "NUM_INSTANCES" "DEVICE_ID"  "C_AXI_Interface_SPI_BASEADDR" "C_AXI_Interface_SPI_HIGHADDR"
}
