-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Oct 22 14:29:46 2026
-- Host        : rps-ThinkPad-T16-Gen-4 running 64-bit Ubuntu 24.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rps/fpga/gpio_project/gpio_project.gen/sources_1/bd/system/ip/system_My_SPI_0_4/system_My_SPI_0_4_sim_netlist.vhdl
-- Design      : system_My_SPI_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_edge_detector is
  port (
    clr_out : out STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    clr_overflow_final : in STD_LOGIC;
    clr_overflow_req : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_edge_detector : entity is "edge_detector";
end system_My_SPI_0_4_edge_detector;

architecture STRUCTURE of system_My_SPI_0_4_edge_detector is
  signal clr_overflow0 : STD_LOGIC;
  signal last_in : STD_LOGIC;
  signal \out_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_in_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_i_1__1\ : label is "soft_lutpair11";
begin
\last_in_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => clr_overflow_req,
      I1 => clr_overflow_final,
      O => clr_overflow0
    );
last_in_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => clr_overflow0,
      Q => last_in,
      R => '0'
    );
\out_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => clr_overflow_final,
      I1 => clr_overflow_req,
      I2 => last_in,
      O => \out_i_1__1_n_0\
    );
out_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \out_i_1__1_n_0\,
      Q => clr_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_edge_detector_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_interface_spi_aclk : in STD_LOGIC;
    rd_req_final : in STD_LOGIC;
    raddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    status : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_interface_spi_arvalid : in STD_LOGIC;
    last_in_reg_0 : in STD_LOGIC;
    last_in_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_edge_detector_0 : entity is "edge_detector";
end system_My_SPI_0_4_edge_detector_0;

architecture STRUCTURE of system_My_SPI_0_4_edge_detector_0 is
  signal last_in : STD_LOGIC;
  signal out_i_1_n_0 : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal rd_out : STD_LOGIC;
  signal rd_req0 : STD_LOGIC;
begin
\last_in_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => raddr(1),
      I1 => raddr(0),
      I2 => raddr(2),
      I3 => p_9_in,
      I4 => rd_req_final,
      O => rd_req0
    );
last_in_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_interface_spi_arvalid,
      I1 => last_in_reg_0,
      I2 => last_in_reg_1,
      O => p_9_in
    );
last_in_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => rd_req0,
      Q => last_in,
      R => '0'
    );
out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => rd_req_final,
      I1 => p_9_in,
      I2 => raddr(2),
      I3 => raddr(0),
      I4 => raddr(1),
      I5 => last_in,
      O => out_i_1_n_0
    );
out_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => out_i_1_n_0,
      Q => rd_out,
      R => '0'
    );
\rd_index[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_out,
      I1 => status(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_edge_detector_1 is
  port (
    wr_out : out STD_LOGIC;
    axi_interface_spi_wvalid_0 : out STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_awvalid : in STD_LOGIC;
    last_in_reg_0 : in STD_LOGIC;
    last_in_reg_1 : in STD_LOGIC;
    wr_req_final : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_edge_detector_1 : entity is "edge_detector";
end system_My_SPI_0_4_edge_detector_1;

architecture STRUCTURE of system_My_SPI_0_4_edge_detector_1 is
  signal \^axi_interface_spi_wvalid_0\ : STD_LOGIC;
  signal last_in : STD_LOGIC;
  signal \out_i_1__0_n_0\ : STD_LOGIC;
  signal wr_req0 : STD_LOGIC;
begin
  axi_interface_spi_wvalid_0 <= \^axi_interface_spi_wvalid_0\;
last_in_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => \^axi_interface_spi_wvalid_0\,
      I4 => wr_req_final,
      O => wr_req0
    );
\last_in_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_interface_spi_wvalid,
      I1 => axi_interface_spi_awvalid,
      I2 => last_in_reg_0,
      I3 => last_in_reg_1,
      O => \^axi_interface_spi_wvalid_0\
    );
last_in_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => wr_req0,
      Q => last_in,
      R => '0'
    );
\out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => wr_req_final,
      I1 => \^axi_interface_spi_wvalid_0\,
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => last_in,
      O => \out_i_1__0_n_0\
    );
out_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \out_i_1__0_n_0\,
      Q => wr_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_fifo15x32 is
  port (
    overflow_reg_0 : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_aclk : in STD_LOGIC;
    wr_out : in STD_LOGIC;
    axi_interface_spi_aresetn : in STD_LOGIC;
    clr_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    raddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[15][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_fifo15x32 : entity is "fifo15x32";
end system_My_SPI_0_4_fifo15x32;

architecture STRUCTURE of system_My_SPI_0_4_fifo15x32 is
  signal data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \data[10][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[10][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[12][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[12][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[13][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[14][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[15][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[3][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[4][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[5][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[6][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[8][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[8][31]_i_2_n_0\ : STD_LOGIC;
  signal \data[9][31]_i_1_n_0\ : STD_LOGIC;
  signal \data[9][31]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[0]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[10]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[11]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[12]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[13]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[14]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[15]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[1]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[2]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[3]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[4]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[5]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[6]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[7]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[8]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_reg[9]__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^dataout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dataout[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dataout[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal full_INST_0_i_1_n_0 : STD_LOGIC;
  signal overflow_i_1_n_0 : STD_LOGIC;
  signal \^overflow_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \status[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal wr_index0 : STD_LOGIC;
  signal \wr_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[0][31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[10][31]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[12][31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[3][31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[4][31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[5][31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[6][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data[8][31]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[9][31]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_index[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_index[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \status[20]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \status[21]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \status[23]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \status[23]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_index[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_index[3]_i_2\ : label is "soft_lutpair2";
begin
  dataout(31 downto 0) <= \^dataout\(31 downto 0);
  overflow_reg_0 <= \^overflow_reg_0\;
  status(13 downto 0) <= \^status\(13 downto 0);
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^overflow_reg_0\,
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(0),
      I4 => raddr(1),
      I5 => \^dataout\(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(10),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(10),
      I3 => raddr(1),
      I4 => \^dataout\(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(11),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(11),
      I3 => raddr(1),
      I4 => \^dataout\(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(12),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(12),
      I3 => raddr(1),
      I4 => \^dataout\(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(13),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(13),
      I3 => raddr(1),
      I4 => \^dataout\(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(14),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(14),
      I3 => raddr(1),
      I4 => \^dataout\(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(15),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(15),
      I3 => raddr(1),
      I4 => \^dataout\(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(16),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(16),
      I3 => raddr(1),
      I4 => \^dataout\(16),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(17),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(17),
      I3 => raddr(1),
      I4 => \^dataout\(17),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(18),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(18),
      I3 => raddr(1),
      I4 => \^dataout\(18),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(19),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(19),
      I3 => raddr(1),
      I4 => \^dataout\(19),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => \^status\(0),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(1),
      I4 => raddr(1),
      I5 => \^dataout\(1),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(20),
      I1 => \^status\(2),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(20),
      I4 => raddr(1),
      I5 => \^dataout\(20),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(21),
      I1 => \^status\(3),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(21),
      I4 => raddr(1),
      I5 => \^dataout\(21),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(22),
      I1 => \^status\(4),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(22),
      I4 => raddr(1),
      I5 => \^dataout\(22),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(23),
      I1 => \^status\(5),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(23),
      I4 => raddr(1),
      I5 => \^dataout\(23),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(24),
      I1 => \^status\(6),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(24),
      I4 => raddr(1),
      I5 => \^dataout\(24),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(25),
      I1 => \^status\(7),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(25),
      I4 => raddr(1),
      I5 => \^dataout\(25),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(26),
      I1 => \^status\(8),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(26),
      I4 => raddr(1),
      I5 => \^dataout\(26),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(27),
      I1 => \^status\(9),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(27),
      I4 => raddr(1),
      I5 => \^dataout\(27),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(28),
      I1 => \^status\(10),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(28),
      I4 => raddr(1),
      I5 => \^dataout\(28),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(29),
      I1 => \^status\(11),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(29),
      I4 => raddr(1),
      I5 => \^dataout\(29),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(2),
      I1 => \^status\(1),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(2),
      I4 => raddr(1),
      I5 => \^dataout\(2),
      O => D(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(30),
      I1 => \^status\(12),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(30),
      I4 => raddr(1),
      I5 => \^dataout\(30),
      O => D(30)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(31),
      I1 => \^status\(13),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[31]\(31),
      I4 => raddr(1),
      I5 => \^dataout\(31),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(3),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(3),
      I3 => raddr(1),
      I4 => \^dataout\(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(4),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(4),
      I3 => raddr(1),
      I4 => \^dataout\(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(5),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(5),
      I3 => raddr(1),
      I4 => \^dataout\(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(6),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(6),
      I3 => raddr(1),
      I4 => \^dataout\(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(7),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(7),
      I3 => raddr(1),
      I4 => \^dataout\(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(8),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(8),
      I3 => raddr(1),
      I4 => \^dataout\(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => Q(9),
      I1 => raddr(0),
      I2 => \axi_rdata_reg[31]\(9),
      I3 => raddr(1),
      I4 => \^dataout\(9),
      O => D(9)
    );
\data[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(6),
      I4 => \^status\(7),
      I5 => \data[0][31]_i_3_n_0\,
      O => data(0)
    );
\data[0][31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(8),
      O => \data[0][31]_i_3_n_0\
    );
\data[10][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[10][31]_i_2_n_0\,
      I4 => \^status\(6),
      I5 => \^status\(8),
      O => \data[10][31]_i_1_n_0\
    );
\data[10][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(9),
      O => \data[10][31]_i_2_n_0\
    );
\data[11][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[3][31]_i_2_n_0\,
      I4 => \^status\(9),
      I5 => \^status\(8),
      O => \data[11][31]_i_1_n_0\
    );
\data[12][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[12][31]_i_2_n_0\,
      I4 => \^status\(6),
      I5 => \^status\(7),
      O => \data[12][31]_i_1_n_0\
    );
\data[12][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(8),
      O => \data[12][31]_i_2_n_0\
    );
\data[13][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[9][31]_i_2_n_0\,
      I4 => \^status\(8),
      I5 => \^status\(7),
      O => \data[13][31]_i_1_n_0\
    );
\data[14][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[10][31]_i_2_n_0\,
      I4 => \^status\(6),
      I5 => \^status\(8),
      O => \data[14][31]_i_1_n_0\
    );
\data[15][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(9),
      I4 => \^status\(8),
      I5 => \data[3][31]_i_2_n_0\,
      O => \data[15][31]_i_1_n_0\
    );
\data[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(7),
      I4 => \^status\(6),
      I5 => \data[0][31]_i_3_n_0\,
      O => \data[1][31]_i_1_n_0\
    );
\data[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(6),
      I4 => \^status\(7),
      I5 => \data[0][31]_i_3_n_0\,
      O => \data[2][31]_i_1_n_0\
    );
\data[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[3][31]_i_2_n_0\,
      I4 => \^status\(9),
      I5 => \^status\(8),
      O => \data[3][31]_i_1_n_0\
    );
\data[3][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(6),
      O => \data[3][31]_i_2_n_0\
    );
\data[4][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[4][31]_i_2_n_0\,
      I4 => \^status\(7),
      I5 => \^status\(9),
      O => \data[4][31]_i_1_n_0\
    );
\data[4][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(8),
      O => \data[4][31]_i_2_n_0\
    );
\data[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(6),
      I4 => \^status\(8),
      I5 => \data[5][31]_i_2_n_0\,
      O => \data[5][31]_i_1_n_0\
    );
\data[5][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(9),
      O => \data[5][31]_i_2_n_0\
    );
\data[6][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[6][31]_i_2_n_0\,
      O => \data[6][31]_i_1_n_0\
    );
\data[6][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(6),
      I2 => \^status\(8),
      I3 => \^status\(7),
      O => \data[6][31]_i_2_n_0\
    );
\data[7][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[3][31]_i_2_n_0\,
      I4 => \^status\(8),
      I5 => \^status\(9),
      O => \data[7][31]_i_1_n_0\
    );
\data[8][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \^status\(6),
      I4 => \^status\(9),
      I5 => \data[8][31]_i_2_n_0\,
      O => \data[8][31]_i_1_n_0\
    );
\data[8][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(8),
      O => \data[8][31]_i_2_n_0\
    );
\data[9][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => \data[9][31]_i_2_n_0\,
      I4 => \^status\(7),
      I5 => \^status\(8),
      O => \data[9][31]_i_1_n_0\
    );
\data[9][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(9),
      O => \data[9][31]_i_2_n_0\
    );
\data_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[0]__0\(0),
      R => SR(0)
    );
\data_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[0]__0\(10),
      R => SR(0)
    );
\data_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[0]__0\(11),
      R => SR(0)
    );
\data_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[0]__0\(12),
      R => SR(0)
    );
\data_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[0]__0\(13),
      R => SR(0)
    );
\data_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[0]__0\(14),
      R => SR(0)
    );
\data_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[0]__0\(15),
      R => SR(0)
    );
\data_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[0]__0\(16),
      R => SR(0)
    );
\data_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[0]__0\(17),
      R => SR(0)
    );
\data_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[0]__0\(18),
      R => SR(0)
    );
\data_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[0]__0\(19),
      R => SR(0)
    );
\data_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[0]__0\(1),
      R => SR(0)
    );
\data_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[0]__0\(20),
      R => SR(0)
    );
\data_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[0]__0\(21),
      R => SR(0)
    );
\data_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[0]__0\(22),
      R => SR(0)
    );
\data_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[0]__0\(23),
      R => SR(0)
    );
\data_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[0]__0\(24),
      R => SR(0)
    );
\data_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[0]__0\(25),
      R => SR(0)
    );
\data_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[0]__0\(26),
      R => SR(0)
    );
\data_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[0]__0\(27),
      R => SR(0)
    );
\data_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[0]__0\(28),
      R => SR(0)
    );
\data_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[0]__0\(29),
      R => SR(0)
    );
\data_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[0]__0\(2),
      R => SR(0)
    );
\data_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[0]__0\(30),
      R => SR(0)
    );
\data_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[0]__0\(31),
      R => SR(0)
    );
\data_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[0]__0\(3),
      R => SR(0)
    );
\data_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[0]__0\(4),
      R => SR(0)
    );
\data_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[0]__0\(5),
      R => SR(0)
    );
\data_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[0]__0\(6),
      R => SR(0)
    );
\data_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[0]__0\(7),
      R => SR(0)
    );
\data_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[0]__0\(8),
      R => SR(0)
    );
\data_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => data(0),
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[0]__0\(9),
      R => SR(0)
    );
\data_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[10]__0\(0),
      R => '0'
    );
\data_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[10]__0\(10),
      R => '0'
    );
\data_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[10]__0\(11),
      R => '0'
    );
\data_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[10]__0\(12),
      R => '0'
    );
\data_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[10]__0\(13),
      R => '0'
    );
\data_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[10]__0\(14),
      R => '0'
    );
\data_reg[10][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[10]__0\(15),
      R => '0'
    );
\data_reg[10][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[10]__0\(16),
      R => '0'
    );
\data_reg[10][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[10]__0\(17),
      R => '0'
    );
\data_reg[10][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[10]__0\(18),
      R => '0'
    );
\data_reg[10][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[10]__0\(19),
      R => '0'
    );
\data_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[10]__0\(1),
      R => '0'
    );
\data_reg[10][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[10]__0\(20),
      R => '0'
    );
\data_reg[10][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[10]__0\(21),
      R => '0'
    );
\data_reg[10][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[10]__0\(22),
      R => '0'
    );
\data_reg[10][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[10]__0\(23),
      R => '0'
    );
\data_reg[10][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[10]__0\(24),
      R => '0'
    );
\data_reg[10][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[10]__0\(25),
      R => '0'
    );
\data_reg[10][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[10]__0\(26),
      R => '0'
    );
\data_reg[10][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[10]__0\(27),
      R => '0'
    );
\data_reg[10][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[10]__0\(28),
      R => '0'
    );
\data_reg[10][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[10]__0\(29),
      R => '0'
    );
\data_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[10]__0\(2),
      R => '0'
    );
\data_reg[10][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[10]__0\(30),
      R => '0'
    );
\data_reg[10][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[10]__0\(31),
      R => '0'
    );
\data_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[10]__0\(3),
      R => '0'
    );
\data_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[10]__0\(4),
      R => '0'
    );
\data_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[10]__0\(5),
      R => '0'
    );
\data_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[10]__0\(6),
      R => '0'
    );
\data_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[10]__0\(7),
      R => '0'
    );
\data_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[10]__0\(8),
      R => '0'
    );
\data_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[10][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[10]__0\(9),
      R => '0'
    );
\data_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[11]__0\(0),
      R => '0'
    );
\data_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[11]__0\(10),
      R => '0'
    );
\data_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[11]__0\(11),
      R => '0'
    );
\data_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[11]__0\(12),
      R => '0'
    );
\data_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[11]__0\(13),
      R => '0'
    );
\data_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[11]__0\(14),
      R => '0'
    );
\data_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[11]__0\(15),
      R => '0'
    );
\data_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[11]__0\(16),
      R => '0'
    );
\data_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[11]__0\(17),
      R => '0'
    );
\data_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[11]__0\(18),
      R => '0'
    );
\data_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[11]__0\(19),
      R => '0'
    );
\data_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[11]__0\(1),
      R => '0'
    );
\data_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[11]__0\(20),
      R => '0'
    );
\data_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[11]__0\(21),
      R => '0'
    );
\data_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[11]__0\(22),
      R => '0'
    );
\data_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[11]__0\(23),
      R => '0'
    );
\data_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[11]__0\(24),
      R => '0'
    );
\data_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[11]__0\(25),
      R => '0'
    );
\data_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[11]__0\(26),
      R => '0'
    );
\data_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[11]__0\(27),
      R => '0'
    );
\data_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[11]__0\(28),
      R => '0'
    );
\data_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[11]__0\(29),
      R => '0'
    );
\data_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[11]__0\(2),
      R => '0'
    );
\data_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[11]__0\(30),
      R => '0'
    );
\data_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[11]__0\(31),
      R => '0'
    );
\data_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[11]__0\(3),
      R => '0'
    );
\data_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[11]__0\(4),
      R => '0'
    );
\data_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[11]__0\(5),
      R => '0'
    );
\data_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[11]__0\(6),
      R => '0'
    );
\data_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[11]__0\(7),
      R => '0'
    );
\data_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[11]__0\(8),
      R => '0'
    );
\data_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[11][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[11]__0\(9),
      R => '0'
    );
\data_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[12]__0\(0),
      R => '0'
    );
\data_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[12]__0\(10),
      R => '0'
    );
\data_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[12]__0\(11),
      R => '0'
    );
\data_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[12]__0\(12),
      R => '0'
    );
\data_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[12]__0\(13),
      R => '0'
    );
\data_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[12]__0\(14),
      R => '0'
    );
\data_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[12]__0\(15),
      R => '0'
    );
\data_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[12]__0\(16),
      R => '0'
    );
\data_reg[12][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[12]__0\(17),
      R => '0'
    );
\data_reg[12][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[12]__0\(18),
      R => '0'
    );
\data_reg[12][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[12]__0\(19),
      R => '0'
    );
\data_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[12]__0\(1),
      R => '0'
    );
\data_reg[12][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[12]__0\(20),
      R => '0'
    );
\data_reg[12][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[12]__0\(21),
      R => '0'
    );
\data_reg[12][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[12]__0\(22),
      R => '0'
    );
\data_reg[12][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[12]__0\(23),
      R => '0'
    );
\data_reg[12][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[12]__0\(24),
      R => '0'
    );
\data_reg[12][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[12]__0\(25),
      R => '0'
    );
\data_reg[12][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[12]__0\(26),
      R => '0'
    );
\data_reg[12][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[12]__0\(27),
      R => '0'
    );
\data_reg[12][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[12]__0\(28),
      R => '0'
    );
\data_reg[12][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[12]__0\(29),
      R => '0'
    );
\data_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[12]__0\(2),
      R => '0'
    );
\data_reg[12][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[12]__0\(30),
      R => '0'
    );
\data_reg[12][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[12]__0\(31),
      R => '0'
    );
\data_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[12]__0\(3),
      R => '0'
    );
\data_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[12]__0\(4),
      R => '0'
    );
\data_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[12]__0\(5),
      R => '0'
    );
\data_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[12]__0\(6),
      R => '0'
    );
\data_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[12]__0\(7),
      R => '0'
    );
\data_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[12]__0\(8),
      R => '0'
    );
\data_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[12][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[12]__0\(9),
      R => '0'
    );
\data_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[13]__0\(0),
      R => '0'
    );
\data_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[13]__0\(10),
      R => '0'
    );
\data_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[13]__0\(11),
      R => '0'
    );
\data_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[13]__0\(12),
      R => '0'
    );
\data_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[13]__0\(13),
      R => '0'
    );
\data_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[13]__0\(14),
      R => '0'
    );
\data_reg[13][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[13]__0\(15),
      R => '0'
    );
\data_reg[13][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[13]__0\(16),
      R => '0'
    );
\data_reg[13][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[13]__0\(17),
      R => '0'
    );
\data_reg[13][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[13]__0\(18),
      R => '0'
    );
\data_reg[13][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[13]__0\(19),
      R => '0'
    );
\data_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[13]__0\(1),
      R => '0'
    );
\data_reg[13][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[13]__0\(20),
      R => '0'
    );
\data_reg[13][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[13]__0\(21),
      R => '0'
    );
\data_reg[13][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[13]__0\(22),
      R => '0'
    );
\data_reg[13][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[13]__0\(23),
      R => '0'
    );
\data_reg[13][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[13]__0\(24),
      R => '0'
    );
\data_reg[13][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[13]__0\(25),
      R => '0'
    );
\data_reg[13][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[13]__0\(26),
      R => '0'
    );
\data_reg[13][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[13]__0\(27),
      R => '0'
    );
\data_reg[13][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[13]__0\(28),
      R => '0'
    );
\data_reg[13][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[13]__0\(29),
      R => '0'
    );
\data_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[13]__0\(2),
      R => '0'
    );
\data_reg[13][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[13]__0\(30),
      R => '0'
    );
\data_reg[13][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[13]__0\(31),
      R => '0'
    );
\data_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[13]__0\(3),
      R => '0'
    );
\data_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[13]__0\(4),
      R => '0'
    );
\data_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[13]__0\(5),
      R => '0'
    );
\data_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[13]__0\(6),
      R => '0'
    );
\data_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[13]__0\(7),
      R => '0'
    );
\data_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[13]__0\(8),
      R => '0'
    );
\data_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[13][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[13]__0\(9),
      R => '0'
    );
\data_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[14]__0\(0),
      R => '0'
    );
\data_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[14]__0\(10),
      R => '0'
    );
\data_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[14]__0\(11),
      R => '0'
    );
\data_reg[14][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[14]__0\(12),
      R => '0'
    );
\data_reg[14][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[14]__0\(13),
      R => '0'
    );
\data_reg[14][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[14]__0\(14),
      R => '0'
    );
\data_reg[14][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[14]__0\(15),
      R => '0'
    );
\data_reg[14][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[14]__0\(16),
      R => '0'
    );
\data_reg[14][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[14]__0\(17),
      R => '0'
    );
\data_reg[14][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[14]__0\(18),
      R => '0'
    );
\data_reg[14][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[14]__0\(19),
      R => '0'
    );
\data_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[14]__0\(1),
      R => '0'
    );
\data_reg[14][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[14]__0\(20),
      R => '0'
    );
\data_reg[14][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[14]__0\(21),
      R => '0'
    );
\data_reg[14][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[14]__0\(22),
      R => '0'
    );
\data_reg[14][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[14]__0\(23),
      R => '0'
    );
\data_reg[14][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[14]__0\(24),
      R => '0'
    );
\data_reg[14][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[14]__0\(25),
      R => '0'
    );
\data_reg[14][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[14]__0\(26),
      R => '0'
    );
\data_reg[14][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[14]__0\(27),
      R => '0'
    );
\data_reg[14][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[14]__0\(28),
      R => '0'
    );
\data_reg[14][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[14]__0\(29),
      R => '0'
    );
\data_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[14]__0\(2),
      R => '0'
    );
\data_reg[14][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[14]__0\(30),
      R => '0'
    );
\data_reg[14][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[14]__0\(31),
      R => '0'
    );
\data_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[14]__0\(3),
      R => '0'
    );
\data_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[14]__0\(4),
      R => '0'
    );
\data_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[14]__0\(5),
      R => '0'
    );
\data_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[14]__0\(6),
      R => '0'
    );
\data_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[14]__0\(7),
      R => '0'
    );
\data_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[14]__0\(8),
      R => '0'
    );
\data_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[14][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[14]__0\(9),
      R => '0'
    );
\data_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[15]__0\(0),
      R => '0'
    );
\data_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[15]__0\(10),
      R => '0'
    );
\data_reg[15][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[15]__0\(11),
      R => '0'
    );
\data_reg[15][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[15]__0\(12),
      R => '0'
    );
\data_reg[15][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[15]__0\(13),
      R => '0'
    );
\data_reg[15][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[15]__0\(14),
      R => '0'
    );
\data_reg[15][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[15]__0\(15),
      R => '0'
    );
\data_reg[15][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[15]__0\(16),
      R => '0'
    );
\data_reg[15][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[15]__0\(17),
      R => '0'
    );
\data_reg[15][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[15]__0\(18),
      R => '0'
    );
\data_reg[15][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[15]__0\(19),
      R => '0'
    );
\data_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[15]__0\(1),
      R => '0'
    );
\data_reg[15][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[15]__0\(20),
      R => '0'
    );
\data_reg[15][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[15]__0\(21),
      R => '0'
    );
\data_reg[15][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[15]__0\(22),
      R => '0'
    );
\data_reg[15][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[15]__0\(23),
      R => '0'
    );
\data_reg[15][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[15]__0\(24),
      R => '0'
    );
\data_reg[15][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[15]__0\(25),
      R => '0'
    );
\data_reg[15][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[15]__0\(26),
      R => '0'
    );
\data_reg[15][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[15]__0\(27),
      R => '0'
    );
\data_reg[15][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[15]__0\(28),
      R => '0'
    );
\data_reg[15][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[15]__0\(29),
      R => '0'
    );
\data_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[15]__0\(2),
      R => '0'
    );
\data_reg[15][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[15]__0\(30),
      R => '0'
    );
\data_reg[15][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[15]__0\(31),
      R => '0'
    );
\data_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[15]__0\(3),
      R => '0'
    );
\data_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[15]__0\(4),
      R => '0'
    );
\data_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[15]__0\(5),
      R => '0'
    );
\data_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[15]__0\(6),
      R => '0'
    );
\data_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[15]__0\(7),
      R => '0'
    );
\data_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[15]__0\(8),
      R => '0'
    );
\data_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[15]__0\(9),
      R => '0'
    );
\data_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[1]__0\(0),
      R => '0'
    );
\data_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[1]__0\(10),
      R => '0'
    );
\data_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[1]__0\(11),
      R => '0'
    );
\data_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[1]__0\(12),
      R => '0'
    );
\data_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[1]__0\(13),
      R => '0'
    );
\data_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[1]__0\(14),
      R => '0'
    );
\data_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[1]__0\(15),
      R => '0'
    );
\data_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[1]__0\(16),
      R => '0'
    );
\data_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[1]__0\(17),
      R => '0'
    );
\data_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[1]__0\(18),
      R => '0'
    );
\data_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[1]__0\(19),
      R => '0'
    );
\data_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[1]__0\(1),
      R => '0'
    );
\data_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[1]__0\(20),
      R => '0'
    );
\data_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[1]__0\(21),
      R => '0'
    );
\data_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[1]__0\(22),
      R => '0'
    );
\data_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[1]__0\(23),
      R => '0'
    );
\data_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[1]__0\(24),
      R => '0'
    );
\data_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[1]__0\(25),
      R => '0'
    );
\data_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[1]__0\(26),
      R => '0'
    );
\data_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[1]__0\(27),
      R => '0'
    );
\data_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[1]__0\(28),
      R => '0'
    );
\data_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[1]__0\(29),
      R => '0'
    );
\data_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[1]__0\(2),
      R => '0'
    );
\data_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[1]__0\(30),
      R => '0'
    );
\data_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[1]__0\(31),
      R => '0'
    );
\data_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[1]__0\(3),
      R => '0'
    );
\data_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[1]__0\(4),
      R => '0'
    );
\data_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[1]__0\(5),
      R => '0'
    );
\data_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[1]__0\(6),
      R => '0'
    );
\data_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[1]__0\(7),
      R => '0'
    );
\data_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[1]__0\(8),
      R => '0'
    );
\data_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[1][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[1]__0\(9),
      R => '0'
    );
\data_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[2]__0\(0),
      R => '0'
    );
\data_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[2]__0\(10),
      R => '0'
    );
\data_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[2]__0\(11),
      R => '0'
    );
\data_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[2]__0\(12),
      R => '0'
    );
\data_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[2]__0\(13),
      R => '0'
    );
\data_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[2]__0\(14),
      R => '0'
    );
\data_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[2]__0\(15),
      R => '0'
    );
\data_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[2]__0\(16),
      R => '0'
    );
\data_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[2]__0\(17),
      R => '0'
    );
\data_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[2]__0\(18),
      R => '0'
    );
\data_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[2]__0\(19),
      R => '0'
    );
\data_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[2]__0\(1),
      R => '0'
    );
\data_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[2]__0\(20),
      R => '0'
    );
\data_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[2]__0\(21),
      R => '0'
    );
\data_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[2]__0\(22),
      R => '0'
    );
\data_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[2]__0\(23),
      R => '0'
    );
\data_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[2]__0\(24),
      R => '0'
    );
\data_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[2]__0\(25),
      R => '0'
    );
\data_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[2]__0\(26),
      R => '0'
    );
\data_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[2]__0\(27),
      R => '0'
    );
\data_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[2]__0\(28),
      R => '0'
    );
\data_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[2]__0\(29),
      R => '0'
    );
\data_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[2]__0\(2),
      R => '0'
    );
\data_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[2]__0\(30),
      R => '0'
    );
\data_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[2]__0\(31),
      R => '0'
    );
\data_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[2]__0\(3),
      R => '0'
    );
\data_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[2]__0\(4),
      R => '0'
    );
\data_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[2]__0\(5),
      R => '0'
    );
\data_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[2]__0\(6),
      R => '0'
    );
\data_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[2]__0\(7),
      R => '0'
    );
\data_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[2]__0\(8),
      R => '0'
    );
\data_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[2][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[2]__0\(9),
      R => '0'
    );
\data_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[3]__0\(0),
      R => '0'
    );
\data_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[3]__0\(10),
      R => '0'
    );
\data_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[3]__0\(11),
      R => '0'
    );
\data_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[3]__0\(12),
      R => '0'
    );
\data_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[3]__0\(13),
      R => '0'
    );
\data_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[3]__0\(14),
      R => '0'
    );
\data_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[3]__0\(15),
      R => '0'
    );
\data_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[3]__0\(16),
      R => '0'
    );
\data_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[3]__0\(17),
      R => '0'
    );
\data_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[3]__0\(18),
      R => '0'
    );
\data_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[3]__0\(19),
      R => '0'
    );
\data_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[3]__0\(1),
      R => '0'
    );
\data_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[3]__0\(20),
      R => '0'
    );
\data_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[3]__0\(21),
      R => '0'
    );
\data_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[3]__0\(22),
      R => '0'
    );
\data_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[3]__0\(23),
      R => '0'
    );
\data_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[3]__0\(24),
      R => '0'
    );
\data_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[3]__0\(25),
      R => '0'
    );
\data_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[3]__0\(26),
      R => '0'
    );
\data_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[3]__0\(27),
      R => '0'
    );
\data_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[3]__0\(28),
      R => '0'
    );
\data_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[3]__0\(29),
      R => '0'
    );
\data_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[3]__0\(2),
      R => '0'
    );
\data_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[3]__0\(30),
      R => '0'
    );
\data_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[3]__0\(31),
      R => '0'
    );
\data_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[3]__0\(3),
      R => '0'
    );
\data_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[3]__0\(4),
      R => '0'
    );
\data_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[3]__0\(5),
      R => '0'
    );
\data_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[3]__0\(6),
      R => '0'
    );
\data_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[3]__0\(7),
      R => '0'
    );
\data_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[3]__0\(8),
      R => '0'
    );
\data_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[3][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[3]__0\(9),
      R => '0'
    );
\data_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[4]__0\(0),
      R => '0'
    );
\data_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[4]__0\(10),
      R => '0'
    );
\data_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[4]__0\(11),
      R => '0'
    );
\data_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[4]__0\(12),
      R => '0'
    );
\data_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[4]__0\(13),
      R => '0'
    );
\data_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[4]__0\(14),
      R => '0'
    );
\data_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[4]__0\(15),
      R => '0'
    );
\data_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[4]__0\(16),
      R => '0'
    );
\data_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[4]__0\(17),
      R => '0'
    );
\data_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[4]__0\(18),
      R => '0'
    );
\data_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[4]__0\(19),
      R => '0'
    );
\data_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[4]__0\(1),
      R => '0'
    );
\data_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[4]__0\(20),
      R => '0'
    );
\data_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[4]__0\(21),
      R => '0'
    );
\data_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[4]__0\(22),
      R => '0'
    );
\data_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[4]__0\(23),
      R => '0'
    );
\data_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[4]__0\(24),
      R => '0'
    );
\data_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[4]__0\(25),
      R => '0'
    );
\data_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[4]__0\(26),
      R => '0'
    );
\data_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[4]__0\(27),
      R => '0'
    );
\data_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[4]__0\(28),
      R => '0'
    );
\data_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[4]__0\(29),
      R => '0'
    );
\data_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[4]__0\(2),
      R => '0'
    );
\data_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[4]__0\(30),
      R => '0'
    );
\data_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[4]__0\(31),
      R => '0'
    );
\data_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[4]__0\(3),
      R => '0'
    );
\data_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[4]__0\(4),
      R => '0'
    );
\data_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[4]__0\(5),
      R => '0'
    );
\data_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[4]__0\(6),
      R => '0'
    );
\data_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[4]__0\(7),
      R => '0'
    );
\data_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[4]__0\(8),
      R => '0'
    );
\data_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[4][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[4]__0\(9),
      R => '0'
    );
\data_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[5]__0\(0),
      R => '0'
    );
\data_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[5]__0\(10),
      R => '0'
    );
\data_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[5]__0\(11),
      R => '0'
    );
\data_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[5]__0\(12),
      R => '0'
    );
\data_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[5]__0\(13),
      R => '0'
    );
\data_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[5]__0\(14),
      R => '0'
    );
\data_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[5]__0\(15),
      R => '0'
    );
\data_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[5]__0\(16),
      R => '0'
    );
\data_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[5]__0\(17),
      R => '0'
    );
\data_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[5]__0\(18),
      R => '0'
    );
\data_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[5]__0\(19),
      R => '0'
    );
\data_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[5]__0\(1),
      R => '0'
    );
\data_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[5]__0\(20),
      R => '0'
    );
\data_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[5]__0\(21),
      R => '0'
    );
\data_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[5]__0\(22),
      R => '0'
    );
\data_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[5]__0\(23),
      R => '0'
    );
\data_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[5]__0\(24),
      R => '0'
    );
\data_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[5]__0\(25),
      R => '0'
    );
\data_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[5]__0\(26),
      R => '0'
    );
\data_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[5]__0\(27),
      R => '0'
    );
\data_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[5]__0\(28),
      R => '0'
    );
\data_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[5]__0\(29),
      R => '0'
    );
\data_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[5]__0\(2),
      R => '0'
    );
\data_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[5]__0\(30),
      R => '0'
    );
\data_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[5]__0\(31),
      R => '0'
    );
\data_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[5]__0\(3),
      R => '0'
    );
\data_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[5]__0\(4),
      R => '0'
    );
\data_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[5]__0\(5),
      R => '0'
    );
\data_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[5]__0\(6),
      R => '0'
    );
\data_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[5]__0\(7),
      R => '0'
    );
\data_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[5]__0\(8),
      R => '0'
    );
\data_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[5][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[5]__0\(9),
      R => '0'
    );
\data_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[6]__0\(0),
      R => '0'
    );
\data_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[6]__0\(10),
      R => '0'
    );
\data_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[6]__0\(11),
      R => '0'
    );
\data_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[6]__0\(12),
      R => '0'
    );
\data_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[6]__0\(13),
      R => '0'
    );
\data_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[6]__0\(14),
      R => '0'
    );
\data_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[6]__0\(15),
      R => '0'
    );
\data_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[6]__0\(16),
      R => '0'
    );
\data_reg[6][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[6]__0\(17),
      R => '0'
    );
\data_reg[6][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[6]__0\(18),
      R => '0'
    );
\data_reg[6][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[6]__0\(19),
      R => '0'
    );
\data_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[6]__0\(1),
      R => '0'
    );
\data_reg[6][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[6]__0\(20),
      R => '0'
    );
\data_reg[6][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[6]__0\(21),
      R => '0'
    );
\data_reg[6][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[6]__0\(22),
      R => '0'
    );
\data_reg[6][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[6]__0\(23),
      R => '0'
    );
\data_reg[6][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[6]__0\(24),
      R => '0'
    );
\data_reg[6][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[6]__0\(25),
      R => '0'
    );
\data_reg[6][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[6]__0\(26),
      R => '0'
    );
\data_reg[6][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[6]__0\(27),
      R => '0'
    );
\data_reg[6][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[6]__0\(28),
      R => '0'
    );
\data_reg[6][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[6]__0\(29),
      R => '0'
    );
\data_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[6]__0\(2),
      R => '0'
    );
\data_reg[6][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[6]__0\(30),
      R => '0'
    );
\data_reg[6][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[6]__0\(31),
      R => '0'
    );
\data_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[6]__0\(3),
      R => '0'
    );
\data_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[6]__0\(4),
      R => '0'
    );
\data_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[6]__0\(5),
      R => '0'
    );
\data_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[6]__0\(6),
      R => '0'
    );
\data_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[6]__0\(7),
      R => '0'
    );
\data_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[6]__0\(8),
      R => '0'
    );
\data_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[6][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[6]__0\(9),
      R => '0'
    );
\data_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[7]__0\(0),
      R => '0'
    );
\data_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[7]__0\(10),
      R => '0'
    );
\data_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[7]__0\(11),
      R => '0'
    );
\data_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[7]__0\(12),
      R => '0'
    );
\data_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[7]__0\(13),
      R => '0'
    );
\data_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[7]__0\(14),
      R => '0'
    );
\data_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[7]__0\(15),
      R => '0'
    );
\data_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[7]__0\(16),
      R => '0'
    );
\data_reg[7][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[7]__0\(17),
      R => '0'
    );
\data_reg[7][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[7]__0\(18),
      R => '0'
    );
\data_reg[7][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[7]__0\(19),
      R => '0'
    );
\data_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[7]__0\(1),
      R => '0'
    );
\data_reg[7][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[7]__0\(20),
      R => '0'
    );
\data_reg[7][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[7]__0\(21),
      R => '0'
    );
\data_reg[7][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[7]__0\(22),
      R => '0'
    );
\data_reg[7][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[7]__0\(23),
      R => '0'
    );
\data_reg[7][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[7]__0\(24),
      R => '0'
    );
\data_reg[7][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[7]__0\(25),
      R => '0'
    );
\data_reg[7][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[7]__0\(26),
      R => '0'
    );
\data_reg[7][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[7]__0\(27),
      R => '0'
    );
\data_reg[7][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[7]__0\(28),
      R => '0'
    );
\data_reg[7][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[7]__0\(29),
      R => '0'
    );
\data_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[7]__0\(2),
      R => '0'
    );
\data_reg[7][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[7]__0\(30),
      R => '0'
    );
\data_reg[7][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[7]__0\(31),
      R => '0'
    );
\data_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[7]__0\(3),
      R => '0'
    );
\data_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[7]__0\(4),
      R => '0'
    );
\data_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[7]__0\(5),
      R => '0'
    );
\data_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[7]__0\(6),
      R => '0'
    );
\data_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[7]__0\(7),
      R => '0'
    );
\data_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[7]__0\(8),
      R => '0'
    );
\data_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[7]__0\(9),
      R => '0'
    );
\data_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[8]__0\(0),
      R => '0'
    );
\data_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[8]__0\(10),
      R => '0'
    );
\data_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[8]__0\(11),
      R => '0'
    );
\data_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[8]__0\(12),
      R => '0'
    );
\data_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[8]__0\(13),
      R => '0'
    );
\data_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[8]__0\(14),
      R => '0'
    );
\data_reg[8][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[8]__0\(15),
      R => '0'
    );
\data_reg[8][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[8]__0\(16),
      R => '0'
    );
\data_reg[8][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[8]__0\(17),
      R => '0'
    );
\data_reg[8][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[8]__0\(18),
      R => '0'
    );
\data_reg[8][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[8]__0\(19),
      R => '0'
    );
\data_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[8]__0\(1),
      R => '0'
    );
\data_reg[8][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[8]__0\(20),
      R => '0'
    );
\data_reg[8][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[8]__0\(21),
      R => '0'
    );
\data_reg[8][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[8]__0\(22),
      R => '0'
    );
\data_reg[8][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[8]__0\(23),
      R => '0'
    );
\data_reg[8][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[8]__0\(24),
      R => '0'
    );
\data_reg[8][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[8]__0\(25),
      R => '0'
    );
\data_reg[8][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[8]__0\(26),
      R => '0'
    );
\data_reg[8][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[8]__0\(27),
      R => '0'
    );
\data_reg[8][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[8]__0\(28),
      R => '0'
    );
\data_reg[8][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[8]__0\(29),
      R => '0'
    );
\data_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[8]__0\(2),
      R => '0'
    );
\data_reg[8][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[8]__0\(30),
      R => '0'
    );
\data_reg[8][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[8]__0\(31),
      R => '0'
    );
\data_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[8]__0\(3),
      R => '0'
    );
\data_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[8]__0\(4),
      R => '0'
    );
\data_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[8]__0\(5),
      R => '0'
    );
\data_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[8]__0\(6),
      R => '0'
    );
\data_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[8]__0\(7),
      R => '0'
    );
\data_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[8]__0\(8),
      R => '0'
    );
\data_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[8][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[8]__0\(9),
      R => '0'
    );
\data_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(0),
      Q => \data_reg[9]__0\(0),
      R => '0'
    );
\data_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(10),
      Q => \data_reg[9]__0\(10),
      R => '0'
    );
\data_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(11),
      Q => \data_reg[9]__0\(11),
      R => '0'
    );
\data_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(12),
      Q => \data_reg[9]__0\(12),
      R => '0'
    );
\data_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(13),
      Q => \data_reg[9]__0\(13),
      R => '0'
    );
\data_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(14),
      Q => \data_reg[9]__0\(14),
      R => '0'
    );
\data_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(15),
      Q => \data_reg[9]__0\(15),
      R => '0'
    );
\data_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(16),
      Q => \data_reg[9]__0\(16),
      R => '0'
    );
\data_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(17),
      Q => \data_reg[9]__0\(17),
      R => '0'
    );
\data_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(18),
      Q => \data_reg[9]__0\(18),
      R => '0'
    );
\data_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(19),
      Q => \data_reg[9]__0\(19),
      R => '0'
    );
\data_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(1),
      Q => \data_reg[9]__0\(1),
      R => '0'
    );
\data_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(20),
      Q => \data_reg[9]__0\(20),
      R => '0'
    );
\data_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(21),
      Q => \data_reg[9]__0\(21),
      R => '0'
    );
\data_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(22),
      Q => \data_reg[9]__0\(22),
      R => '0'
    );
\data_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(23),
      Q => \data_reg[9]__0\(23),
      R => '0'
    );
\data_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(24),
      Q => \data_reg[9]__0\(24),
      R => '0'
    );
\data_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(25),
      Q => \data_reg[9]__0\(25),
      R => '0'
    );
\data_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(26),
      Q => \data_reg[9]__0\(26),
      R => '0'
    );
\data_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(27),
      Q => \data_reg[9]__0\(27),
      R => '0'
    );
\data_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(28),
      Q => \data_reg[9]__0\(28),
      R => '0'
    );
\data_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(29),
      Q => \data_reg[9]__0\(29),
      R => '0'
    );
\data_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(2),
      Q => \data_reg[9]__0\(2),
      R => '0'
    );
\data_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(30),
      Q => \data_reg[9]__0\(30),
      R => '0'
    );
\data_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(31),
      Q => \data_reg[9]__0\(31),
      R => '0'
    );
\data_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(3),
      Q => \data_reg[9]__0\(3),
      R => '0'
    );
\data_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(4),
      Q => \data_reg[9]__0\(4),
      R => '0'
    );
\data_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(5),
      Q => \data_reg[9]__0\(5),
      R => '0'
    );
\data_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(6),
      Q => \data_reg[9]__0\(6),
      R => '0'
    );
\data_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(7),
      Q => \data_reg[9]__0\(7),
      R => '0'
    );
\data_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(8),
      Q => \data_reg[9]__0\(8),
      R => '0'
    );
\data_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[9][31]_i_1_n_0\,
      D => \data_reg[15][31]_0\(9),
      Q => \data_reg[9]__0\(9),
      R => '0'
    );
\dataout[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[0]_INST_0_i_1_n_0\,
      I1 => \dataout[0]_INST_0_i_2_n_0\,
      O => \^dataout\(0),
      S => \^status\(13)
    );
\dataout[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[0]_INST_0_i_3_n_0\,
      I1 => \dataout[0]_INST_0_i_4_n_0\,
      O => \dataout[0]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[0]_INST_0_i_5_n_0\,
      I1 => \dataout[0]_INST_0_i_6_n_0\,
      O => \dataout[0]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(0),
      I1 => \data_reg[2]__0\(0),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(0),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(0),
      O => \dataout[0]_INST_0_i_3_n_0\
    );
\dataout[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(0),
      I1 => \data_reg[6]__0\(0),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(0),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(0),
      O => \dataout[0]_INST_0_i_4_n_0\
    );
\dataout[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(0),
      I1 => \data_reg[10]__0\(0),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(0),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(0),
      O => \dataout[0]_INST_0_i_5_n_0\
    );
\dataout[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(0),
      I1 => \data_reg[14]__0\(0),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(0),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(0),
      O => \dataout[0]_INST_0_i_6_n_0\
    );
\dataout[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[10]_INST_0_i_1_n_0\,
      I1 => \dataout[10]_INST_0_i_2_n_0\,
      O => \^dataout\(10),
      S => \^status\(13)
    );
\dataout[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[10]_INST_0_i_3_n_0\,
      I1 => \dataout[10]_INST_0_i_4_n_0\,
      O => \dataout[10]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[10]_INST_0_i_5_n_0\,
      I1 => \dataout[10]_INST_0_i_6_n_0\,
      O => \dataout[10]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(10),
      I1 => \data_reg[2]__0\(10),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(10),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(10),
      O => \dataout[10]_INST_0_i_3_n_0\
    );
\dataout[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(10),
      I1 => \data_reg[6]__0\(10),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(10),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(10),
      O => \dataout[10]_INST_0_i_4_n_0\
    );
\dataout[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(10),
      I1 => \data_reg[10]__0\(10),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(10),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(10),
      O => \dataout[10]_INST_0_i_5_n_0\
    );
\dataout[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(10),
      I1 => \data_reg[14]__0\(10),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(10),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(10),
      O => \dataout[10]_INST_0_i_6_n_0\
    );
\dataout[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[11]_INST_0_i_1_n_0\,
      I1 => \dataout[11]_INST_0_i_2_n_0\,
      O => \^dataout\(11),
      S => \^status\(13)
    );
\dataout[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[11]_INST_0_i_3_n_0\,
      I1 => \dataout[11]_INST_0_i_4_n_0\,
      O => \dataout[11]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[11]_INST_0_i_5_n_0\,
      I1 => \dataout[11]_INST_0_i_6_n_0\,
      O => \dataout[11]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(11),
      I1 => \data_reg[2]__0\(11),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(11),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(11),
      O => \dataout[11]_INST_0_i_3_n_0\
    );
\dataout[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(11),
      I1 => \data_reg[6]__0\(11),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(11),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(11),
      O => \dataout[11]_INST_0_i_4_n_0\
    );
\dataout[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(11),
      I1 => \data_reg[10]__0\(11),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(11),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(11),
      O => \dataout[11]_INST_0_i_5_n_0\
    );
\dataout[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(11),
      I1 => \data_reg[14]__0\(11),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(11),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(11),
      O => \dataout[11]_INST_0_i_6_n_0\
    );
\dataout[12]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[12]_INST_0_i_1_n_0\,
      I1 => \dataout[12]_INST_0_i_2_n_0\,
      O => \^dataout\(12),
      S => \^status\(13)
    );
\dataout[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[12]_INST_0_i_3_n_0\,
      I1 => \dataout[12]_INST_0_i_4_n_0\,
      O => \dataout[12]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[12]_INST_0_i_5_n_0\,
      I1 => \dataout[12]_INST_0_i_6_n_0\,
      O => \dataout[12]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(12),
      I1 => \data_reg[2]__0\(12),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(12),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(12),
      O => \dataout[12]_INST_0_i_3_n_0\
    );
\dataout[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(12),
      I1 => \data_reg[6]__0\(12),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(12),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(12),
      O => \dataout[12]_INST_0_i_4_n_0\
    );
\dataout[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(12),
      I1 => \data_reg[10]__0\(12),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(12),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(12),
      O => \dataout[12]_INST_0_i_5_n_0\
    );
\dataout[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(12),
      I1 => \data_reg[14]__0\(12),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(12),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(12),
      O => \dataout[12]_INST_0_i_6_n_0\
    );
\dataout[13]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[13]_INST_0_i_1_n_0\,
      I1 => \dataout[13]_INST_0_i_2_n_0\,
      O => \^dataout\(13),
      S => \^status\(13)
    );
\dataout[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[13]_INST_0_i_3_n_0\,
      I1 => \dataout[13]_INST_0_i_4_n_0\,
      O => \dataout[13]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[13]_INST_0_i_5_n_0\,
      I1 => \dataout[13]_INST_0_i_6_n_0\,
      O => \dataout[13]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(13),
      I1 => \data_reg[2]__0\(13),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(13),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(13),
      O => \dataout[13]_INST_0_i_3_n_0\
    );
\dataout[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(13),
      I1 => \data_reg[6]__0\(13),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(13),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(13),
      O => \dataout[13]_INST_0_i_4_n_0\
    );
\dataout[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(13),
      I1 => \data_reg[10]__0\(13),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(13),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(13),
      O => \dataout[13]_INST_0_i_5_n_0\
    );
\dataout[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(13),
      I1 => \data_reg[14]__0\(13),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(13),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(13),
      O => \dataout[13]_INST_0_i_6_n_0\
    );
\dataout[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[14]_INST_0_i_1_n_0\,
      I1 => \dataout[14]_INST_0_i_2_n_0\,
      O => \^dataout\(14),
      S => \^status\(13)
    );
\dataout[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[14]_INST_0_i_3_n_0\,
      I1 => \dataout[14]_INST_0_i_4_n_0\,
      O => \dataout[14]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[14]_INST_0_i_5_n_0\,
      I1 => \dataout[14]_INST_0_i_6_n_0\,
      O => \dataout[14]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(14),
      I1 => \data_reg[2]__0\(14),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(14),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(14),
      O => \dataout[14]_INST_0_i_3_n_0\
    );
\dataout[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(14),
      I1 => \data_reg[6]__0\(14),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(14),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(14),
      O => \dataout[14]_INST_0_i_4_n_0\
    );
\dataout[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(14),
      I1 => \data_reg[10]__0\(14),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(14),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(14),
      O => \dataout[14]_INST_0_i_5_n_0\
    );
\dataout[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(14),
      I1 => \data_reg[14]__0\(14),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(14),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(14),
      O => \dataout[14]_INST_0_i_6_n_0\
    );
\dataout[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[15]_INST_0_i_1_n_0\,
      I1 => \dataout[15]_INST_0_i_2_n_0\,
      O => \^dataout\(15),
      S => \^status\(13)
    );
\dataout[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[15]_INST_0_i_3_n_0\,
      I1 => \dataout[15]_INST_0_i_4_n_0\,
      O => \dataout[15]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[15]_INST_0_i_5_n_0\,
      I1 => \dataout[15]_INST_0_i_6_n_0\,
      O => \dataout[15]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(15),
      I1 => \data_reg[2]__0\(15),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(15),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(15),
      O => \dataout[15]_INST_0_i_3_n_0\
    );
\dataout[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(15),
      I1 => \data_reg[6]__0\(15),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(15),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(15),
      O => \dataout[15]_INST_0_i_4_n_0\
    );
\dataout[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(15),
      I1 => \data_reg[10]__0\(15),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(15),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(15),
      O => \dataout[15]_INST_0_i_5_n_0\
    );
\dataout[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(15),
      I1 => \data_reg[14]__0\(15),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(15),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(15),
      O => \dataout[15]_INST_0_i_6_n_0\
    );
\dataout[16]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[16]_INST_0_i_1_n_0\,
      I1 => \dataout[16]_INST_0_i_2_n_0\,
      O => \^dataout\(16),
      S => \^status\(13)
    );
\dataout[16]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[16]_INST_0_i_3_n_0\,
      I1 => \dataout[16]_INST_0_i_4_n_0\,
      O => \dataout[16]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[16]_INST_0_i_5_n_0\,
      I1 => \dataout[16]_INST_0_i_6_n_0\,
      O => \dataout[16]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(16),
      I1 => \data_reg[2]__0\(16),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(16),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(16),
      O => \dataout[16]_INST_0_i_3_n_0\
    );
\dataout[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(16),
      I1 => \data_reg[6]__0\(16),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(16),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(16),
      O => \dataout[16]_INST_0_i_4_n_0\
    );
\dataout[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(16),
      I1 => \data_reg[10]__0\(16),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(16),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(16),
      O => \dataout[16]_INST_0_i_5_n_0\
    );
\dataout[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(16),
      I1 => \data_reg[14]__0\(16),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(16),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(16),
      O => \dataout[16]_INST_0_i_6_n_0\
    );
\dataout[17]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[17]_INST_0_i_1_n_0\,
      I1 => \dataout[17]_INST_0_i_2_n_0\,
      O => \^dataout\(17),
      S => \^status\(13)
    );
\dataout[17]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[17]_INST_0_i_3_n_0\,
      I1 => \dataout[17]_INST_0_i_4_n_0\,
      O => \dataout[17]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[17]_INST_0_i_5_n_0\,
      I1 => \dataout[17]_INST_0_i_6_n_0\,
      O => \dataout[17]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(17),
      I1 => \data_reg[2]__0\(17),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(17),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(17),
      O => \dataout[17]_INST_0_i_3_n_0\
    );
\dataout[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(17),
      I1 => \data_reg[6]__0\(17),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(17),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(17),
      O => \dataout[17]_INST_0_i_4_n_0\
    );
\dataout[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(17),
      I1 => \data_reg[10]__0\(17),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(17),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(17),
      O => \dataout[17]_INST_0_i_5_n_0\
    );
\dataout[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(17),
      I1 => \data_reg[14]__0\(17),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(17),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(17),
      O => \dataout[17]_INST_0_i_6_n_0\
    );
\dataout[18]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[18]_INST_0_i_1_n_0\,
      I1 => \dataout[18]_INST_0_i_2_n_0\,
      O => \^dataout\(18),
      S => \^status\(13)
    );
\dataout[18]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[18]_INST_0_i_3_n_0\,
      I1 => \dataout[18]_INST_0_i_4_n_0\,
      O => \dataout[18]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[18]_INST_0_i_5_n_0\,
      I1 => \dataout[18]_INST_0_i_6_n_0\,
      O => \dataout[18]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(18),
      I1 => \data_reg[2]__0\(18),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(18),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(18),
      O => \dataout[18]_INST_0_i_3_n_0\
    );
\dataout[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(18),
      I1 => \data_reg[6]__0\(18),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(18),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(18),
      O => \dataout[18]_INST_0_i_4_n_0\
    );
\dataout[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(18),
      I1 => \data_reg[10]__0\(18),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(18),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(18),
      O => \dataout[18]_INST_0_i_5_n_0\
    );
\dataout[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(18),
      I1 => \data_reg[14]__0\(18),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(18),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(18),
      O => \dataout[18]_INST_0_i_6_n_0\
    );
\dataout[19]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[19]_INST_0_i_1_n_0\,
      I1 => \dataout[19]_INST_0_i_2_n_0\,
      O => \^dataout\(19),
      S => \^status\(13)
    );
\dataout[19]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[19]_INST_0_i_3_n_0\,
      I1 => \dataout[19]_INST_0_i_4_n_0\,
      O => \dataout[19]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[19]_INST_0_i_5_n_0\,
      I1 => \dataout[19]_INST_0_i_6_n_0\,
      O => \dataout[19]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(19),
      I1 => \data_reg[2]__0\(19),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(19),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(19),
      O => \dataout[19]_INST_0_i_3_n_0\
    );
\dataout[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(19),
      I1 => \data_reg[6]__0\(19),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(19),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(19),
      O => \dataout[19]_INST_0_i_4_n_0\
    );
\dataout[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(19),
      I1 => \data_reg[10]__0\(19),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(19),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(19),
      O => \dataout[19]_INST_0_i_5_n_0\
    );
\dataout[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(19),
      I1 => \data_reg[14]__0\(19),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(19),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(19),
      O => \dataout[19]_INST_0_i_6_n_0\
    );
\dataout[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[1]_INST_0_i_1_n_0\,
      I1 => \dataout[1]_INST_0_i_2_n_0\,
      O => \^dataout\(1),
      S => \^status\(13)
    );
\dataout[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[1]_INST_0_i_3_n_0\,
      I1 => \dataout[1]_INST_0_i_4_n_0\,
      O => \dataout[1]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[1]_INST_0_i_5_n_0\,
      I1 => \dataout[1]_INST_0_i_6_n_0\,
      O => \dataout[1]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(1),
      I1 => \data_reg[2]__0\(1),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(1),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(1),
      O => \dataout[1]_INST_0_i_3_n_0\
    );
\dataout[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(1),
      I1 => \data_reg[6]__0\(1),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(1),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(1),
      O => \dataout[1]_INST_0_i_4_n_0\
    );
\dataout[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(1),
      I1 => \data_reg[10]__0\(1),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(1),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(1),
      O => \dataout[1]_INST_0_i_5_n_0\
    );
\dataout[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(1),
      I1 => \data_reg[14]__0\(1),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(1),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(1),
      O => \dataout[1]_INST_0_i_6_n_0\
    );
\dataout[20]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[20]_INST_0_i_1_n_0\,
      I1 => \dataout[20]_INST_0_i_2_n_0\,
      O => \^dataout\(20),
      S => \^status\(13)
    );
\dataout[20]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[20]_INST_0_i_3_n_0\,
      I1 => \dataout[20]_INST_0_i_4_n_0\,
      O => \dataout[20]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[20]_INST_0_i_5_n_0\,
      I1 => \dataout[20]_INST_0_i_6_n_0\,
      O => \dataout[20]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(20),
      I1 => \data_reg[2]__0\(20),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(20),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(20),
      O => \dataout[20]_INST_0_i_3_n_0\
    );
\dataout[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(20),
      I1 => \data_reg[6]__0\(20),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(20),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(20),
      O => \dataout[20]_INST_0_i_4_n_0\
    );
\dataout[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(20),
      I1 => \data_reg[10]__0\(20),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(20),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(20),
      O => \dataout[20]_INST_0_i_5_n_0\
    );
\dataout[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(20),
      I1 => \data_reg[14]__0\(20),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(20),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(20),
      O => \dataout[20]_INST_0_i_6_n_0\
    );
\dataout[21]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[21]_INST_0_i_1_n_0\,
      I1 => \dataout[21]_INST_0_i_2_n_0\,
      O => \^dataout\(21),
      S => \^status\(13)
    );
\dataout[21]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[21]_INST_0_i_3_n_0\,
      I1 => \dataout[21]_INST_0_i_4_n_0\,
      O => \dataout[21]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[21]_INST_0_i_5_n_0\,
      I1 => \dataout[21]_INST_0_i_6_n_0\,
      O => \dataout[21]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(21),
      I1 => \data_reg[2]__0\(21),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(21),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(21),
      O => \dataout[21]_INST_0_i_3_n_0\
    );
\dataout[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(21),
      I1 => \data_reg[6]__0\(21),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(21),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(21),
      O => \dataout[21]_INST_0_i_4_n_0\
    );
\dataout[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(21),
      I1 => \data_reg[10]__0\(21),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(21),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(21),
      O => \dataout[21]_INST_0_i_5_n_0\
    );
\dataout[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(21),
      I1 => \data_reg[14]__0\(21),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(21),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(21),
      O => \dataout[21]_INST_0_i_6_n_0\
    );
\dataout[22]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[22]_INST_0_i_1_n_0\,
      I1 => \dataout[22]_INST_0_i_2_n_0\,
      O => \^dataout\(22),
      S => \^status\(13)
    );
\dataout[22]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[22]_INST_0_i_3_n_0\,
      I1 => \dataout[22]_INST_0_i_4_n_0\,
      O => \dataout[22]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[22]_INST_0_i_5_n_0\,
      I1 => \dataout[22]_INST_0_i_6_n_0\,
      O => \dataout[22]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(22),
      I1 => \data_reg[2]__0\(22),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(22),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(22),
      O => \dataout[22]_INST_0_i_3_n_0\
    );
\dataout[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(22),
      I1 => \data_reg[6]__0\(22),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(22),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(22),
      O => \dataout[22]_INST_0_i_4_n_0\
    );
\dataout[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(22),
      I1 => \data_reg[10]__0\(22),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(22),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(22),
      O => \dataout[22]_INST_0_i_5_n_0\
    );
\dataout[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(22),
      I1 => \data_reg[14]__0\(22),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(22),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(22),
      O => \dataout[22]_INST_0_i_6_n_0\
    );
\dataout[23]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[23]_INST_0_i_1_n_0\,
      I1 => \dataout[23]_INST_0_i_2_n_0\,
      O => \^dataout\(23),
      S => \^status\(13)
    );
\dataout[23]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[23]_INST_0_i_3_n_0\,
      I1 => \dataout[23]_INST_0_i_4_n_0\,
      O => \dataout[23]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[23]_INST_0_i_5_n_0\,
      I1 => \dataout[23]_INST_0_i_6_n_0\,
      O => \dataout[23]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(23),
      I1 => \data_reg[2]__0\(23),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(23),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(23),
      O => \dataout[23]_INST_0_i_3_n_0\
    );
\dataout[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(23),
      I1 => \data_reg[6]__0\(23),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(23),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(23),
      O => \dataout[23]_INST_0_i_4_n_0\
    );
\dataout[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(23),
      I1 => \data_reg[10]__0\(23),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(23),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(23),
      O => \dataout[23]_INST_0_i_5_n_0\
    );
\dataout[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(23),
      I1 => \data_reg[14]__0\(23),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(23),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(23),
      O => \dataout[23]_INST_0_i_6_n_0\
    );
\dataout[24]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[24]_INST_0_i_1_n_0\,
      I1 => \dataout[24]_INST_0_i_2_n_0\,
      O => \^dataout\(24),
      S => \^status\(13)
    );
\dataout[24]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[24]_INST_0_i_3_n_0\,
      I1 => \dataout[24]_INST_0_i_4_n_0\,
      O => \dataout[24]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[24]_INST_0_i_5_n_0\,
      I1 => \dataout[24]_INST_0_i_6_n_0\,
      O => \dataout[24]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(24),
      I1 => \data_reg[2]__0\(24),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(24),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(24),
      O => \dataout[24]_INST_0_i_3_n_0\
    );
\dataout[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(24),
      I1 => \data_reg[6]__0\(24),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(24),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(24),
      O => \dataout[24]_INST_0_i_4_n_0\
    );
\dataout[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(24),
      I1 => \data_reg[10]__0\(24),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(24),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(24),
      O => \dataout[24]_INST_0_i_5_n_0\
    );
\dataout[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(24),
      I1 => \data_reg[14]__0\(24),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(24),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(24),
      O => \dataout[24]_INST_0_i_6_n_0\
    );
\dataout[25]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[25]_INST_0_i_1_n_0\,
      I1 => \dataout[25]_INST_0_i_2_n_0\,
      O => \^dataout\(25),
      S => \^status\(13)
    );
\dataout[25]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[25]_INST_0_i_3_n_0\,
      I1 => \dataout[25]_INST_0_i_4_n_0\,
      O => \dataout[25]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[25]_INST_0_i_5_n_0\,
      I1 => \dataout[25]_INST_0_i_6_n_0\,
      O => \dataout[25]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(25),
      I1 => \data_reg[2]__0\(25),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(25),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(25),
      O => \dataout[25]_INST_0_i_3_n_0\
    );
\dataout[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(25),
      I1 => \data_reg[6]__0\(25),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(25),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(25),
      O => \dataout[25]_INST_0_i_4_n_0\
    );
\dataout[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(25),
      I1 => \data_reg[10]__0\(25),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(25),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(25),
      O => \dataout[25]_INST_0_i_5_n_0\
    );
\dataout[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(25),
      I1 => \data_reg[14]__0\(25),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(25),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(25),
      O => \dataout[25]_INST_0_i_6_n_0\
    );
\dataout[26]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[26]_INST_0_i_1_n_0\,
      I1 => \dataout[26]_INST_0_i_2_n_0\,
      O => \^dataout\(26),
      S => \^status\(13)
    );
\dataout[26]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[26]_INST_0_i_3_n_0\,
      I1 => \dataout[26]_INST_0_i_4_n_0\,
      O => \dataout[26]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[26]_INST_0_i_5_n_0\,
      I1 => \dataout[26]_INST_0_i_6_n_0\,
      O => \dataout[26]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(26),
      I1 => \data_reg[2]__0\(26),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(26),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(26),
      O => \dataout[26]_INST_0_i_3_n_0\
    );
\dataout[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(26),
      I1 => \data_reg[6]__0\(26),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(26),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(26),
      O => \dataout[26]_INST_0_i_4_n_0\
    );
\dataout[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(26),
      I1 => \data_reg[10]__0\(26),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(26),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(26),
      O => \dataout[26]_INST_0_i_5_n_0\
    );
\dataout[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(26),
      I1 => \data_reg[14]__0\(26),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(26),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(26),
      O => \dataout[26]_INST_0_i_6_n_0\
    );
\dataout[27]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[27]_INST_0_i_1_n_0\,
      I1 => \dataout[27]_INST_0_i_2_n_0\,
      O => \^dataout\(27),
      S => \^status\(13)
    );
\dataout[27]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[27]_INST_0_i_3_n_0\,
      I1 => \dataout[27]_INST_0_i_4_n_0\,
      O => \dataout[27]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[27]_INST_0_i_5_n_0\,
      I1 => \dataout[27]_INST_0_i_6_n_0\,
      O => \dataout[27]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(27),
      I1 => \data_reg[2]__0\(27),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(27),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(27),
      O => \dataout[27]_INST_0_i_3_n_0\
    );
\dataout[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(27),
      I1 => \data_reg[6]__0\(27),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(27),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(27),
      O => \dataout[27]_INST_0_i_4_n_0\
    );
\dataout[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(27),
      I1 => \data_reg[10]__0\(27),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(27),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(27),
      O => \dataout[27]_INST_0_i_5_n_0\
    );
\dataout[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(27),
      I1 => \data_reg[14]__0\(27),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(27),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(27),
      O => \dataout[27]_INST_0_i_6_n_0\
    );
\dataout[28]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[28]_INST_0_i_1_n_0\,
      I1 => \dataout[28]_INST_0_i_2_n_0\,
      O => \^dataout\(28),
      S => \^status\(13)
    );
\dataout[28]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[28]_INST_0_i_3_n_0\,
      I1 => \dataout[28]_INST_0_i_4_n_0\,
      O => \dataout[28]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[28]_INST_0_i_5_n_0\,
      I1 => \dataout[28]_INST_0_i_6_n_0\,
      O => \dataout[28]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(28),
      I1 => \data_reg[2]__0\(28),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(28),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(28),
      O => \dataout[28]_INST_0_i_3_n_0\
    );
\dataout[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(28),
      I1 => \data_reg[6]__0\(28),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(28),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(28),
      O => \dataout[28]_INST_0_i_4_n_0\
    );
\dataout[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(28),
      I1 => \data_reg[10]__0\(28),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(28),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(28),
      O => \dataout[28]_INST_0_i_5_n_0\
    );
\dataout[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(28),
      I1 => \data_reg[14]__0\(28),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(28),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(28),
      O => \dataout[28]_INST_0_i_6_n_0\
    );
\dataout[29]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[29]_INST_0_i_1_n_0\,
      I1 => \dataout[29]_INST_0_i_2_n_0\,
      O => \^dataout\(29),
      S => \^status\(13)
    );
\dataout[29]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[29]_INST_0_i_3_n_0\,
      I1 => \dataout[29]_INST_0_i_4_n_0\,
      O => \dataout[29]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[29]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[29]_INST_0_i_5_n_0\,
      I1 => \dataout[29]_INST_0_i_6_n_0\,
      O => \dataout[29]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(29),
      I1 => \data_reg[2]__0\(29),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(29),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(29),
      O => \dataout[29]_INST_0_i_3_n_0\
    );
\dataout[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(29),
      I1 => \data_reg[6]__0\(29),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(29),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(29),
      O => \dataout[29]_INST_0_i_4_n_0\
    );
\dataout[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(29),
      I1 => \data_reg[10]__0\(29),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(29),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(29),
      O => \dataout[29]_INST_0_i_5_n_0\
    );
\dataout[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(29),
      I1 => \data_reg[14]__0\(29),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(29),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(29),
      O => \dataout[29]_INST_0_i_6_n_0\
    );
\dataout[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[2]_INST_0_i_1_n_0\,
      I1 => \dataout[2]_INST_0_i_2_n_0\,
      O => \^dataout\(2),
      S => \^status\(13)
    );
\dataout[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[2]_INST_0_i_3_n_0\,
      I1 => \dataout[2]_INST_0_i_4_n_0\,
      O => \dataout[2]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[2]_INST_0_i_5_n_0\,
      I1 => \dataout[2]_INST_0_i_6_n_0\,
      O => \dataout[2]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(2),
      I1 => \data_reg[2]__0\(2),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(2),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(2),
      O => \dataout[2]_INST_0_i_3_n_0\
    );
\dataout[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(2),
      I1 => \data_reg[6]__0\(2),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(2),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(2),
      O => \dataout[2]_INST_0_i_4_n_0\
    );
\dataout[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(2),
      I1 => \data_reg[10]__0\(2),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(2),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(2),
      O => \dataout[2]_INST_0_i_5_n_0\
    );
\dataout[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(2),
      I1 => \data_reg[14]__0\(2),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(2),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(2),
      O => \dataout[2]_INST_0_i_6_n_0\
    );
\dataout[30]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[30]_INST_0_i_1_n_0\,
      I1 => \dataout[30]_INST_0_i_2_n_0\,
      O => \^dataout\(30),
      S => \^status\(13)
    );
\dataout[30]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[30]_INST_0_i_3_n_0\,
      I1 => \dataout[30]_INST_0_i_4_n_0\,
      O => \dataout[30]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[30]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[30]_INST_0_i_5_n_0\,
      I1 => \dataout[30]_INST_0_i_6_n_0\,
      O => \dataout[30]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(30),
      I1 => \data_reg[2]__0\(30),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(30),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(30),
      O => \dataout[30]_INST_0_i_3_n_0\
    );
\dataout[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(30),
      I1 => \data_reg[6]__0\(30),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(30),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(30),
      O => \dataout[30]_INST_0_i_4_n_0\
    );
\dataout[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(30),
      I1 => \data_reg[10]__0\(30),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(30),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(30),
      O => \dataout[30]_INST_0_i_5_n_0\
    );
\dataout[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(30),
      I1 => \data_reg[14]__0\(30),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(30),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(30),
      O => \dataout[30]_INST_0_i_6_n_0\
    );
\dataout[31]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[31]_INST_0_i_1_n_0\,
      I1 => \dataout[31]_INST_0_i_2_n_0\,
      O => \^dataout\(31),
      S => \^status\(13)
    );
\dataout[31]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[31]_INST_0_i_3_n_0\,
      I1 => \dataout[31]_INST_0_i_4_n_0\,
      O => \dataout[31]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[31]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[31]_INST_0_i_5_n_0\,
      I1 => \dataout[31]_INST_0_i_6_n_0\,
      O => \dataout[31]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(31),
      I1 => \data_reg[2]__0\(31),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(31),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(31),
      O => \dataout[31]_INST_0_i_3_n_0\
    );
\dataout[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(31),
      I1 => \data_reg[6]__0\(31),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(31),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(31),
      O => \dataout[31]_INST_0_i_4_n_0\
    );
\dataout[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(31),
      I1 => \data_reg[10]__0\(31),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(31),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(31),
      O => \dataout[31]_INST_0_i_5_n_0\
    );
\dataout[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(31),
      I1 => \data_reg[14]__0\(31),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(31),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(31),
      O => \dataout[31]_INST_0_i_6_n_0\
    );
\dataout[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[3]_INST_0_i_1_n_0\,
      I1 => \dataout[3]_INST_0_i_2_n_0\,
      O => \^dataout\(3),
      S => \^status\(13)
    );
\dataout[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[3]_INST_0_i_3_n_0\,
      I1 => \dataout[3]_INST_0_i_4_n_0\,
      O => \dataout[3]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[3]_INST_0_i_5_n_0\,
      I1 => \dataout[3]_INST_0_i_6_n_0\,
      O => \dataout[3]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(3),
      I1 => \data_reg[2]__0\(3),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(3),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(3),
      O => \dataout[3]_INST_0_i_3_n_0\
    );
\dataout[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(3),
      I1 => \data_reg[6]__0\(3),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(3),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(3),
      O => \dataout[3]_INST_0_i_4_n_0\
    );
\dataout[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(3),
      I1 => \data_reg[10]__0\(3),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(3),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(3),
      O => \dataout[3]_INST_0_i_5_n_0\
    );
\dataout[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(3),
      I1 => \data_reg[14]__0\(3),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(3),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(3),
      O => \dataout[3]_INST_0_i_6_n_0\
    );
\dataout[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[4]_INST_0_i_1_n_0\,
      I1 => \dataout[4]_INST_0_i_2_n_0\,
      O => \^dataout\(4),
      S => \^status\(13)
    );
\dataout[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[4]_INST_0_i_3_n_0\,
      I1 => \dataout[4]_INST_0_i_4_n_0\,
      O => \dataout[4]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[4]_INST_0_i_5_n_0\,
      I1 => \dataout[4]_INST_0_i_6_n_0\,
      O => \dataout[4]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(4),
      I1 => \data_reg[2]__0\(4),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(4),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(4),
      O => \dataout[4]_INST_0_i_3_n_0\
    );
\dataout[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(4),
      I1 => \data_reg[6]__0\(4),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(4),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(4),
      O => \dataout[4]_INST_0_i_4_n_0\
    );
\dataout[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(4),
      I1 => \data_reg[10]__0\(4),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(4),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(4),
      O => \dataout[4]_INST_0_i_5_n_0\
    );
\dataout[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(4),
      I1 => \data_reg[14]__0\(4),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(4),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(4),
      O => \dataout[4]_INST_0_i_6_n_0\
    );
\dataout[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[5]_INST_0_i_1_n_0\,
      I1 => \dataout[5]_INST_0_i_2_n_0\,
      O => \^dataout\(5),
      S => \^status\(13)
    );
\dataout[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[5]_INST_0_i_3_n_0\,
      I1 => \dataout[5]_INST_0_i_4_n_0\,
      O => \dataout[5]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[5]_INST_0_i_5_n_0\,
      I1 => \dataout[5]_INST_0_i_6_n_0\,
      O => \dataout[5]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(5),
      I1 => \data_reg[2]__0\(5),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(5),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(5),
      O => \dataout[5]_INST_0_i_3_n_0\
    );
\dataout[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(5),
      I1 => \data_reg[6]__0\(5),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(5),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(5),
      O => \dataout[5]_INST_0_i_4_n_0\
    );
\dataout[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(5),
      I1 => \data_reg[10]__0\(5),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(5),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(5),
      O => \dataout[5]_INST_0_i_5_n_0\
    );
\dataout[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(5),
      I1 => \data_reg[14]__0\(5),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(5),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(5),
      O => \dataout[5]_INST_0_i_6_n_0\
    );
\dataout[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[6]_INST_0_i_1_n_0\,
      I1 => \dataout[6]_INST_0_i_2_n_0\,
      O => \^dataout\(6),
      S => \^status\(13)
    );
\dataout[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[6]_INST_0_i_3_n_0\,
      I1 => \dataout[6]_INST_0_i_4_n_0\,
      O => \dataout[6]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[6]_INST_0_i_5_n_0\,
      I1 => \dataout[6]_INST_0_i_6_n_0\,
      O => \dataout[6]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(6),
      I1 => \data_reg[2]__0\(6),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(6),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(6),
      O => \dataout[6]_INST_0_i_3_n_0\
    );
\dataout[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(6),
      I1 => \data_reg[6]__0\(6),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(6),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(6),
      O => \dataout[6]_INST_0_i_4_n_0\
    );
\dataout[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(6),
      I1 => \data_reg[10]__0\(6),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(6),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(6),
      O => \dataout[6]_INST_0_i_5_n_0\
    );
\dataout[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(6),
      I1 => \data_reg[14]__0\(6),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(6),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(6),
      O => \dataout[6]_INST_0_i_6_n_0\
    );
\dataout[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[7]_INST_0_i_1_n_0\,
      I1 => \dataout[7]_INST_0_i_2_n_0\,
      O => \^dataout\(7),
      S => \^status\(13)
    );
\dataout[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[7]_INST_0_i_3_n_0\,
      I1 => \dataout[7]_INST_0_i_4_n_0\,
      O => \dataout[7]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[7]_INST_0_i_5_n_0\,
      I1 => \dataout[7]_INST_0_i_6_n_0\,
      O => \dataout[7]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(7),
      I1 => \data_reg[2]__0\(7),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(7),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(7),
      O => \dataout[7]_INST_0_i_3_n_0\
    );
\dataout[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(7),
      I1 => \data_reg[6]__0\(7),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(7),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(7),
      O => \dataout[7]_INST_0_i_4_n_0\
    );
\dataout[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(7),
      I1 => \data_reg[10]__0\(7),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(7),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(7),
      O => \dataout[7]_INST_0_i_5_n_0\
    );
\dataout[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(7),
      I1 => \data_reg[14]__0\(7),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(7),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(7),
      O => \dataout[7]_INST_0_i_6_n_0\
    );
\dataout[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[8]_INST_0_i_1_n_0\,
      I1 => \dataout[8]_INST_0_i_2_n_0\,
      O => \^dataout\(8),
      S => \^status\(13)
    );
\dataout[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[8]_INST_0_i_3_n_0\,
      I1 => \dataout[8]_INST_0_i_4_n_0\,
      O => \dataout[8]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[8]_INST_0_i_5_n_0\,
      I1 => \dataout[8]_INST_0_i_6_n_0\,
      O => \dataout[8]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(8),
      I1 => \data_reg[2]__0\(8),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(8),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(8),
      O => \dataout[8]_INST_0_i_3_n_0\
    );
\dataout[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(8),
      I1 => \data_reg[6]__0\(8),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(8),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(8),
      O => \dataout[8]_INST_0_i_4_n_0\
    );
\dataout[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(8),
      I1 => \data_reg[10]__0\(8),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(8),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(8),
      O => \dataout[8]_INST_0_i_5_n_0\
    );
\dataout[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(8),
      I1 => \data_reg[14]__0\(8),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(8),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(8),
      O => \dataout[8]_INST_0_i_6_n_0\
    );
\dataout[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dataout[9]_INST_0_i_1_n_0\,
      I1 => \dataout[9]_INST_0_i_2_n_0\,
      O => \^dataout\(9),
      S => \^status\(13)
    );
\dataout[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[9]_INST_0_i_3_n_0\,
      I1 => \dataout[9]_INST_0_i_4_n_0\,
      O => \dataout[9]_INST_0_i_1_n_0\,
      S => \^status\(12)
    );
\dataout[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dataout[9]_INST_0_i_5_n_0\,
      I1 => \dataout[9]_INST_0_i_6_n_0\,
      O => \dataout[9]_INST_0_i_2_n_0\,
      S => \^status\(12)
    );
\dataout[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[3]__0\(9),
      I1 => \data_reg[2]__0\(9),
      I2 => \^status\(11),
      I3 => \data_reg[1]__0\(9),
      I4 => \^status\(10),
      I5 => \data_reg[0]__0\(9),
      O => \dataout[9]_INST_0_i_3_n_0\
    );
\dataout[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[7]__0\(9),
      I1 => \data_reg[6]__0\(9),
      I2 => \^status\(11),
      I3 => \data_reg[5]__0\(9),
      I4 => \^status\(10),
      I5 => \data_reg[4]__0\(9),
      O => \dataout[9]_INST_0_i_4_n_0\
    );
\dataout[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[11]__0\(9),
      I1 => \data_reg[10]__0\(9),
      I2 => \^status\(11),
      I3 => \data_reg[9]__0\(9),
      I4 => \^status\(10),
      I5 => \data_reg[8]__0\(9),
      O => \dataout[9]_INST_0_i_5_n_0\
    );
\dataout[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg[15]__0\(9),
      I1 => \data_reg[14]__0\(9),
      I2 => \^status\(11),
      I3 => \data_reg[13]__0\(9),
      I4 => \^status\(10),
      I5 => \data_reg[12]__0\(9),
      O => \dataout[9]_INST_0_i_6_n_0\
    );
empty_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(13),
      I2 => empty_INST_0_i_1_n_0,
      O => \^status\(1)
    );
empty_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(10),
      I2 => \^status\(12),
      I3 => \^status\(8),
      I4 => \^status\(11),
      I5 => \^status\(7),
      O => empty_INST_0_i_1_n_0
    );
full_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80807F00000000"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(6),
      I2 => \^status\(8),
      I3 => \^status\(9),
      I4 => \^status\(13),
      I5 => full_INST_0_i_1_n_0,
      O => \^status\(0)
    );
full_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => \^status\(10),
      I1 => \^status\(12),
      I2 => \^status\(8),
      I3 => \^status\(7),
      I4 => \^status\(6),
      I5 => \^status\(11),
      O => full_INST_0_i_1_n_0
    );
overflow_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \^overflow_reg_0\,
      I1 => \^status\(0),
      I2 => wr_out,
      I3 => axi_interface_spi_aresetn,
      I4 => clr_out,
      O => overflow_i_1_n_0
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => overflow_i_1_n_0,
      Q => \^overflow_reg_0\,
      R => '0'
    );
\rd_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(10),
      O => \rd_index[0]_i_1_n_0\
    );
\rd_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^status\(10),
      I1 => \^status\(11),
      O => p_0_in(1)
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^status\(10),
      I1 => \^status\(11),
      I2 => \^status\(12),
      O => p_0_in(2)
    );
\rd_index[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^status\(11),
      I1 => \^status\(10),
      I2 => \^status\(12),
      I3 => \^status\(13),
      O => p_0_in(3)
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => E(0),
      D => \rd_index[0]_i_1_n_0\,
      Q => \^status\(10),
      R => SR(0)
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => E(0),
      D => p_0_in(1),
      Q => \^status\(11),
      R => SR(0)
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => E(0),
      D => p_0_in(2),
      Q => \^status\(12),
      R => SR(0)
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => E(0),
      D => p_0_in(3),
      Q => \^status\(13),
      R => SR(0)
    );
\status[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(10),
      O => \^status\(2)
    );
\status[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^status\(10),
      I1 => \^status\(6),
      I2 => \^status\(11),
      I3 => \^status\(7),
      O => \^status\(3)
    );
\status[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(10),
      I2 => \^status\(7),
      I3 => \^status\(11),
      I4 => \^status\(12),
      I5 => \^status\(8),
      O => \^status\(4)
    );
\status[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \status[23]_INST_0_i_1_n_0\,
      I1 => \^status\(8),
      I2 => \^status\(12),
      I3 => \^status\(13),
      I4 => \^status\(9),
      O => \^status\(5)
    );
\status[23]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD4D"
    )
        port map (
      I0 => \^status\(11),
      I1 => \^status\(7),
      I2 => \^status\(10),
      I3 => \^status\(6),
      O => \status[23]_INST_0_i_1_n_0\
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(6),
      O => \wr_index[0]_i_1_n_0\
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(7),
      O => \wr_index[1]_i_1_n_0\
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(7),
      I2 => \^status\(8),
      O => \wr_index[2]_i_1_n_0\
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => wr_out,
      I1 => \^status\(0),
      I2 => \^overflow_reg_0\,
      O => wr_index0
    );
\wr_index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(6),
      I2 => \^status\(8),
      I3 => \^status\(9),
      O => \wr_index[3]_i_2_n_0\
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => wr_index0,
      D => \wr_index[0]_i_1_n_0\,
      Q => \^status\(6),
      R => SR(0)
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => wr_index0,
      D => \wr_index[1]_i_1_n_0\,
      Q => \^status\(7),
      R => SR(0)
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => wr_index0,
      D => \wr_index[2]_i_1_n_0\,
      Q => \^status\(8),
      R => SR(0)
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => wr_index0,
      D => \wr_index[3]_i_2_n_0\,
      Q => \^status\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_the_brd is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[15]\ : out STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_aresetn : in STD_LOGIC;
    baud_clk_next_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    baud_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_the_brd : entity is "the_brd";
end system_My_SPI_0_4_the_brd;

architecture STRUCTURE of system_My_SPI_0_4_the_brd is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal acc_add : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal acc_add0 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \acc_add[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc_add[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc_add[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc_add[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc_add[6]_i_3_n_0\ : STD_LOGIC;
  signal \acc_add[6]_i_4_n_0\ : STD_LOGIC;
  signal \acc_add[6]_i_5_n_0\ : STD_LOGIC;
  signal \acc_add[6]_i_6_n_0\ : STD_LOGIC;
  signal \acc_add_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc_add_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \acc_add_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \acc_add_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \acc_add_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \acc_add_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[0]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[1]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[2]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[3]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[4]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[5]\ : STD_LOGIC;
  signal \acc_add_reg_n_0_[6]\ : STD_LOGIC;
  signal acc_frac : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \acc_frac0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__0_n_1\ : STD_LOGIC;
  signal \acc_frac0_carry__0_n_2\ : STD_LOGIC;
  signal \acc_frac0_carry__0_n_3\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__1_n_1\ : STD_LOGIC;
  signal \acc_frac0_carry__1_n_2\ : STD_LOGIC;
  signal \acc_frac0_carry__1_n_3\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \acc_frac0_carry__2_n_1\ : STD_LOGIC;
  signal \acc_frac0_carry__2_n_2\ : STD_LOGIC;
  signal \acc_frac0_carry__2_n_3\ : STD_LOGIC;
  signal acc_frac0_carry_i_1_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_2_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_3_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_4_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_5_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_6_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_7_n_0 : STD_LOGIC;
  signal acc_frac0_carry_i_8_n_0 : STD_LOGIC;
  signal acc_frac0_carry_n_0 : STD_LOGIC;
  signal acc_frac0_carry_n_1 : STD_LOGIC;
  signal acc_frac0_carry_n_2 : STD_LOGIC;
  signal acc_frac0_carry_n_3 : STD_LOGIC;
  signal \brd_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[0]_i_6_n_0\ : STD_LOGIC;
  signal \brd_cntr[12]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[12]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[12]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[12]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[16]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[16]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[16]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[16]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[20]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[20]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[20]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[20]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[24]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[24]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[24]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[24]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[28]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[28]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[28]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[28]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[4]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[4]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[4]_i_5_n_0\ : STD_LOGIC;
  signal \brd_cntr[8]_i_2_n_0\ : STD_LOGIC;
  signal \brd_cntr[8]_i_3_n_0\ : STD_LOGIC;
  signal \brd_cntr[8]_i_4_n_0\ : STD_LOGIC;
  signal \brd_cntr[8]_i_5_n_0\ : STD_LOGIC;
  signal brd_cntr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \brd_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \brd_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal brd_output : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \NLW_acc_add_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_acc_add_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_acc_frac0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_frac0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_frac0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_frac0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_brd_cntr_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_add_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_add_reg[6]_i_1\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of acc_frac0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \acc_frac0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \acc_frac0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \acc_frac0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \brd_cntr_reg[8]_i_1\ : label is 35;
begin
  SR(0) <= \^sr\(0);
\acc_add[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666666666666"
    )
        port map (
      I0 => acc_frac(3),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \acc_add[3]_i_2_n_0\
    );
\acc_add[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666666"
    )
        port map (
      I0 => acc_frac(2),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \acc_add[3]_i_3_n_0\
    );
\acc_add[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => acc_frac(1),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => \acc_add[3]_i_4_n_0\
    );
\acc_add[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => acc_frac(0),
      I1 => Q(1),
      I2 => Q(0),
      O => \acc_add[3]_i_5_n_0\
    );
\acc_add[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(6),
      I1 => \acc_add[6]_i_5_n_0\,
      O => acc_add0(6)
    );
\acc_add[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => acc_frac(5),
      I1 => Q(6),
      I2 => \acc_add[6]_i_5_n_0\,
      O => \acc_add[6]_i_3_n_0\
    );
\acc_add[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => acc_frac(4),
      I1 => Q(5),
      I2 => \acc_add[6]_i_6_n_0\,
      O => \acc_add[6]_i_4_n_0\
    );
\acc_add[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(4),
      O => \acc_add[6]_i_5_n_0\
    );
\acc_add[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => \acc_add[6]_i_6_n_0\
    );
\acc_add_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(0),
      Q => \acc_add_reg_n_0_[0]\
    );
\acc_add_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(1),
      Q => \acc_add_reg_n_0_[1]\
    );
\acc_add_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(2),
      Q => \acc_add_reg_n_0_[2]\
    );
\acc_add_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(3),
      Q => \acc_add_reg_n_0_[3]\
    );
\acc_add_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_add_reg[3]_i_1_n_0\,
      CO(2) => \acc_add_reg[3]_i_1_n_1\,
      CO(1) => \acc_add_reg[3]_i_1_n_2\,
      CO(0) => \acc_add_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_frac(3 downto 0),
      O(3 downto 0) => acc_add(3 downto 0),
      S(3) => \acc_add[3]_i_2_n_0\,
      S(2) => \acc_add[3]_i_3_n_0\,
      S(1) => \acc_add[3]_i_4_n_0\,
      S(0) => \acc_add[3]_i_5_n_0\
    );
\acc_add_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(4),
      Q => \acc_add_reg_n_0_[4]\
    );
\acc_add_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(5),
      Q => \acc_add_reg_n_0_[5]\
    );
\acc_add_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => acc_add(6),
      Q => \acc_add_reg_n_0_[6]\
    );
\acc_add_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_add_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_acc_add_reg[6]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \acc_add_reg[6]_i_1_n_2\,
      CO(0) => \acc_add_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => acc_frac(5 downto 4),
      O(3) => \NLW_acc_add_reg[6]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => acc_add(6 downto 4),
      S(3) => '0',
      S(2) => acc_add0(6),
      S(1) => \acc_add[6]_i_3_n_0\,
      S(0) => \acc_add[6]_i_4_n_0\
    );
acc_frac0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => acc_frac0_carry_n_0,
      CO(2) => acc_frac0_carry_n_1,
      CO(1) => acc_frac0_carry_n_2,
      CO(0) => acc_frac0_carry_n_3,
      CYINIT => '1',
      DI(3) => acc_frac0_carry_i_1_n_0,
      DI(2) => acc_frac0_carry_i_2_n_0,
      DI(1) => acc_frac0_carry_i_3_n_0,
      DI(0) => acc_frac0_carry_i_4_n_0,
      O(3 downto 0) => NLW_acc_frac0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => acc_frac0_carry_i_5_n_0,
      S(2) => acc_frac0_carry_i_6_n_0,
      S(1) => acc_frac0_carry_i_7_n_0,
      S(0) => acc_frac0_carry_i_8_n_0
    );
\acc_frac0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => acc_frac0_carry_n_0,
      CO(3) => \acc_frac0_carry__0_n_0\,
      CO(2) => \acc_frac0_carry__0_n_1\,
      CO(1) => \acc_frac0_carry__0_n_2\,
      CO(0) => \acc_frac0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \acc_frac0_carry__0_i_1_n_0\,
      DI(2) => \acc_frac0_carry__0_i_2_n_0\,
      DI(1) => \acc_frac0_carry__0_i_3_n_0\,
      DI(0) => \acc_frac0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_acc_frac0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \acc_frac0_carry__0_i_5_n_0\,
      S(2) => \acc_frac0_carry__0_i_6_n_0\,
      S(1) => \acc_frac0_carry__0_i_7_n_0\,
      S(0) => \acc_frac0_carry__0_i_8_n_0\
    );
\acc_frac0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(14),
      I1 => Q(21),
      I2 => Q(22),
      I3 => brd_cntr_reg(15),
      O => \acc_frac0_carry__0_i_1_n_0\
    );
\acc_frac0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(12),
      I1 => Q(19),
      I2 => Q(20),
      I3 => brd_cntr_reg(13),
      O => \acc_frac0_carry__0_i_2_n_0\
    );
\acc_frac0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(10),
      I1 => Q(17),
      I2 => Q(18),
      I3 => brd_cntr_reg(11),
      O => \acc_frac0_carry__0_i_3_n_0\
    );
\acc_frac0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(8),
      I1 => Q(15),
      I2 => Q(16),
      I3 => brd_cntr_reg(9),
      O => \acc_frac0_carry__0_i_4_n_0\
    );
\acc_frac0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(14),
      I1 => Q(21),
      I2 => brd_cntr_reg(15),
      I3 => Q(22),
      O => \acc_frac0_carry__0_i_5_n_0\
    );
\acc_frac0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(12),
      I1 => Q(19),
      I2 => brd_cntr_reg(13),
      I3 => Q(20),
      O => \acc_frac0_carry__0_i_6_n_0\
    );
\acc_frac0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(10),
      I1 => Q(17),
      I2 => brd_cntr_reg(11),
      I3 => Q(18),
      O => \acc_frac0_carry__0_i_7_n_0\
    );
\acc_frac0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(8),
      I1 => Q(15),
      I2 => brd_cntr_reg(9),
      I3 => Q(16),
      O => \acc_frac0_carry__0_i_8_n_0\
    );
\acc_frac0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_frac0_carry__0_n_0\,
      CO(3) => \acc_frac0_carry__1_n_0\,
      CO(2) => \acc_frac0_carry__1_n_1\,
      CO(1) => \acc_frac0_carry__1_n_2\,
      CO(0) => \acc_frac0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \acc_frac0_carry__1_i_1_n_0\,
      DI(2) => \acc_frac0_carry__1_i_2_n_0\,
      DI(1) => \acc_frac0_carry__1_i_3_n_0\,
      DI(0) => \acc_frac0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_acc_frac0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \acc_frac0_carry__1_i_5_n_0\,
      S(2) => \acc_frac0_carry__1_i_6_n_0\,
      S(1) => \acc_frac0_carry__1_i_7_n_0\,
      S(0) => \acc_frac0_carry__1_i_8_n_0\
    );
\acc_frac0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(22),
      I1 => Q(29),
      I2 => Q(30),
      I3 => brd_cntr_reg(23),
      O => \acc_frac0_carry__1_i_1_n_0\
    );
\acc_frac0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(20),
      I1 => Q(27),
      I2 => Q(28),
      I3 => brd_cntr_reg(21),
      O => \acc_frac0_carry__1_i_2_n_0\
    );
\acc_frac0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(18),
      I1 => Q(25),
      I2 => Q(26),
      I3 => brd_cntr_reg(19),
      O => \acc_frac0_carry__1_i_3_n_0\
    );
\acc_frac0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(16),
      I1 => Q(23),
      I2 => Q(24),
      I3 => brd_cntr_reg(17),
      O => \acc_frac0_carry__1_i_4_n_0\
    );
\acc_frac0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(22),
      I1 => Q(29),
      I2 => brd_cntr_reg(23),
      I3 => Q(30),
      O => \acc_frac0_carry__1_i_5_n_0\
    );
\acc_frac0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(20),
      I1 => Q(27),
      I2 => brd_cntr_reg(21),
      I3 => Q(28),
      O => \acc_frac0_carry__1_i_6_n_0\
    );
\acc_frac0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(18),
      I1 => Q(25),
      I2 => brd_cntr_reg(19),
      I3 => Q(26),
      O => \acc_frac0_carry__1_i_7_n_0\
    );
\acc_frac0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(16),
      I1 => Q(23),
      I2 => brd_cntr_reg(17),
      I3 => Q(24),
      O => \acc_frac0_carry__1_i_8_n_0\
    );
\acc_frac0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_frac0_carry__1_n_0\,
      CO(3) => load,
      CO(2) => \acc_frac0_carry__2_n_1\,
      CO(1) => \acc_frac0_carry__2_n_2\,
      CO(0) => \acc_frac0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \acc_frac0_carry__2_i_1_n_0\,
      DI(2) => \acc_frac0_carry__2_i_2_n_0\,
      DI(1) => \acc_frac0_carry__2_i_3_n_0\,
      DI(0) => \acc_frac0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_acc_frac0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \acc_frac0_carry__2_i_5_n_0\,
      S(2) => \acc_frac0_carry__2_i_6_n_0\,
      S(1) => \acc_frac0_carry__2_i_7_n_0\,
      S(0) => \acc_frac0_carry__2_i_8_n_0\
    );
\acc_frac0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => brd_cntr_reg(30),
      I1 => brd_cntr_reg(31),
      O => \acc_frac0_carry__2_i_1_n_0\
    );
\acc_frac0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => brd_cntr_reg(28),
      I1 => brd_cntr_reg(29),
      O => \acc_frac0_carry__2_i_2_n_0\
    );
\acc_frac0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => brd_cntr_reg(26),
      I1 => brd_cntr_reg(27),
      O => \acc_frac0_carry__2_i_3_n_0\
    );
\acc_frac0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => brd_cntr_reg(24),
      I1 => Q(31),
      I2 => brd_cntr_reg(25),
      O => \acc_frac0_carry__2_i_4_n_0\
    );
\acc_frac0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => brd_cntr_reg(30),
      I1 => brd_cntr_reg(31),
      O => \acc_frac0_carry__2_i_5_n_0\
    );
\acc_frac0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => brd_cntr_reg(28),
      I1 => brd_cntr_reg(29),
      O => \acc_frac0_carry__2_i_6_n_0\
    );
\acc_frac0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => brd_cntr_reg(26),
      I1 => brd_cntr_reg(27),
      O => \acc_frac0_carry__2_i_7_n_0\
    );
\acc_frac0_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => brd_cntr_reg(24),
      I1 => Q(31),
      I2 => brd_cntr_reg(25),
      O => \acc_frac0_carry__2_i_8_n_0\
    );
acc_frac0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(6),
      I1 => Q(13),
      I2 => Q(14),
      I3 => brd_cntr_reg(7),
      O => acc_frac0_carry_i_1_n_0
    );
acc_frac0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(4),
      I1 => Q(11),
      I2 => Q(12),
      I3 => brd_cntr_reg(5),
      O => acc_frac0_carry_i_2_n_0
    );
acc_frac0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(2),
      I1 => Q(9),
      I2 => Q(10),
      I3 => brd_cntr_reg(3),
      O => acc_frac0_carry_i_3_n_0
    );
acc_frac0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => brd_cntr_reg(0),
      I1 => Q(7),
      I2 => Q(8),
      I3 => brd_cntr_reg(1),
      O => acc_frac0_carry_i_4_n_0
    );
acc_frac0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(6),
      I1 => Q(13),
      I2 => brd_cntr_reg(7),
      I3 => Q(14),
      O => acc_frac0_carry_i_5_n_0
    );
acc_frac0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(4),
      I1 => Q(11),
      I2 => brd_cntr_reg(5),
      I3 => Q(12),
      O => acc_frac0_carry_i_6_n_0
    );
acc_frac0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(2),
      I1 => Q(9),
      I2 => brd_cntr_reg(3),
      I3 => Q(10),
      O => acc_frac0_carry_i_7_n_0
    );
acc_frac0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => brd_cntr_reg(0),
      I1 => Q(7),
      I2 => brd_cntr_reg(1),
      I3 => Q(8),
      O => acc_frac0_carry_i_8_n_0
    );
\acc_frac_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[0]\,
      Q => acc_frac(0)
    );
\acc_frac_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[1]\,
      Q => acc_frac(1)
    );
\acc_frac_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[2]\,
      Q => acc_frac(2)
    );
\acc_frac_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[3]\,
      Q => acc_frac(3)
    );
\acc_frac_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[4]\,
      Q => acc_frac(4)
    );
\acc_frac_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => load,
      CLR => \^sr\(0),
      D => \acc_add_reg_n_0_[5]\,
      Q => acc_frac(5)
    );
baud_clk_next_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => baud_clk_next_reg(0),
      I1 => brd_output,
      I2 => baud_clk,
      O => \ctrl_reg[15]\
    );
\brd_cntr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \acc_add_reg_n_0_[6]\,
      I1 => load,
      I2 => brd_cntr_reg(0),
      O => \brd_cntr[0]_i_2_n_0\
    );
\brd_cntr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(3),
      I1 => load,
      O => \brd_cntr[0]_i_3_n_0\
    );
\brd_cntr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(2),
      I1 => load,
      O => \brd_cntr[0]_i_4_n_0\
    );
\brd_cntr[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(1),
      I1 => load,
      O => \brd_cntr[0]_i_5_n_0\
    );
\brd_cntr[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => brd_cntr_reg(0),
      I1 => \acc_add_reg_n_0_[6]\,
      I2 => load,
      O => \brd_cntr[0]_i_6_n_0\
    );
\brd_cntr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(15),
      I1 => load,
      O => \brd_cntr[12]_i_2_n_0\
    );
\brd_cntr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(14),
      I1 => load,
      O => \brd_cntr[12]_i_3_n_0\
    );
\brd_cntr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(13),
      I1 => load,
      O => \brd_cntr[12]_i_4_n_0\
    );
\brd_cntr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(12),
      I1 => load,
      O => \brd_cntr[12]_i_5_n_0\
    );
\brd_cntr[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(19),
      I1 => load,
      O => \brd_cntr[16]_i_2_n_0\
    );
\brd_cntr[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(18),
      I1 => load,
      O => \brd_cntr[16]_i_3_n_0\
    );
\brd_cntr[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(17),
      I1 => load,
      O => \brd_cntr[16]_i_4_n_0\
    );
\brd_cntr[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(16),
      I1 => load,
      O => \brd_cntr[16]_i_5_n_0\
    );
\brd_cntr[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(23),
      I1 => load,
      O => \brd_cntr[20]_i_2_n_0\
    );
\brd_cntr[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(22),
      I1 => load,
      O => \brd_cntr[20]_i_3_n_0\
    );
\brd_cntr[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(21),
      I1 => load,
      O => \brd_cntr[20]_i_4_n_0\
    );
\brd_cntr[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(20),
      I1 => load,
      O => \brd_cntr[20]_i_5_n_0\
    );
\brd_cntr[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(27),
      I1 => load,
      O => \brd_cntr[24]_i_2_n_0\
    );
\brd_cntr[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(26),
      I1 => load,
      O => \brd_cntr[24]_i_3_n_0\
    );
\brd_cntr[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(25),
      I1 => load,
      O => \brd_cntr[24]_i_4_n_0\
    );
\brd_cntr[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(24),
      I1 => load,
      O => \brd_cntr[24]_i_5_n_0\
    );
\brd_cntr[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(31),
      I1 => load,
      O => \brd_cntr[28]_i_2_n_0\
    );
\brd_cntr[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(30),
      I1 => load,
      O => \brd_cntr[28]_i_3_n_0\
    );
\brd_cntr[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(29),
      I1 => load,
      O => \brd_cntr[28]_i_4_n_0\
    );
\brd_cntr[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(28),
      I1 => load,
      O => \brd_cntr[28]_i_5_n_0\
    );
\brd_cntr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(7),
      I1 => load,
      O => \brd_cntr[4]_i_2_n_0\
    );
\brd_cntr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(6),
      I1 => load,
      O => \brd_cntr[4]_i_3_n_0\
    );
\brd_cntr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(5),
      I1 => load,
      O => \brd_cntr[4]_i_4_n_0\
    );
\brd_cntr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(4),
      I1 => load,
      O => \brd_cntr[4]_i_5_n_0\
    );
\brd_cntr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(11),
      I1 => load,
      O => \brd_cntr[8]_i_2_n_0\
    );
\brd_cntr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(10),
      I1 => load,
      O => \brd_cntr[8]_i_3_n_0\
    );
\brd_cntr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(9),
      I1 => load,
      O => \brd_cntr[8]_i_4_n_0\
    );
\brd_cntr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => brd_cntr_reg(8),
      I1 => load,
      O => \brd_cntr[8]_i_5_n_0\
    );
\brd_cntr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[0]_i_1_n_7\,
      Q => brd_cntr_reg(0)
    );
\brd_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \brd_cntr_reg[0]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[0]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[0]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \brd_cntr[0]_i_2_n_0\,
      O(3) => \brd_cntr_reg[0]_i_1_n_4\,
      O(2) => \brd_cntr_reg[0]_i_1_n_5\,
      O(1) => \brd_cntr_reg[0]_i_1_n_6\,
      O(0) => \brd_cntr_reg[0]_i_1_n_7\,
      S(3) => \brd_cntr[0]_i_3_n_0\,
      S(2) => \brd_cntr[0]_i_4_n_0\,
      S(1) => \brd_cntr[0]_i_5_n_0\,
      S(0) => \brd_cntr[0]_i_6_n_0\
    );
\brd_cntr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[8]_i_1_n_5\,
      Q => brd_cntr_reg(10)
    );
\brd_cntr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[8]_i_1_n_4\,
      Q => brd_cntr_reg(11)
    );
\brd_cntr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[12]_i_1_n_7\,
      Q => brd_cntr_reg(12)
    );
\brd_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[8]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[12]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[12]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[12]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[12]_i_1_n_4\,
      O(2) => \brd_cntr_reg[12]_i_1_n_5\,
      O(1) => \brd_cntr_reg[12]_i_1_n_6\,
      O(0) => \brd_cntr_reg[12]_i_1_n_7\,
      S(3) => \brd_cntr[12]_i_2_n_0\,
      S(2) => \brd_cntr[12]_i_3_n_0\,
      S(1) => \brd_cntr[12]_i_4_n_0\,
      S(0) => \brd_cntr[12]_i_5_n_0\
    );
\brd_cntr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[12]_i_1_n_6\,
      Q => brd_cntr_reg(13)
    );
\brd_cntr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[12]_i_1_n_5\,
      Q => brd_cntr_reg(14)
    );
\brd_cntr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[12]_i_1_n_4\,
      Q => brd_cntr_reg(15)
    );
\brd_cntr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[16]_i_1_n_7\,
      Q => brd_cntr_reg(16)
    );
\brd_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[12]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[16]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[16]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[16]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[16]_i_1_n_4\,
      O(2) => \brd_cntr_reg[16]_i_1_n_5\,
      O(1) => \brd_cntr_reg[16]_i_1_n_6\,
      O(0) => \brd_cntr_reg[16]_i_1_n_7\,
      S(3) => \brd_cntr[16]_i_2_n_0\,
      S(2) => \brd_cntr[16]_i_3_n_0\,
      S(1) => \brd_cntr[16]_i_4_n_0\,
      S(0) => \brd_cntr[16]_i_5_n_0\
    );
\brd_cntr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[16]_i_1_n_6\,
      Q => brd_cntr_reg(17)
    );
\brd_cntr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[16]_i_1_n_5\,
      Q => brd_cntr_reg(18)
    );
\brd_cntr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[16]_i_1_n_4\,
      Q => brd_cntr_reg(19)
    );
\brd_cntr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[0]_i_1_n_6\,
      Q => brd_cntr_reg(1)
    );
\brd_cntr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[20]_i_1_n_7\,
      Q => brd_cntr_reg(20)
    );
\brd_cntr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[16]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[20]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[20]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[20]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[20]_i_1_n_4\,
      O(2) => \brd_cntr_reg[20]_i_1_n_5\,
      O(1) => \brd_cntr_reg[20]_i_1_n_6\,
      O(0) => \brd_cntr_reg[20]_i_1_n_7\,
      S(3) => \brd_cntr[20]_i_2_n_0\,
      S(2) => \brd_cntr[20]_i_3_n_0\,
      S(1) => \brd_cntr[20]_i_4_n_0\,
      S(0) => \brd_cntr[20]_i_5_n_0\
    );
\brd_cntr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[20]_i_1_n_6\,
      Q => brd_cntr_reg(21)
    );
\brd_cntr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[20]_i_1_n_5\,
      Q => brd_cntr_reg(22)
    );
\brd_cntr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[20]_i_1_n_4\,
      Q => brd_cntr_reg(23)
    );
\brd_cntr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[24]_i_1_n_7\,
      Q => brd_cntr_reg(24)
    );
\brd_cntr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[20]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[24]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[24]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[24]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[24]_i_1_n_4\,
      O(2) => \brd_cntr_reg[24]_i_1_n_5\,
      O(1) => \brd_cntr_reg[24]_i_1_n_6\,
      O(0) => \brd_cntr_reg[24]_i_1_n_7\,
      S(3) => \brd_cntr[24]_i_2_n_0\,
      S(2) => \brd_cntr[24]_i_3_n_0\,
      S(1) => \brd_cntr[24]_i_4_n_0\,
      S(0) => \brd_cntr[24]_i_5_n_0\
    );
\brd_cntr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[24]_i_1_n_6\,
      Q => brd_cntr_reg(25)
    );
\brd_cntr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[24]_i_1_n_5\,
      Q => brd_cntr_reg(26)
    );
\brd_cntr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[24]_i_1_n_4\,
      Q => brd_cntr_reg(27)
    );
\brd_cntr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[28]_i_1_n_7\,
      Q => brd_cntr_reg(28)
    );
\brd_cntr_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[24]_i_1_n_0\,
      CO(3) => \NLW_brd_cntr_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \brd_cntr_reg[28]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[28]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[28]_i_1_n_4\,
      O(2) => \brd_cntr_reg[28]_i_1_n_5\,
      O(1) => \brd_cntr_reg[28]_i_1_n_6\,
      O(0) => \brd_cntr_reg[28]_i_1_n_7\,
      S(3) => \brd_cntr[28]_i_2_n_0\,
      S(2) => \brd_cntr[28]_i_3_n_0\,
      S(1) => \brd_cntr[28]_i_4_n_0\,
      S(0) => \brd_cntr[28]_i_5_n_0\
    );
\brd_cntr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[28]_i_1_n_6\,
      Q => brd_cntr_reg(29)
    );
\brd_cntr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[0]_i_1_n_5\,
      Q => brd_cntr_reg(2)
    );
\brd_cntr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[28]_i_1_n_5\,
      Q => brd_cntr_reg(30)
    );
\brd_cntr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[28]_i_1_n_4\,
      Q => brd_cntr_reg(31)
    );
\brd_cntr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[0]_i_1_n_4\,
      Q => brd_cntr_reg(3)
    );
\brd_cntr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[4]_i_1_n_7\,
      Q => brd_cntr_reg(4)
    );
\brd_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[0]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[4]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[4]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[4]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[4]_i_1_n_4\,
      O(2) => \brd_cntr_reg[4]_i_1_n_5\,
      O(1) => \brd_cntr_reg[4]_i_1_n_6\,
      O(0) => \brd_cntr_reg[4]_i_1_n_7\,
      S(3) => \brd_cntr[4]_i_2_n_0\,
      S(2) => \brd_cntr[4]_i_3_n_0\,
      S(1) => \brd_cntr[4]_i_4_n_0\,
      S(0) => \brd_cntr[4]_i_5_n_0\
    );
\brd_cntr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[4]_i_1_n_6\,
      Q => brd_cntr_reg(5)
    );
\brd_cntr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[4]_i_1_n_5\,
      Q => brd_cntr_reg(6)
    );
\brd_cntr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[4]_i_1_n_4\,
      Q => brd_cntr_reg(7)
    );
\brd_cntr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[8]_i_1_n_7\,
      Q => brd_cntr_reg(8)
    );
\brd_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \brd_cntr_reg[4]_i_1_n_0\,
      CO(3) => \brd_cntr_reg[8]_i_1_n_0\,
      CO(2) => \brd_cntr_reg[8]_i_1_n_1\,
      CO(1) => \brd_cntr_reg[8]_i_1_n_2\,
      CO(0) => \brd_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \brd_cntr_reg[8]_i_1_n_4\,
      O(2) => \brd_cntr_reg[8]_i_1_n_5\,
      O(1) => \brd_cntr_reg[8]_i_1_n_6\,
      O(0) => \brd_cntr_reg[8]_i_1_n_7\,
      S(3) => \brd_cntr[8]_i_2_n_0\,
      S(2) => \brd_cntr[8]_i_3_n_0\,
      S(1) => \brd_cntr[8]_i_4_n_0\,
      S(0) => \brd_cntr[8]_i_5_n_0\
    );
\brd_cntr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \brd_cntr_reg[8]_i_1_n_6\,
      Q => brd_cntr_reg(9)
    );
brd_output_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => load,
      Q => brd_output
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_interface_spi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_fifo_fixed is
  port (
    overflow_reg : out STD_LOGIC;
    axi_interface_spi_wvalid_0 : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_aclk : in STD_LOGIC;
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_awvalid : in STD_LOGIC;
    last_in_reg : in STD_LOGIC;
    last_in_reg_0 : in STD_LOGIC;
    rd_req_final : in STD_LOGIC;
    raddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_req_final : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_arvalid : in STD_LOGIC;
    last_in_reg_1 : in STD_LOGIC;
    last_in_reg_2 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[15][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clr_overflow_final : in STD_LOGIC;
    clr_overflow_req : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_fifo_fixed : entity is "fifo_fixed";
end system_My_SPI_0_4_fifo_fixed;

architecture STRUCTURE of system_My_SPI_0_4_fifo_fixed is
  signal clr_out : STD_LOGIC;
  signal rd_index0 : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal wr_out : STD_LOGIC;
begin
  status(13 downto 0) <= \^status\(13 downto 0);
a_fifo: entity work.system_My_SPI_0_4_fifo15x32
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => rd_index0,
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_aresetn => axi_interface_spi_aresetn,
      \axi_rdata_reg[31]\(31 downto 0) => \axi_rdata_reg[31]\(31 downto 0),
      clr_out => clr_out,
      \data_reg[15][31]_0\(31 downto 0) => \data_reg[15][31]\(31 downto 0),
      dataout(31 downto 0) => dataout(31 downto 0),
      overflow_reg_0 => overflow_reg,
      raddr(1 downto 0) => raddr(1 downto 0),
      status(13 downto 0) => \^status\(13 downto 0),
      wr_out => wr_out
    );
clr_det: entity work.system_My_SPI_0_4_edge_detector
     port map (
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      clr_out => clr_out,
      clr_overflow_final => clr_overflow_final,
      clr_overflow_req => clr_overflow_req
    );
rd_det: entity work.system_My_SPI_0_4_edge_detector_0
     port map (
      E(0) => rd_index0,
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_arvalid => axi_interface_spi_arvalid,
      last_in_reg_0 => last_in_reg_1,
      last_in_reg_1 => last_in_reg_2,
      raddr(2 downto 0) => raddr(2 downto 0),
      rd_req_final => rd_req_final,
      status(0) => \^status\(1)
    );
wr_det: entity work.system_My_SPI_0_4_edge_detector_1
     port map (
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_awvalid => axi_interface_spi_awvalid,
      axi_interface_spi_wvalid => axi_interface_spi_wvalid,
      axi_interface_spi_wvalid_0 => axi_interface_spi_wvalid_0,
      last_in_reg_0 => last_in_reg,
      last_in_reg_1 => last_in_reg_0,
      p_0_in_0(2 downto 0) => p_0_in_0(2 downto 0),
      wr_out => wr_out,
      wr_req_final => wr_req_final
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_interface_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_bvalid : out STD_LOGIC;
    baud_clk : out STD_LOGIC;
    axi_interface_spi_aresetn : in STD_LOGIC;
    axi_interface_spi_awvalid : in STD_LOGIC;
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_arvalid : in STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clr_overflow : in STD_LOGIC;
    rd_req : in STD_LOGIC;
    wr_req : in STD_LOGIC;
    axi_interface_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_interface_spi_bready : in STD_LOGIC;
    axi_interface_spi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI : entity is "My_SPI_slave_lite_v1_0_AXI_Interface_SPI";
end system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI;

architecture STRUCTURE of system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_interface_spi_bvalid\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wr_sel : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^baud_clk\ : STD_LOGIC;
  signal brd : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clr_overflow_betweener : STD_LOGIC;
  signal clr_overflow_final : STD_LOGIC;
  signal clr_overflow_req : STD_LOGIC;
  signal clr_overflow_req_i_1_n_0 : STD_LOGIC;
  signal clr_overflow_req_i_2_n_0 : STD_LOGIC;
  signal ctrl : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \ctrl[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[23]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[31]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[13]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[14]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[16]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[17]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[18]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[19]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[1]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[20]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[21]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[22]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[23]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[24]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[25]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[26]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[27]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[28]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[29]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[2]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[30]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[31]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctrl_reg_n_0_[9]\ : STD_LOGIC;
  signal \data[15]_i_1_n_0\ : STD_LOGIC;
  signal \data[23]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_reg_n_0_[9]\ : STD_LOGIC;
  signal datain_betweener : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal datain_final : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_wr_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_wr_req : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal raddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal rd_req_betweener : STD_LOGIC;
  signal rd_req_final : STD_LOGIC;
  signal the_brd_instantiation_n_0 : STD_LOGIC;
  signal the_brd_instantiation_n_1 : STD_LOGIC;
  signal tx_fifo_n_1 : STD_LOGIC;
  signal tx_fifo_n_16 : STD_LOGIC;
  signal tx_fifo_n_17 : STD_LOGIC;
  signal tx_fifo_n_18 : STD_LOGIC;
  signal tx_fifo_n_19 : STD_LOGIC;
  signal tx_fifo_n_20 : STD_LOGIC;
  signal tx_fifo_n_21 : STD_LOGIC;
  signal tx_fifo_n_22 : STD_LOGIC;
  signal tx_fifo_n_23 : STD_LOGIC;
  signal tx_fifo_n_24 : STD_LOGIC;
  signal tx_fifo_n_25 : STD_LOGIC;
  signal tx_fifo_n_26 : STD_LOGIC;
  signal tx_fifo_n_27 : STD_LOGIC;
  signal tx_fifo_n_28 : STD_LOGIC;
  signal tx_fifo_n_29 : STD_LOGIC;
  signal tx_fifo_n_30 : STD_LOGIC;
  signal tx_fifo_n_31 : STD_LOGIC;
  signal tx_fifo_n_32 : STD_LOGIC;
  signal tx_fifo_n_33 : STD_LOGIC;
  signal tx_fifo_n_34 : STD_LOGIC;
  signal tx_fifo_n_35 : STD_LOGIC;
  signal tx_fifo_n_36 : STD_LOGIC;
  signal tx_fifo_n_37 : STD_LOGIC;
  signal tx_fifo_n_38 : STD_LOGIC;
  signal tx_fifo_n_39 : STD_LOGIC;
  signal tx_fifo_n_40 : STD_LOGIC;
  signal tx_fifo_n_41 : STD_LOGIC;
  signal tx_fifo_n_42 : STD_LOGIC;
  signal tx_fifo_n_43 : STD_LOGIC;
  signal tx_fifo_n_44 : STD_LOGIC;
  signal tx_fifo_n_45 : STD_LOGIC;
  signal tx_fifo_n_46 : STD_LOGIC;
  signal tx_fifo_n_47 : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal wr_req_betweener : STD_LOGIC;
  signal wr_req_final : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data[0][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data[0][10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[0][11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[0][12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[0][13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[0][14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[0][15]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[0][16]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data[0][17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data[0][18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[0][19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[0][1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data[0][20]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data[0][21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data[0][22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[0][23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[0][24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data[0][25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data[0][26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data[0][27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data[0][28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data[0][29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data[0][2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[0][30]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data[0][31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data[0][3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[0][4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data[0][5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data[0][6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data[0][7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data[0][8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data[0][9]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \raddr[4]_i_1\ : label is "soft_lutpair12";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_interface_spi_bvalid <= \^axi_interface_spi_bvalid\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  baud_clk <= \^baud_clk\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF8AAA8AAA8AAA"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => axi_interface_spi_awvalid,
      I3 => axi_interface_spi_wvalid,
      I4 => \^axi_interface_spi_bvalid\,
      I5 => axi_interface_spi_bready,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => the_brd_instantiation_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_interface_spi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => the_brd_instantiation_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_interface_spi_wvalid,
      I1 => axi_interface_spi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => the_brd_instantiation_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => axi_interface_spi_wvalid,
      I3 => axi_interface_spi_awvalid,
      I4 => \^axi_interface_spi_bvalid\,
      I5 => axi_interface_spi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_interface_spi_bvalid\,
      R => the_brd_instantiation_n_0
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \^axi_rvalid_reg_0\,
      I2 => axi_interface_spi_arvalid,
      I3 => raddr(4),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_47,
      Q => axi_interface_spi_rdata(0),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_37,
      Q => axi_interface_spi_rdata(10),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_36,
      Q => axi_interface_spi_rdata(11),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_35,
      Q => axi_interface_spi_rdata(12),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_34,
      Q => axi_interface_spi_rdata(13),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_33,
      Q => axi_interface_spi_rdata(14),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_32,
      Q => axi_interface_spi_rdata(15),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_31,
      Q => axi_interface_spi_rdata(16),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_30,
      Q => axi_interface_spi_rdata(17),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_29,
      Q => axi_interface_spi_rdata(18),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_28,
      Q => axi_interface_spi_rdata(19),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_46,
      Q => axi_interface_spi_rdata(1),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_27,
      Q => axi_interface_spi_rdata(20),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_26,
      Q => axi_interface_spi_rdata(21),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_25,
      Q => axi_interface_spi_rdata(22),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_24,
      Q => axi_interface_spi_rdata(23),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_23,
      Q => axi_interface_spi_rdata(24),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_22,
      Q => axi_interface_spi_rdata(25),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_21,
      Q => axi_interface_spi_rdata(26),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_20,
      Q => axi_interface_spi_rdata(27),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_19,
      Q => axi_interface_spi_rdata(28),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_18,
      Q => axi_interface_spi_rdata(29),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_45,
      Q => axi_interface_spi_rdata(2),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_17,
      Q => axi_interface_spi_rdata(30),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_16,
      Q => axi_interface_spi_rdata(31),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_44,
      Q => axi_interface_spi_rdata(3),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_43,
      Q => axi_interface_spi_rdata(4),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_42,
      Q => axi_interface_spi_rdata(5),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_41,
      Q => axi_interface_spi_rdata(6),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_40,
      Q => axi_interface_spi_rdata(7),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_39,
      Q => axi_interface_spi_rdata(8),
      R => the_brd_instantiation_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => tx_fifo_n_38,
      Q => axi_interface_spi_rdata(9),
      R => the_brd_instantiation_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => axi_interface_spi_arvalid,
      I2 => axi_interface_spi_rready,
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => the_brd_instantiation_n_0
    );
axi_wr_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => fifo_wr_req
    );
axi_wr_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => fifo_wr_req,
      Q => axi_wr_sel,
      R => the_brd_instantiation_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_interface_spi_wvalid,
      I1 => axi_interface_spi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => the_brd_instantiation_n_0
    );
baud_clk_next_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      CLR => the_brd_instantiation_n_0,
      D => the_brd_instantiation_n_1,
      Q => \^baud_clk\
    );
\brd[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => axi_interface_spi_wstrb(1),
      O => p_1_in(15)
    );
\brd[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => axi_interface_spi_wstrb(2),
      O => p_1_in(23)
    );
\brd[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => axi_interface_spi_wstrb(3),
      O => p_1_in(31)
    );
\brd[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => axi_interface_spi_wstrb(0),
      O => p_1_in(7)
    );
\brd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(0),
      Q => brd(0),
      R => the_brd_instantiation_n_0
    );
\brd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(10),
      Q => brd(10),
      R => the_brd_instantiation_n_0
    );
\brd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(11),
      Q => brd(11),
      R => the_brd_instantiation_n_0
    );
\brd_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(12),
      Q => brd(12),
      R => the_brd_instantiation_n_0
    );
\brd_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(13),
      Q => brd(13),
      R => the_brd_instantiation_n_0
    );
\brd_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(14),
      Q => brd(14),
      R => the_brd_instantiation_n_0
    );
\brd_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(15),
      Q => brd(15),
      R => the_brd_instantiation_n_0
    );
\brd_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(16),
      Q => brd(16),
      R => the_brd_instantiation_n_0
    );
\brd_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(17),
      Q => brd(17),
      R => the_brd_instantiation_n_0
    );
\brd_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(18),
      Q => brd(18),
      R => the_brd_instantiation_n_0
    );
\brd_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(19),
      Q => brd(19),
      R => the_brd_instantiation_n_0
    );
\brd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(1),
      Q => brd(1),
      R => the_brd_instantiation_n_0
    );
\brd_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(20),
      Q => brd(20),
      R => the_brd_instantiation_n_0
    );
\brd_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(21),
      Q => brd(21),
      R => the_brd_instantiation_n_0
    );
\brd_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(22),
      Q => brd(22),
      R => the_brd_instantiation_n_0
    );
\brd_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(23),
      D => axi_interface_spi_wdata(23),
      Q => brd(23),
      R => the_brd_instantiation_n_0
    );
\brd_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(24),
      Q => brd(24),
      R => the_brd_instantiation_n_0
    );
\brd_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(25),
      Q => brd(25),
      R => the_brd_instantiation_n_0
    );
\brd_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(26),
      Q => brd(26),
      R => the_brd_instantiation_n_0
    );
\brd_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(27),
      Q => brd(27),
      R => the_brd_instantiation_n_0
    );
\brd_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(28),
      Q => brd(28),
      R => the_brd_instantiation_n_0
    );
\brd_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(29),
      Q => brd(29),
      R => the_brd_instantiation_n_0
    );
\brd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(2),
      Q => brd(2),
      R => the_brd_instantiation_n_0
    );
\brd_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(30),
      Q => brd(30),
      R => the_brd_instantiation_n_0
    );
\brd_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(31),
      D => axi_interface_spi_wdata(31),
      Q => brd(31),
      R => the_brd_instantiation_n_0
    );
\brd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(3),
      Q => brd(3),
      R => the_brd_instantiation_n_0
    );
\brd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(4),
      Q => brd(4),
      R => the_brd_instantiation_n_0
    );
\brd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(5),
      Q => brd(5),
      R => the_brd_instantiation_n_0
    );
\brd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(6),
      Q => brd(6),
      R => the_brd_instantiation_n_0
    );
\brd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(7),
      D => axi_interface_spi_wdata(7),
      Q => brd(7),
      R => the_brd_instantiation_n_0
    );
\brd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(8),
      Q => brd(8),
      R => the_brd_instantiation_n_0
    );
\brd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => p_1_in(15),
      D => axi_interface_spi_wdata(9),
      Q => brd(9),
      R => the_brd_instantiation_n_0
    );
clr_overflow_betweener_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => clr_overflow,
      Q => clr_overflow_betweener,
      R => '0'
    );
clr_overflow_final_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => clr_overflow_betweener,
      Q => clr_overflow_final,
      R => '0'
    );
clr_overflow_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => axi_interface_spi_wstrb(0),
      I4 => axi_interface_spi_wdata(0),
      I5 => clr_overflow_req_i_2_n_0,
      O => clr_overflow_req_i_1_n_0
    );
clr_overflow_req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => axi_interface_spi_aresetn,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => axi_interface_spi_awvalid,
      I4 => axi_interface_spi_wvalid,
      O => clr_overflow_req_i_2_n_0
    );
clr_overflow_req_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => clr_overflow_req_i_1_n_0,
      Q => clr_overflow_req,
      R => '0'
    );
\ctrl[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => axi_interface_spi_wstrb(1),
      I4 => p_0_in_0(1),
      O => \ctrl[15]_i_1_n_0\
    );
\ctrl[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => axi_interface_spi_wstrb(2),
      I4 => p_0_in_0(1),
      O => \ctrl[23]_i_1_n_0\
    );
\ctrl[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => axi_interface_spi_wstrb(3),
      I4 => p_0_in_0(1),
      O => \ctrl[31]_i_1_n_0\
    );
\ctrl[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => axi_interface_spi_wstrb(0),
      I4 => p_0_in_0(1),
      O => \ctrl[7]_i_1_n_0\
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(0),
      Q => \ctrl_reg_n_0_[0]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(10),
      Q => \ctrl_reg_n_0_[10]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(11),
      Q => \ctrl_reg_n_0_[11]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(12),
      Q => \ctrl_reg_n_0_[12]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(13),
      Q => \ctrl_reg_n_0_[13]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(14),
      Q => \ctrl_reg_n_0_[14]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(15),
      Q => ctrl(15),
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(16),
      Q => \ctrl_reg_n_0_[16]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(17),
      Q => \ctrl_reg_n_0_[17]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(18),
      Q => \ctrl_reg_n_0_[18]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(19),
      Q => \ctrl_reg_n_0_[19]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(1),
      Q => \ctrl_reg_n_0_[1]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(20),
      Q => \ctrl_reg_n_0_[20]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(21),
      Q => \ctrl_reg_n_0_[21]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(22),
      Q => \ctrl_reg_n_0_[22]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(23),
      Q => \ctrl_reg_n_0_[23]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(24),
      Q => \ctrl_reg_n_0_[24]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(25),
      Q => \ctrl_reg_n_0_[25]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(26),
      Q => \ctrl_reg_n_0_[26]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(27),
      Q => \ctrl_reg_n_0_[27]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(28),
      Q => \ctrl_reg_n_0_[28]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(29),
      Q => \ctrl_reg_n_0_[29]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(2),
      Q => \ctrl_reg_n_0_[2]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(30),
      Q => \ctrl_reg_n_0_[30]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(31),
      Q => \ctrl_reg_n_0_[31]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(3),
      Q => \ctrl_reg_n_0_[3]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(4),
      Q => \ctrl_reg_n_0_[4]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(5),
      Q => \ctrl_reg_n_0_[5]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(6),
      Q => \ctrl_reg_n_0_[6]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(7),
      Q => \ctrl_reg_n_0_[7]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(8),
      Q => \ctrl_reg_n_0_[8]\,
      R => the_brd_instantiation_n_0
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \ctrl[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(9),
      Q => \ctrl_reg_n_0_[9]\,
      R => the_brd_instantiation_n_0
    );
\data[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[0]\,
      I1 => datain_final(0),
      I2 => axi_wr_sel,
      O => fifo_wr_data(0)
    );
\data[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[10]\,
      I1 => datain_final(10),
      I2 => axi_wr_sel,
      O => fifo_wr_data(10)
    );
\data[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[11]\,
      I1 => datain_final(11),
      I2 => axi_wr_sel,
      O => fifo_wr_data(11)
    );
\data[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[12]\,
      I1 => datain_final(12),
      I2 => axi_wr_sel,
      O => fifo_wr_data(12)
    );
\data[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[13]\,
      I1 => datain_final(13),
      I2 => axi_wr_sel,
      O => fifo_wr_data(13)
    );
\data[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[14]\,
      I1 => datain_final(14),
      I2 => axi_wr_sel,
      O => fifo_wr_data(14)
    );
\data[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[15]\,
      I1 => datain_final(15),
      I2 => axi_wr_sel,
      O => fifo_wr_data(15)
    );
\data[0][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[16]\,
      I1 => datain_final(16),
      I2 => axi_wr_sel,
      O => fifo_wr_data(16)
    );
\data[0][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[17]\,
      I1 => datain_final(17),
      I2 => axi_wr_sel,
      O => fifo_wr_data(17)
    );
\data[0][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[18]\,
      I1 => datain_final(18),
      I2 => axi_wr_sel,
      O => fifo_wr_data(18)
    );
\data[0][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[19]\,
      I1 => datain_final(19),
      I2 => axi_wr_sel,
      O => fifo_wr_data(19)
    );
\data[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[1]\,
      I1 => datain_final(1),
      I2 => axi_wr_sel,
      O => fifo_wr_data(1)
    );
\data[0][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[20]\,
      I1 => datain_final(20),
      I2 => axi_wr_sel,
      O => fifo_wr_data(20)
    );
\data[0][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[21]\,
      I1 => datain_final(21),
      I2 => axi_wr_sel,
      O => fifo_wr_data(21)
    );
\data[0][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[22]\,
      I1 => datain_final(22),
      I2 => axi_wr_sel,
      O => fifo_wr_data(22)
    );
\data[0][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[23]\,
      I1 => datain_final(23),
      I2 => axi_wr_sel,
      O => fifo_wr_data(23)
    );
\data[0][24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[24]\,
      I1 => datain_final(24),
      I2 => axi_wr_sel,
      O => fifo_wr_data(24)
    );
\data[0][25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[25]\,
      I1 => datain_final(25),
      I2 => axi_wr_sel,
      O => fifo_wr_data(25)
    );
\data[0][26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[26]\,
      I1 => datain_final(26),
      I2 => axi_wr_sel,
      O => fifo_wr_data(26)
    );
\data[0][27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[27]\,
      I1 => datain_final(27),
      I2 => axi_wr_sel,
      O => fifo_wr_data(27)
    );
\data[0][28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[28]\,
      I1 => datain_final(28),
      I2 => axi_wr_sel,
      O => fifo_wr_data(28)
    );
\data[0][29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[29]\,
      I1 => datain_final(29),
      I2 => axi_wr_sel,
      O => fifo_wr_data(29)
    );
\data[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[2]\,
      I1 => datain_final(2),
      I2 => axi_wr_sel,
      O => fifo_wr_data(2)
    );
\data[0][30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[30]\,
      I1 => datain_final(30),
      I2 => axi_wr_sel,
      O => fifo_wr_data(30)
    );
\data[0][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[31]\,
      I1 => datain_final(31),
      I2 => axi_wr_sel,
      O => fifo_wr_data(31)
    );
\data[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[3]\,
      I1 => datain_final(3),
      I2 => axi_wr_sel,
      O => fifo_wr_data(3)
    );
\data[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[4]\,
      I1 => datain_final(4),
      I2 => axi_wr_sel,
      O => fifo_wr_data(4)
    );
\data[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[5]\,
      I1 => datain_final(5),
      I2 => axi_wr_sel,
      O => fifo_wr_data(5)
    );
\data[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[6]\,
      I1 => datain_final(6),
      I2 => axi_wr_sel,
      O => fifo_wr_data(6)
    );
\data[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[7]\,
      I1 => datain_final(7),
      I2 => axi_wr_sel,
      O => fifo_wr_data(7)
    );
\data[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[8]\,
      I1 => datain_final(8),
      I2 => axi_wr_sel,
      O => fifo_wr_data(8)
    );
\data[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_n_0_[9]\,
      I1 => datain_final(9),
      I2 => axi_wr_sel,
      O => fifo_wr_data(9)
    );
\data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => axi_interface_spi_wstrb(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      O => \data[15]_i_1_n_0\
    );
\data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => axi_interface_spi_wstrb(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      O => \data[23]_i_1_n_0\
    );
\data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => axi_interface_spi_wstrb(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      O => \data[31]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => tx_fifo_n_1,
      I1 => p_0_in_0(2),
      I2 => axi_interface_spi_wstrb(0),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      O => \data[7]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(0),
      Q => \data_reg_n_0_[0]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(10),
      Q => \data_reg_n_0_[10]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(11),
      Q => \data_reg_n_0_[11]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(12),
      Q => \data_reg_n_0_[12]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(13),
      Q => \data_reg_n_0_[13]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(14),
      Q => \data_reg_n_0_[14]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(15),
      Q => \data_reg_n_0_[15]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(16),
      Q => \data_reg_n_0_[16]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(17),
      Q => \data_reg_n_0_[17]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(18),
      Q => \data_reg_n_0_[18]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(19),
      Q => \data_reg_n_0_[19]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(1),
      Q => \data_reg_n_0_[1]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(20),
      Q => \data_reg_n_0_[20]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(21),
      Q => \data_reg_n_0_[21]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(22),
      Q => \data_reg_n_0_[22]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[23]_i_1_n_0\,
      D => axi_interface_spi_wdata(23),
      Q => \data_reg_n_0_[23]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(24),
      Q => \data_reg_n_0_[24]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(25),
      Q => \data_reg_n_0_[25]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(26),
      Q => \data_reg_n_0_[26]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(27),
      Q => \data_reg_n_0_[27]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(28),
      Q => \data_reg_n_0_[28]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(29),
      Q => \data_reg_n_0_[29]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(2),
      Q => \data_reg_n_0_[2]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(30),
      Q => \data_reg_n_0_[30]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[31]_i_1_n_0\,
      D => axi_interface_spi_wdata(31),
      Q => \data_reg_n_0_[31]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(3),
      Q => \data_reg_n_0_[3]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(4),
      Q => \data_reg_n_0_[4]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(5),
      Q => \data_reg_n_0_[5]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(6),
      Q => \data_reg_n_0_[6]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[7]_i_1_n_0\,
      D => axi_interface_spi_wdata(7),
      Q => \data_reg_n_0_[7]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(8),
      Q => \data_reg_n_0_[8]\,
      R => the_brd_instantiation_n_0
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => \data[15]_i_1_n_0\,
      D => axi_interface_spi_wdata(9),
      Q => \data_reg_n_0_[9]\,
      R => the_brd_instantiation_n_0
    );
\datain_betweener_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(0),
      Q => datain_betweener(0),
      R => '0'
    );
\datain_betweener_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(10),
      Q => datain_betweener(10),
      R => '0'
    );
\datain_betweener_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(11),
      Q => datain_betweener(11),
      R => '0'
    );
\datain_betweener_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(12),
      Q => datain_betweener(12),
      R => '0'
    );
\datain_betweener_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(13),
      Q => datain_betweener(13),
      R => '0'
    );
\datain_betweener_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(14),
      Q => datain_betweener(14),
      R => '0'
    );
\datain_betweener_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(15),
      Q => datain_betweener(15),
      R => '0'
    );
\datain_betweener_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(16),
      Q => datain_betweener(16),
      R => '0'
    );
\datain_betweener_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(17),
      Q => datain_betweener(17),
      R => '0'
    );
\datain_betweener_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(18),
      Q => datain_betweener(18),
      R => '0'
    );
\datain_betweener_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(19),
      Q => datain_betweener(19),
      R => '0'
    );
\datain_betweener_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(1),
      Q => datain_betweener(1),
      R => '0'
    );
\datain_betweener_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(20),
      Q => datain_betweener(20),
      R => '0'
    );
\datain_betweener_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(21),
      Q => datain_betweener(21),
      R => '0'
    );
\datain_betweener_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(22),
      Q => datain_betweener(22),
      R => '0'
    );
\datain_betweener_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(23),
      Q => datain_betweener(23),
      R => '0'
    );
\datain_betweener_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(24),
      Q => datain_betweener(24),
      R => '0'
    );
\datain_betweener_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(25),
      Q => datain_betweener(25),
      R => '0'
    );
\datain_betweener_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(26),
      Q => datain_betweener(26),
      R => '0'
    );
\datain_betweener_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(27),
      Q => datain_betweener(27),
      R => '0'
    );
\datain_betweener_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(28),
      Q => datain_betweener(28),
      R => '0'
    );
\datain_betweener_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(29),
      Q => datain_betweener(29),
      R => '0'
    );
\datain_betweener_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(2),
      Q => datain_betweener(2),
      R => '0'
    );
\datain_betweener_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(30),
      Q => datain_betweener(30),
      R => '0'
    );
\datain_betweener_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(31),
      Q => datain_betweener(31),
      R => '0'
    );
\datain_betweener_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(3),
      Q => datain_betweener(3),
      R => '0'
    );
\datain_betweener_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(4),
      Q => datain_betweener(4),
      R => '0'
    );
\datain_betweener_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(5),
      Q => datain_betweener(5),
      R => '0'
    );
\datain_betweener_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(6),
      Q => datain_betweener(6),
      R => '0'
    );
\datain_betweener_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(7),
      Q => datain_betweener(7),
      R => '0'
    );
\datain_betweener_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(8),
      Q => datain_betweener(8),
      R => '0'
    );
\datain_betweener_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain(9),
      Q => datain_betweener(9),
      R => '0'
    );
\datain_final_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(0),
      Q => datain_final(0),
      R => '0'
    );
\datain_final_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(10),
      Q => datain_final(10),
      R => '0'
    );
\datain_final_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(11),
      Q => datain_final(11),
      R => '0'
    );
\datain_final_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(12),
      Q => datain_final(12),
      R => '0'
    );
\datain_final_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(13),
      Q => datain_final(13),
      R => '0'
    );
\datain_final_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(14),
      Q => datain_final(14),
      R => '0'
    );
\datain_final_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(15),
      Q => datain_final(15),
      R => '0'
    );
\datain_final_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(16),
      Q => datain_final(16),
      R => '0'
    );
\datain_final_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(17),
      Q => datain_final(17),
      R => '0'
    );
\datain_final_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(18),
      Q => datain_final(18),
      R => '0'
    );
\datain_final_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(19),
      Q => datain_final(19),
      R => '0'
    );
\datain_final_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(1),
      Q => datain_final(1),
      R => '0'
    );
\datain_final_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(20),
      Q => datain_final(20),
      R => '0'
    );
\datain_final_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(21),
      Q => datain_final(21),
      R => '0'
    );
\datain_final_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(22),
      Q => datain_final(22),
      R => '0'
    );
\datain_final_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(23),
      Q => datain_final(23),
      R => '0'
    );
\datain_final_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(24),
      Q => datain_final(24),
      R => '0'
    );
\datain_final_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(25),
      Q => datain_final(25),
      R => '0'
    );
\datain_final_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(26),
      Q => datain_final(26),
      R => '0'
    );
\datain_final_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(27),
      Q => datain_final(27),
      R => '0'
    );
\datain_final_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(28),
      Q => datain_final(28),
      R => '0'
    );
\datain_final_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(29),
      Q => datain_final(29),
      R => '0'
    );
\datain_final_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(2),
      Q => datain_final(2),
      R => '0'
    );
\datain_final_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(30),
      Q => datain_final(30),
      R => '0'
    );
\datain_final_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(31),
      Q => datain_final(31),
      R => '0'
    );
\datain_final_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(3),
      Q => datain_final(3),
      R => '0'
    );
\datain_final_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(4),
      Q => datain_final(4),
      R => '0'
    );
\datain_final_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(5),
      Q => datain_final(5),
      R => '0'
    );
\datain_final_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(6),
      Q => datain_final(6),
      R => '0'
    );
\datain_final_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(7),
      Q => datain_final(7),
      R => '0'
    );
\datain_final_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(8),
      Q => datain_final(8),
      R => '0'
    );
\datain_final_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => datain_betweener(9),
      Q => datain_final(9),
      R => '0'
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_interface_spi_araddr(0),
      I1 => axi_interface_spi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => raddr(2),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_interface_spi_araddr(1),
      I1 => axi_interface_spi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => raddr(3),
      O => \raddr[3]_i_1_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_interface_spi_araddr(2),
      I1 => axi_interface_spi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => raddr(4),
      O => \raddr[4]_i_1_n_0\
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \raddr[2]_i_1_n_0\,
      Q => raddr(2),
      R => the_brd_instantiation_n_0
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => raddr(3),
      R => the_brd_instantiation_n_0
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \raddr[4]_i_1_n_0\,
      Q => raddr(4),
      R => the_brd_instantiation_n_0
    );
rd_req_betweener_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => rd_req,
      Q => rd_req_betweener,
      R => '0'
    );
rd_req_final_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => rd_req_betweener,
      Q => rd_req_final,
      R => '0'
    );
the_brd_instantiation: entity work.system_My_SPI_0_4_the_brd
     port map (
      Q(31 downto 0) => brd(31 downto 0),
      SR(0) => the_brd_instantiation_n_0,
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_aresetn => axi_interface_spi_aresetn,
      baud_clk => \^baud_clk\,
      baud_clk_next_reg(0) => ctrl(15),
      \ctrl_reg[15]\ => the_brd_instantiation_n_1
    );
tx_fifo: entity work.system_My_SPI_0_4_fifo_fixed
     port map (
      D(31) => tx_fifo_n_16,
      D(30) => tx_fifo_n_17,
      D(29) => tx_fifo_n_18,
      D(28) => tx_fifo_n_19,
      D(27) => tx_fifo_n_20,
      D(26) => tx_fifo_n_21,
      D(25) => tx_fifo_n_22,
      D(24) => tx_fifo_n_23,
      D(23) => tx_fifo_n_24,
      D(22) => tx_fifo_n_25,
      D(21) => tx_fifo_n_26,
      D(20) => tx_fifo_n_27,
      D(19) => tx_fifo_n_28,
      D(18) => tx_fifo_n_29,
      D(17) => tx_fifo_n_30,
      D(16) => tx_fifo_n_31,
      D(15) => tx_fifo_n_32,
      D(14) => tx_fifo_n_33,
      D(13) => tx_fifo_n_34,
      D(12) => tx_fifo_n_35,
      D(11) => tx_fifo_n_36,
      D(10) => tx_fifo_n_37,
      D(9) => tx_fifo_n_38,
      D(8) => tx_fifo_n_39,
      D(7) => tx_fifo_n_40,
      D(6) => tx_fifo_n_41,
      D(5) => tx_fifo_n_42,
      D(4) => tx_fifo_n_43,
      D(3) => tx_fifo_n_44,
      D(2) => tx_fifo_n_45,
      D(1) => tx_fifo_n_46,
      D(0) => tx_fifo_n_47,
      Q(31 downto 0) => brd(31 downto 0),
      SR(0) => the_brd_instantiation_n_0,
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_aresetn => axi_interface_spi_aresetn,
      axi_interface_spi_arvalid => axi_interface_spi_arvalid,
      axi_interface_spi_awvalid => axi_interface_spi_awvalid,
      axi_interface_spi_wvalid => axi_interface_spi_wvalid,
      axi_interface_spi_wvalid_0 => tx_fifo_n_1,
      \axi_rdata_reg[31]\(31) => \ctrl_reg_n_0_[31]\,
      \axi_rdata_reg[31]\(30) => \ctrl_reg_n_0_[30]\,
      \axi_rdata_reg[31]\(29) => \ctrl_reg_n_0_[29]\,
      \axi_rdata_reg[31]\(28) => \ctrl_reg_n_0_[28]\,
      \axi_rdata_reg[31]\(27) => \ctrl_reg_n_0_[27]\,
      \axi_rdata_reg[31]\(26) => \ctrl_reg_n_0_[26]\,
      \axi_rdata_reg[31]\(25) => \ctrl_reg_n_0_[25]\,
      \axi_rdata_reg[31]\(24) => \ctrl_reg_n_0_[24]\,
      \axi_rdata_reg[31]\(23) => \ctrl_reg_n_0_[23]\,
      \axi_rdata_reg[31]\(22) => \ctrl_reg_n_0_[22]\,
      \axi_rdata_reg[31]\(21) => \ctrl_reg_n_0_[21]\,
      \axi_rdata_reg[31]\(20) => \ctrl_reg_n_0_[20]\,
      \axi_rdata_reg[31]\(19) => \ctrl_reg_n_0_[19]\,
      \axi_rdata_reg[31]\(18) => \ctrl_reg_n_0_[18]\,
      \axi_rdata_reg[31]\(17) => \ctrl_reg_n_0_[17]\,
      \axi_rdata_reg[31]\(16) => \ctrl_reg_n_0_[16]\,
      \axi_rdata_reg[31]\(15) => ctrl(15),
      \axi_rdata_reg[31]\(14) => \ctrl_reg_n_0_[14]\,
      \axi_rdata_reg[31]\(13) => \ctrl_reg_n_0_[13]\,
      \axi_rdata_reg[31]\(12) => \ctrl_reg_n_0_[12]\,
      \axi_rdata_reg[31]\(11) => \ctrl_reg_n_0_[11]\,
      \axi_rdata_reg[31]\(10) => \ctrl_reg_n_0_[10]\,
      \axi_rdata_reg[31]\(9) => \ctrl_reg_n_0_[9]\,
      \axi_rdata_reg[31]\(8) => \ctrl_reg_n_0_[8]\,
      \axi_rdata_reg[31]\(7) => \ctrl_reg_n_0_[7]\,
      \axi_rdata_reg[31]\(6) => \ctrl_reg_n_0_[6]\,
      \axi_rdata_reg[31]\(5) => \ctrl_reg_n_0_[5]\,
      \axi_rdata_reg[31]\(4) => \ctrl_reg_n_0_[4]\,
      \axi_rdata_reg[31]\(3) => \ctrl_reg_n_0_[3]\,
      \axi_rdata_reg[31]\(2) => \ctrl_reg_n_0_[2]\,
      \axi_rdata_reg[31]\(1) => \ctrl_reg_n_0_[1]\,
      \axi_rdata_reg[31]\(0) => \ctrl_reg_n_0_[0]\,
      clr_overflow_final => clr_overflow_final,
      clr_overflow_req => clr_overflow_req,
      \data_reg[15][31]\(31 downto 0) => fifo_wr_data(31 downto 0),
      dataout(31 downto 0) => dataout(31 downto 0),
      last_in_reg => \^s_axi_wready\,
      last_in_reg_0 => \^s_axi_awready\,
      last_in_reg_1 => \^axi_rvalid_reg_0\,
      last_in_reg_2 => \^s_axi_arready\,
      overflow_reg => status(0),
      p_0_in_0(2 downto 0) => p_0_in_0(2 downto 0),
      raddr(2 downto 0) => raddr(4 downto 2),
      rd_req_final => rd_req_final,
      status(13 downto 0) => status(14 downto 1),
      wr_req_final => wr_req_final
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_interface_spi_awaddr(0),
      I1 => axi_interface_spi_wvalid,
      I2 => axi_interface_spi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(0),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_interface_spi_awaddr(1),
      I1 => axi_interface_spi_wvalid,
      I2 => axi_interface_spi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(1),
      O => \waddr[3]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_interface_spi_awaddr(2),
      I1 => axi_interface_spi_wvalid,
      I2 => axi_interface_spi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in_0(2),
      O => \waddr[4]_i_1_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \waddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => the_brd_instantiation_n_0
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \waddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => the_brd_instantiation_n_0
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => \waddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => the_brd_instantiation_n_0
    );
wr_req_betweener_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => wr_req,
      Q => wr_req_betweener,
      R => '0'
    );
wr_req_final_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_interface_spi_aclk,
      CE => '1',
      D => wr_req_betweener,
      Q => wr_req_final,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4_My_SPI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_interface_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_bvalid : out STD_LOGIC;
    baud_clk : out STD_LOGIC;
    axi_interface_spi_aresetn : in STD_LOGIC;
    axi_interface_spi_awvalid : in STD_LOGIC;
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_arvalid : in STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clr_overflow : in STD_LOGIC;
    rd_req : in STD_LOGIC;
    wr_req : in STD_LOGIC;
    axi_interface_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_interface_spi_bready : in STD_LOGIC;
    axi_interface_spi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_My_SPI_0_4_My_SPI : entity is "My_SPI";
end system_My_SPI_0_4_My_SPI;

architecture STRUCTURE of system_My_SPI_0_4_My_SPI is
begin
My_SPI_slave_lite_v1_0_AXI_Interface_SPI_inst: entity work.system_My_SPI_0_4_My_SPI_slave_lite_v1_0_AXI_Interface_SPI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_araddr(2 downto 0) => axi_interface_spi_araddr(2 downto 0),
      axi_interface_spi_aresetn => axi_interface_spi_aresetn,
      axi_interface_spi_arvalid => axi_interface_spi_arvalid,
      axi_interface_spi_awaddr(2 downto 0) => axi_interface_spi_awaddr(2 downto 0),
      axi_interface_spi_awvalid => axi_interface_spi_awvalid,
      axi_interface_spi_bready => axi_interface_spi_bready,
      axi_interface_spi_bvalid => axi_interface_spi_bvalid,
      axi_interface_spi_rdata(31 downto 0) => axi_interface_spi_rdata(31 downto 0),
      axi_interface_spi_rready => axi_interface_spi_rready,
      axi_interface_spi_wdata(31 downto 0) => axi_interface_spi_wdata(31 downto 0),
      axi_interface_spi_wstrb(3 downto 0) => axi_interface_spi_wstrb(3 downto 0),
      axi_interface_spi_wvalid => axi_interface_spi_wvalid,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      baud_clk => baud_clk,
      clr_overflow => clr_overflow,
      datain(31 downto 0) => datain(31 downto 0),
      dataout(31 downto 0) => dataout(31 downto 0),
      rd_req => rd_req,
      status(14 downto 0) => status(14 downto 0),
      wr_req => wr_req
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_My_SPI_0_4 is
  port (
    datain : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clr_overflow : in STD_LOGIC;
    rd_req : in STD_LOGIC;
    wr_req : in STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    baud_clk : out STD_LOGIC;
    axi_interface_spi_aclk : in STD_LOGIC;
    axi_interface_spi_aresetn : in STD_LOGIC;
    axi_interface_spi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_interface_spi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_awvalid : in STD_LOGIC;
    axi_interface_spi_awready : out STD_LOGIC;
    axi_interface_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_interface_spi_wvalid : in STD_LOGIC;
    axi_interface_spi_wready : out STD_LOGIC;
    axi_interface_spi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_interface_spi_bvalid : out STD_LOGIC;
    axi_interface_spi_bready : in STD_LOGIC;
    axi_interface_spi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_interface_spi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_interface_spi_arvalid : in STD_LOGIC;
    axi_interface_spi_arready : out STD_LOGIC;
    axi_interface_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_interface_spi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_interface_spi_rvalid : out STD_LOGIC;
    axi_interface_spi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_My_SPI_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_My_SPI_0_4 : entity is "system_My_SPI_0_4,My_SPI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_My_SPI_0_4 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_My_SPI_0_4 : entity is "My_SPI,Vivado 2025.2";
end system_My_SPI_0_4;

architecture STRUCTURE of system_My_SPI_0_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_interface_spi_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_Interface_SPI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axi_interface_spi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_aclk : signal is "XIL_INTERFACENAME AXI_Interface_SPI_CLK, ASSOCIATED_BUSIF AXI_Interface_SPI, ASSOCIATED_RESET axi_interface_spi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_Interface_SPI_RST RST";
  attribute X_INTERFACE_MODE of axi_interface_spi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_aresetn : signal is "XIL_INTERFACENAME AXI_Interface_SPI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RVALID";
  attribute X_INTERFACE_INFO of axi_interface_spi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WREADY";
  attribute X_INTERFACE_INFO of axi_interface_spi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WVALID";
  attribute X_INTERFACE_INFO of baud_clk : signal is "xilinx.com:signal:clock:1.0 baud_clk CLK";
  attribute X_INTERFACE_MODE of baud_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of baud_clk : signal is "XIL_INTERFACENAME baud_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_My_SPI_0_4_baud_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARADDR";
  attribute X_INTERFACE_INFO of axi_interface_spi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI ARPROT";
  attribute X_INTERFACE_INFO of axi_interface_spi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWADDR";
  attribute X_INTERFACE_MODE of axi_interface_spi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_interface_spi_awaddr : signal is "XIL_INTERFACENAME AXI_Interface_SPI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_interface_spi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI AWPROT";
  attribute X_INTERFACE_INFO of axi_interface_spi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI BRESP";
  attribute X_INTERFACE_INFO of axi_interface_spi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RDATA";
  attribute X_INTERFACE_INFO of axi_interface_spi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI RRESP";
  attribute X_INTERFACE_INFO of axi_interface_spi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WDATA";
  attribute X_INTERFACE_INFO of axi_interface_spi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_Interface_SPI WSTRB";
begin
  axi_interface_spi_bresp(1) <= \<const0>\;
  axi_interface_spi_bresp(0) <= \<const0>\;
  axi_interface_spi_rresp(1) <= \<const0>\;
  axi_interface_spi_rresp(0) <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  overflow <= \^status\(0);
  status(31 downto 20) <= \^status\(31 downto 20);
  status(19) <= \<const0>\;
  status(18) <= \<const0>\;
  status(17) <= \<const0>\;
  status(16) <= \<const0>\;
  status(15) <= \<const0>\;
  status(14) <= \<const0>\;
  status(13) <= \<const0>\;
  status(12) <= \<const0>\;
  status(11) <= \<const0>\;
  status(10) <= \<const0>\;
  status(9) <= \<const0>\;
  status(8) <= \<const0>\;
  status(7) <= \<const0>\;
  status(6) <= \<const0>\;
  status(5) <= \<const0>\;
  status(4) <= \<const0>\;
  status(3) <= \<const0>\;
  status(2) <= \^empty\;
  status(1) <= \^full\;
  status(0) <= \^status\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_My_SPI_0_4_My_SPI
     port map (
      S_AXI_ARREADY => axi_interface_spi_arready,
      S_AXI_AWREADY => axi_interface_spi_awready,
      S_AXI_WREADY => axi_interface_spi_wready,
      axi_interface_spi_aclk => axi_interface_spi_aclk,
      axi_interface_spi_araddr(2 downto 0) => axi_interface_spi_araddr(4 downto 2),
      axi_interface_spi_aresetn => axi_interface_spi_aresetn,
      axi_interface_spi_arvalid => axi_interface_spi_arvalid,
      axi_interface_spi_awaddr(2 downto 0) => axi_interface_spi_awaddr(4 downto 2),
      axi_interface_spi_awvalid => axi_interface_spi_awvalid,
      axi_interface_spi_bready => axi_interface_spi_bready,
      axi_interface_spi_bvalid => axi_interface_spi_bvalid,
      axi_interface_spi_rdata(31 downto 0) => axi_interface_spi_rdata(31 downto 0),
      axi_interface_spi_rready => axi_interface_spi_rready,
      axi_interface_spi_wdata(31 downto 0) => axi_interface_spi_wdata(31 downto 0),
      axi_interface_spi_wstrb(3 downto 0) => axi_interface_spi_wstrb(3 downto 0),
      axi_interface_spi_wvalid => axi_interface_spi_wvalid,
      axi_rvalid_reg => axi_interface_spi_rvalid,
      baud_clk => baud_clk,
      clr_overflow => clr_overflow,
      datain(31 downto 0) => datain(31 downto 0),
      dataout(31 downto 0) => dataout(31 downto 0),
      rd_req => rd_req,
      status(14 downto 3) => \^status\(31 downto 20),
      status(2) => \^empty\,
      status(1) => \^full\,
      status(0) => \^status\(0),
      wr_req => wr_req
    );
end STRUCTURE;
