-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "09/18/2025 17:35:36"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart_string_loopback IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	rx : IN std_logic;
	tx : OUT std_logic
	);
END uart_string_loopback;

-- Design Ports Information
-- tx	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_string_loopback IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \buffer~0feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \trigger~0_combout\ : std_logic;
SIGNAL \trigger~q\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[0]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[0]~14\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[1]~15_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[1]~16\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[2]~17_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[2]~18\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[3]~19_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[3]~20\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[4]~21_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[4]~22\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[5]~23_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[5]~24\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[6]~25_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[6]~26\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[7]~27_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[7]~28\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[8]~29_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[8]~30\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[9]~31_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[9]~32\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[10]~33_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[10]~34\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[11]~35_combout\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[11]~36\ : std_logic;
SIGNAL \uart_tx_inst|baud_counter[12]~37_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector27~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STATE_START~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector28~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector28~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STATE_DATA~q\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector14~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector17~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector17~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector16~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector15~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector16~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector15~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector15~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector26~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector29~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STATE_STOP~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector26~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STATE_IDLE~q\ : std_logic;
SIGNAL \uart_tx_inst|busy~q\ : std_logic;
SIGNAL \write_ptr[0]~5_combout\ : std_logic;
SIGNAL \write_ptr[0]~6\ : std_logic;
SIGNAL \write_ptr[1]~7_combout\ : std_logic;
SIGNAL \write_ptr[1]~8\ : std_logic;
SIGNAL \write_ptr[2]~9_combout\ : std_logic;
SIGNAL \write_ptr[2]~10\ : std_logic;
SIGNAL \write_ptr[3]~11_combout\ : std_logic;
SIGNAL \read_ptr[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \read_ptr[1]~1_combout\ : std_logic;
SIGNAL \read_ptr[2]~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \read_ptr[3]~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \read_ptr[4]~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \write_ptr[3]~12\ : std_logic;
SIGNAL \write_ptr[4]~13_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart_rx_inst|Selector18~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~7\ : std_logic;
SIGNAL \uart_rx_inst|Add0~13\ : std_logic;
SIGNAL \uart_rx_inst|Add0~14_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[8]~10_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[11]~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~17\ : std_logic;
SIGNAL \uart_rx_inst|Add0~18_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~22_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~19\ : std_logic;
SIGNAL \uart_rx_inst|Add0~20_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[8]~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~21\ : std_logic;
SIGNAL \uart_rx_inst|Add0~26_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[9]~9_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~27\ : std_logic;
SIGNAL \uart_rx_inst|Add0~28_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[10]~8_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~29\ : std_logic;
SIGNAL \uart_rx_inst|Add0~30_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[11]~7_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~31\ : std_logic;
SIGNAL \uart_rx_inst|Add0~32_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[12]~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector19~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|state.START~q\ : std_logic;
SIGNAL \uart_rx_inst|counter[11]~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~23_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~15\ : std_logic;
SIGNAL \uart_rx_inst|Add0~16_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~25_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|counter[11]~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~12_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~24_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector20~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector20~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|state.DATA~q\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~7_combout\ : std_logic;
SIGNAL \uart_rx_inst|bit_index~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector17~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector16~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector16~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector15~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector15~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector21~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector21~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|state.STOP~q\ : std_logic;
SIGNAL \uart_rx_inst|Selector18~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|state.IDLE~q\ : std_logic;
SIGNAL \uart_rx_inst|Add0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~11_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~1\ : std_logic;
SIGNAL \uart_rx_inst|Add0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~10_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~3\ : std_logic;
SIGNAL \uart_rx_inst|Add0~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~9_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~5\ : std_logic;
SIGNAL \uart_rx_inst|Add0~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add0~8_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan3~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|valid~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \buffer~0_q\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \buffer~13_combout\ : std_logic;
SIGNAL \buffer~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \buffer~15_combout\ : std_logic;
SIGNAL \buffer~1_q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \always0~0_wirecell_combout\ : std_logic;
SIGNAL \read_ptr[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[1]~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[2]~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|Add1~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[3]~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[4]~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[5]~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[6]~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|rx_shift[7]~7_combout\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \tx_data[0]~0_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \buffer~9_combout\ : std_logic;
SIGNAL \buffer~10_combout\ : std_logic;
SIGNAL \buffer~11_combout\ : std_logic;
SIGNAL \buffer~12_combout\ : std_logic;
SIGNAL \tx_data[0]~8_combout\ : std_logic;
SIGNAL \buffer~2feeder_combout\ : std_logic;
SIGNAL \buffer~2_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \tx_data[1]~1_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \buffer~4feeder_combout\ : std_logic;
SIGNAL \buffer~4_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \tx_data[3]~3_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \buffer~6feeder_combout\ : std_logic;
SIGNAL \buffer~6_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \tx_data[5]~5_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \buffer~7feeder_combout\ : std_logic;
SIGNAL \buffer~7_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \tx_data[6]~6_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \buffer~8feeder_combout\ : std_logic;
SIGNAL \buffer~8_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \tx_data[7]~7_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift[7]~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift[7]~4_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift[7]~5_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector19~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift[0]~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector20~0_combout\ : std_logic;
SIGNAL \buffer~5feeder_combout\ : std_logic;
SIGNAL \buffer~5_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \tx_data[4]~4_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector21~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~0_combout\ : std_logic;
SIGNAL \buffer~3_q\ : std_logic;
SIGNAL \buffer_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \tx_data[2]~2_combout\ : std_logic;
SIGNAL \buffer_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector23~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector24~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector25~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx~q\ : std_logic;
SIGNAL \uart_rx_inst|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_inst|baud_counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_tx_inst|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL write_ptr : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_tx_inst|tx_shift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL buffer_rtl_0_bypass : std_logic_vector(0 TO 18);
SIGNAL read_ptr : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_rx_inst|rx_shift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_inst|counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_rx_inst|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_always0~0_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_tx~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_rx <= rx;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\uart_rx_inst|data_out\(7) & \uart_rx_inst|data_out\(6) & \uart_rx_inst|data_out\(5) & \uart_rx_inst|data_out\(4) & \uart_rx_inst|data_out\(3) & \uart_rx_inst|data_out\(2) & \uart_rx_inst|data_out\(1) & \uart_rx_inst|data_out\(0));

\buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (write_ptr(4) & write_ptr(3) & write_ptr(2) & write_ptr(1) & write_ptr(0));

\buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Add2~4_combout\ & \Add2~2_combout\ & \Add2~1_combout\ & \Add2~0_combout\ & \read_ptr[0]~_wirecell_combout\);

\buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\buffer_rtl_0|auto_generated|ram_block1a1\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\buffer_rtl_0|auto_generated|ram_block1a2\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\buffer_rtl_0|auto_generated|ram_block1a3\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\buffer_rtl_0|auto_generated|ram_block1a4\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\buffer_rtl_0|auto_generated|ram_block1a5\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\buffer_rtl_0|auto_generated|ram_block1a6\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\buffer_rtl_0|auto_generated|ram_block1a7\ <= \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);
\ALT_INV_always0~0_wirecell_combout\ <= NOT \always0~0_wirecell_combout\;
\ALT_INV_always0~0_combout\ <= NOT \always0~0_combout\;
\uart_tx_inst|ALT_INV_state.STATE_IDLE~q\ <= NOT \uart_tx_inst|state.STATE_IDLE~q\;
\uart_tx_inst|ALT_INV_tx~q\ <= NOT \uart_tx_inst|tx~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y19_N16
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_inst|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N24
\buffer~0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \buffer~0feeder_combout\);

-- Location: IOIBUF_X34_Y12_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G8
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y12_N16
\trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger~0_combout\ = !\always0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always0~0_combout\,
	combout => \trigger~0_combout\);

-- Location: FF_X31_Y12_N17
trigger : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger~q\);

-- Location: LCCOMB_X29_Y11_N2
\uart_tx_inst|baud_counter[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[0]~13_combout\ = \uart_tx_inst|baud_counter\(0) $ (VCC)
-- \uart_tx_inst|baud_counter[0]~14\ = CARRY(\uart_tx_inst|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(0),
	datad => VCC,
	combout => \uart_tx_inst|baud_counter[0]~13_combout\,
	cout => \uart_tx_inst|baud_counter[0]~14\);

-- Location: LCCOMB_X28_Y11_N12
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X29_Y11_N3
\uart_tx_inst|baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[0]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(0));

-- Location: LCCOMB_X29_Y11_N4
\uart_tx_inst|baud_counter[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[1]~15_combout\ = (\uart_tx_inst|baud_counter\(1) & (!\uart_tx_inst|baud_counter[0]~14\)) # (!\uart_tx_inst|baud_counter\(1) & ((\uart_tx_inst|baud_counter[0]~14\) # (GND)))
-- \uart_tx_inst|baud_counter[1]~16\ = CARRY((!\uart_tx_inst|baud_counter[0]~14\) # (!\uart_tx_inst|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(1),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[0]~14\,
	combout => \uart_tx_inst|baud_counter[1]~15_combout\,
	cout => \uart_tx_inst|baud_counter[1]~16\);

-- Location: FF_X29_Y11_N5
\uart_tx_inst|baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[1]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(1));

-- Location: LCCOMB_X29_Y11_N6
\uart_tx_inst|baud_counter[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[2]~17_combout\ = (\uart_tx_inst|baud_counter\(2) & (\uart_tx_inst|baud_counter[1]~16\ $ (GND))) # (!\uart_tx_inst|baud_counter\(2) & (!\uart_tx_inst|baud_counter[1]~16\ & VCC))
-- \uart_tx_inst|baud_counter[2]~18\ = CARRY((\uart_tx_inst|baud_counter\(2) & !\uart_tx_inst|baud_counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(2),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[1]~16\,
	combout => \uart_tx_inst|baud_counter[2]~17_combout\,
	cout => \uart_tx_inst|baud_counter[2]~18\);

-- Location: FF_X29_Y11_N7
\uart_tx_inst|baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[2]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(2));

-- Location: LCCOMB_X29_Y11_N8
\uart_tx_inst|baud_counter[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[3]~19_combout\ = (\uart_tx_inst|baud_counter\(3) & (!\uart_tx_inst|baud_counter[2]~18\)) # (!\uart_tx_inst|baud_counter\(3) & ((\uart_tx_inst|baud_counter[2]~18\) # (GND)))
-- \uart_tx_inst|baud_counter[3]~20\ = CARRY((!\uart_tx_inst|baud_counter[2]~18\) # (!\uart_tx_inst|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(3),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[2]~18\,
	combout => \uart_tx_inst|baud_counter[3]~19_combout\,
	cout => \uart_tx_inst|baud_counter[3]~20\);

-- Location: FF_X29_Y11_N9
\uart_tx_inst|baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[3]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(3));

-- Location: LCCOMB_X29_Y11_N10
\uart_tx_inst|baud_counter[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[4]~21_combout\ = (\uart_tx_inst|baud_counter\(4) & (\uart_tx_inst|baud_counter[3]~20\ $ (GND))) # (!\uart_tx_inst|baud_counter\(4) & (!\uart_tx_inst|baud_counter[3]~20\ & VCC))
-- \uart_tx_inst|baud_counter[4]~22\ = CARRY((\uart_tx_inst|baud_counter\(4) & !\uart_tx_inst|baud_counter[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(4),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[3]~20\,
	combout => \uart_tx_inst|baud_counter[4]~21_combout\,
	cout => \uart_tx_inst|baud_counter[4]~22\);

-- Location: FF_X29_Y11_N11
\uart_tx_inst|baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[4]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(4));

-- Location: LCCOMB_X29_Y11_N12
\uart_tx_inst|baud_counter[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[5]~23_combout\ = (\uart_tx_inst|baud_counter\(5) & (!\uart_tx_inst|baud_counter[4]~22\)) # (!\uart_tx_inst|baud_counter\(5) & ((\uart_tx_inst|baud_counter[4]~22\) # (GND)))
-- \uart_tx_inst|baud_counter[5]~24\ = CARRY((!\uart_tx_inst|baud_counter[4]~22\) # (!\uart_tx_inst|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(5),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[4]~22\,
	combout => \uart_tx_inst|baud_counter[5]~23_combout\,
	cout => \uart_tx_inst|baud_counter[5]~24\);

-- Location: FF_X29_Y11_N13
\uart_tx_inst|baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[5]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(5));

-- Location: LCCOMB_X29_Y11_N14
\uart_tx_inst|baud_counter[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[6]~25_combout\ = (\uart_tx_inst|baud_counter\(6) & (\uart_tx_inst|baud_counter[5]~24\ $ (GND))) # (!\uart_tx_inst|baud_counter\(6) & (!\uart_tx_inst|baud_counter[5]~24\ & VCC))
-- \uart_tx_inst|baud_counter[6]~26\ = CARRY((\uart_tx_inst|baud_counter\(6) & !\uart_tx_inst|baud_counter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(6),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[5]~24\,
	combout => \uart_tx_inst|baud_counter[6]~25_combout\,
	cout => \uart_tx_inst|baud_counter[6]~26\);

-- Location: FF_X29_Y11_N15
\uart_tx_inst|baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[6]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(6));

-- Location: LCCOMB_X29_Y11_N16
\uart_tx_inst|baud_counter[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[7]~27_combout\ = (\uart_tx_inst|baud_counter\(7) & (!\uart_tx_inst|baud_counter[6]~26\)) # (!\uart_tx_inst|baud_counter\(7) & ((\uart_tx_inst|baud_counter[6]~26\) # (GND)))
-- \uart_tx_inst|baud_counter[7]~28\ = CARRY((!\uart_tx_inst|baud_counter[6]~26\) # (!\uart_tx_inst|baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(7),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[6]~26\,
	combout => \uart_tx_inst|baud_counter[7]~27_combout\,
	cout => \uart_tx_inst|baud_counter[7]~28\);

-- Location: FF_X29_Y11_N17
\uart_tx_inst|baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[7]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(7));

-- Location: LCCOMB_X29_Y11_N18
\uart_tx_inst|baud_counter[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[8]~29_combout\ = (\uart_tx_inst|baud_counter\(8) & (\uart_tx_inst|baud_counter[7]~28\ $ (GND))) # (!\uart_tx_inst|baud_counter\(8) & (!\uart_tx_inst|baud_counter[7]~28\ & VCC))
-- \uart_tx_inst|baud_counter[8]~30\ = CARRY((\uart_tx_inst|baud_counter\(8) & !\uart_tx_inst|baud_counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(8),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[7]~28\,
	combout => \uart_tx_inst|baud_counter[8]~29_combout\,
	cout => \uart_tx_inst|baud_counter[8]~30\);

-- Location: FF_X29_Y11_N19
\uart_tx_inst|baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[8]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(8));

-- Location: LCCOMB_X29_Y11_N20
\uart_tx_inst|baud_counter[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[9]~31_combout\ = (\uart_tx_inst|baud_counter\(9) & (!\uart_tx_inst|baud_counter[8]~30\)) # (!\uart_tx_inst|baud_counter\(9) & ((\uart_tx_inst|baud_counter[8]~30\) # (GND)))
-- \uart_tx_inst|baud_counter[9]~32\ = CARRY((!\uart_tx_inst|baud_counter[8]~30\) # (!\uart_tx_inst|baud_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(9),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[8]~30\,
	combout => \uart_tx_inst|baud_counter[9]~31_combout\,
	cout => \uart_tx_inst|baud_counter[9]~32\);

-- Location: FF_X29_Y11_N21
\uart_tx_inst|baud_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[9]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(9));

-- Location: LCCOMB_X29_Y11_N22
\uart_tx_inst|baud_counter[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[10]~33_combout\ = (\uart_tx_inst|baud_counter\(10) & (\uart_tx_inst|baud_counter[9]~32\ $ (GND))) # (!\uart_tx_inst|baud_counter\(10) & (!\uart_tx_inst|baud_counter[9]~32\ & VCC))
-- \uart_tx_inst|baud_counter[10]~34\ = CARRY((\uart_tx_inst|baud_counter\(10) & !\uart_tx_inst|baud_counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(10),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[9]~32\,
	combout => \uart_tx_inst|baud_counter[10]~33_combout\,
	cout => \uart_tx_inst|baud_counter[10]~34\);

-- Location: FF_X29_Y11_N23
\uart_tx_inst|baud_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[10]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(10));

-- Location: LCCOMB_X29_Y11_N24
\uart_tx_inst|baud_counter[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[11]~35_combout\ = (\uart_tx_inst|baud_counter\(11) & (!\uart_tx_inst|baud_counter[10]~34\)) # (!\uart_tx_inst|baud_counter\(11) & ((\uart_tx_inst|baud_counter[10]~34\) # (GND)))
-- \uart_tx_inst|baud_counter[11]~36\ = CARRY((!\uart_tx_inst|baud_counter[10]~34\) # (!\uart_tx_inst|baud_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|baud_counter\(11),
	datad => VCC,
	cin => \uart_tx_inst|baud_counter[10]~34\,
	combout => \uart_tx_inst|baud_counter[11]~35_combout\,
	cout => \uart_tx_inst|baud_counter[11]~36\);

-- Location: FF_X29_Y11_N25
\uart_tx_inst|baud_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[11]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(11));

-- Location: LCCOMB_X29_Y11_N26
\uart_tx_inst|baud_counter[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|baud_counter[12]~37_combout\ = \uart_tx_inst|baud_counter\(12) $ (!\uart_tx_inst|baud_counter[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(12),
	cin => \uart_tx_inst|baud_counter[11]~36\,
	combout => \uart_tx_inst|baud_counter[12]~37_combout\);

-- Location: FF_X29_Y11_N27
\uart_tx_inst|baud_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|baud_counter[12]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	sload => \uart_tx_inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|baud_counter\(12));

-- Location: LCCOMB_X29_Y11_N0
\uart_tx_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan0~0_combout\ = (\uart_tx_inst|baud_counter\(12)) # ((\uart_tx_inst|baud_counter\(11)) # ((\uart_tx_inst|baud_counter\(10)) # (\uart_tx_inst|baud_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(12),
	datab => \uart_tx_inst|baud_counter\(11),
	datac => \uart_tx_inst|baud_counter\(10),
	datad => \uart_tx_inst|baud_counter\(9),
	combout => \uart_tx_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\uart_tx_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan0~1_combout\ = (\uart_tx_inst|baud_counter\(3)) # ((\uart_tx_inst|baud_counter\(2)) # ((\uart_tx_inst|baud_counter\(1)) # (\uart_tx_inst|baud_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(3),
	datab => \uart_tx_inst|baud_counter\(2),
	datac => \uart_tx_inst|baud_counter\(1),
	datad => \uart_tx_inst|baud_counter\(0),
	combout => \uart_tx_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y11_N28
\uart_tx_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan0~2_combout\ = (\uart_tx_inst|baud_counter\(6)) # ((\uart_tx_inst|baud_counter\(4) & (\uart_tx_inst|baud_counter\(5) & \uart_tx_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(4),
	datab => \uart_tx_inst|baud_counter\(5),
	datac => \uart_tx_inst|baud_counter\(6),
	datad => \uart_tx_inst|LessThan0~1_combout\,
	combout => \uart_tx_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y11_N30
\uart_tx_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan0~3_combout\ = (\uart_tx_inst|LessThan0~0_combout\) # ((\uart_tx_inst|baud_counter\(8) & (\uart_tx_inst|baud_counter\(7) & \uart_tx_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|baud_counter\(8),
	datab => \uart_tx_inst|baud_counter\(7),
	datac => \uart_tx_inst|LessThan0~0_combout\,
	datad => \uart_tx_inst|LessThan0~2_combout\,
	combout => \uart_tx_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y12_N0
\uart_tx_inst|tx_shift[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift[0]~0_combout\ = (\uart_tx_inst|state.STATE_IDLE~q\) # (!\trigger~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|state.STATE_IDLE~q\,
	datad => \trigger~q\,
	combout => \uart_tx_inst|tx_shift[0]~0_combout\);

-- Location: LCCOMB_X28_Y13_N22
\uart_tx_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector27~0_combout\ = (!\uart_tx_inst|Selector26~0_combout\ & (((!\uart_tx_inst|LessThan0~3_combout\ & \uart_tx_inst|state.STATE_START~q\)) # (!\uart_tx_inst|tx_shift[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan0~3_combout\,
	datab => \uart_tx_inst|tx_shift[0]~0_combout\,
	datac => \uart_tx_inst|state.STATE_START~q\,
	datad => \uart_tx_inst|Selector26~0_combout\,
	combout => \uart_tx_inst|Selector27~0_combout\);

-- Location: FF_X28_Y13_N23
\uart_tx_inst|state.STATE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector27~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STATE_START~q\);

-- Location: LCCOMB_X28_Y13_N20
\uart_tx_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector28~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & (!\uart_tx_inst|Selector26~0_combout\ & ((\uart_tx_inst|state.STATE_IDLE~q\) # (!\trigger~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_DATA~q\,
	datab => \trigger~q\,
	datac => \uart_tx_inst|state.STATE_IDLE~q\,
	datad => \uart_tx_inst|Selector26~0_combout\,
	combout => \uart_tx_inst|Selector28~0_combout\);

-- Location: LCCOMB_X28_Y13_N30
\uart_tx_inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector28~1_combout\ = (\uart_tx_inst|LessThan0~3_combout\ & (!\uart_tx_inst|state.STATE_STOP~q\ & ((\uart_tx_inst|state.STATE_START~q\) # (\uart_tx_inst|Selector28~0_combout\)))) # (!\uart_tx_inst|LessThan0~3_combout\ & 
-- (((\uart_tx_inst|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_START~q\,
	datab => \uart_tx_inst|state.STATE_STOP~q\,
	datac => \uart_tx_inst|LessThan0~3_combout\,
	datad => \uart_tx_inst|Selector28~0_combout\,
	combout => \uart_tx_inst|Selector28~1_combout\);

-- Location: FF_X28_Y13_N31
\uart_tx_inst|state.STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector28~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STATE_DATA~q\);

-- Location: LCCOMB_X28_Y13_N8
\uart_tx_inst|tx_shift~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift~2_combout\ = (\uart_tx_inst|state.STATE_START~q\) # (\uart_tx_inst|state.STATE_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|state.STATE_START~q\,
	datad => \uart_tx_inst|state.STATE_STOP~q\,
	combout => \uart_tx_inst|tx_shift~2_combout\);

-- Location: LCCOMB_X28_Y13_N0
\uart_tx_inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector14~0_combout\ = (\uart_tx_inst|bit_index\(3) & ((\uart_tx_inst|tx_shift~2_combout\) # ((!\uart_tx_inst|LessThan0~3_combout\ & \uart_tx_inst|state.STATE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan0~3_combout\,
	datab => \uart_tx_inst|tx_shift~2_combout\,
	datac => \uart_tx_inst|bit_index\(3),
	datad => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|Selector14~0_combout\);

-- Location: FF_X28_Y13_N1
\uart_tx_inst|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector14~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_index\(3));

-- Location: LCCOMB_X28_Y13_N2
\uart_tx_inst|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector17~2_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|bit_index\(0) & ((!\uart_tx_inst|LessThan0~3_combout\))) # (!\uart_tx_inst|bit_index\(0) & (!\uart_tx_inst|bit_index\(3) & \uart_tx_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|bit_index\(0),
	datab => \uart_tx_inst|bit_index\(3),
	datac => \uart_tx_inst|LessThan0~3_combout\,
	datad => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|Selector17~2_combout\);

-- Location: LCCOMB_X28_Y13_N26
\uart_tx_inst|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector17~3_combout\ = (\uart_tx_inst|Selector17~2_combout\) # ((\uart_tx_inst|bit_index\(0) & ((\uart_tx_inst|state.STATE_START~q\) # (\uart_tx_inst|state.STATE_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_START~q\,
	datab => \uart_tx_inst|state.STATE_STOP~q\,
	datac => \uart_tx_inst|bit_index\(0),
	datad => \uart_tx_inst|Selector17~2_combout\,
	combout => \uart_tx_inst|Selector17~3_combout\);

-- Location: FF_X28_Y13_N27
\uart_tx_inst|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector17~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_index\(0));

-- Location: LCCOMB_X28_Y13_N28
\uart_tx_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector16~0_combout\ = (\uart_tx_inst|bit_index\(1) & ((\uart_tx_inst|tx_shift~2_combout\) # ((\uart_tx_inst|state.STATE_DATA~q\ & !\uart_tx_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_DATA~q\,
	datab => \uart_tx_inst|tx_shift~2_combout\,
	datac => \uart_tx_inst|LessThan0~3_combout\,
	datad => \uart_tx_inst|bit_index\(1),
	combout => \uart_tx_inst|Selector16~0_combout\);

-- Location: LCCOMB_X28_Y13_N18
\uart_tx_inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector15~1_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & (!\uart_tx_inst|bit_index\(3) & (\uart_tx_inst|LessThan0~3_combout\ & \uart_tx_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_DATA~q\,
	datab => \uart_tx_inst|bit_index\(3),
	datac => \uart_tx_inst|LessThan0~3_combout\,
	datad => \uart_tx_inst|LessThan1~0_combout\,
	combout => \uart_tx_inst|Selector15~1_combout\);

-- Location: LCCOMB_X28_Y13_N24
\uart_tx_inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector16~1_combout\ = (\uart_tx_inst|Selector16~0_combout\) # ((\uart_tx_inst|Selector15~1_combout\ & (\uart_tx_inst|bit_index\(0) $ (\uart_tx_inst|bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|bit_index\(0),
	datab => \uart_tx_inst|Selector16~0_combout\,
	datac => \uart_tx_inst|bit_index\(1),
	datad => \uart_tx_inst|Selector15~1_combout\,
	combout => \uart_tx_inst|Selector16~1_combout\);

-- Location: FF_X28_Y13_N25
\uart_tx_inst|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector16~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_index\(1));

-- Location: LCCOMB_X28_Y13_N6
\uart_tx_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector15~0_combout\ = (\uart_tx_inst|bit_index\(2) & ((\uart_tx_inst|tx_shift~2_combout\) # ((!\uart_tx_inst|LessThan0~3_combout\ & \uart_tx_inst|state.STATE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan0~3_combout\,
	datab => \uart_tx_inst|bit_index\(2),
	datac => \uart_tx_inst|tx_shift~2_combout\,
	datad => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|Selector15~0_combout\);

-- Location: LCCOMB_X28_Y13_N4
\uart_tx_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add1~0_combout\ = \uart_tx_inst|bit_index\(2) $ (((\uart_tx_inst|bit_index\(0) & \uart_tx_inst|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|bit_index\(0),
	datab => \uart_tx_inst|bit_index\(1),
	datac => \uart_tx_inst|bit_index\(2),
	combout => \uart_tx_inst|Add1~0_combout\);

-- Location: LCCOMB_X28_Y13_N14
\uart_tx_inst|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector15~2_combout\ = (\uart_tx_inst|Selector15~0_combout\) # ((\uart_tx_inst|Add1~0_combout\ & \uart_tx_inst|Selector15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector15~0_combout\,
	datac => \uart_tx_inst|Add1~0_combout\,
	datad => \uart_tx_inst|Selector15~1_combout\,
	combout => \uart_tx_inst|Selector15~2_combout\);

-- Location: FF_X28_Y13_N15
\uart_tx_inst|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector15~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_index\(2));

-- Location: LCCOMB_X28_Y13_N12
\uart_tx_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~0_combout\ = ((!\uart_tx_inst|bit_index\(2)) # (!\uart_tx_inst|bit_index\(1))) # (!\uart_tx_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|bit_index\(0),
	datab => \uart_tx_inst|bit_index\(1),
	datac => \uart_tx_inst|bit_index\(2),
	combout => \uart_tx_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y13_N10
\uart_tx_inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector26~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & (\uart_tx_inst|LessThan0~3_combout\ & ((\uart_tx_inst|bit_index\(3)) # (!\uart_tx_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|state.STATE_DATA~q\,
	datab => \uart_tx_inst|bit_index\(3),
	datac => \uart_tx_inst|LessThan0~3_combout\,
	datad => \uart_tx_inst|LessThan1~0_combout\,
	combout => \uart_tx_inst|Selector26~0_combout\);

-- Location: LCCOMB_X28_Y13_N16
\uart_tx_inst|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector29~1_combout\ = (\uart_tx_inst|Selector26~0_combout\) # ((!\uart_tx_inst|LessThan0~3_combout\ & \uart_tx_inst|state.STATE_STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan0~3_combout\,
	datac => \uart_tx_inst|state.STATE_STOP~q\,
	datad => \uart_tx_inst|Selector26~0_combout\,
	combout => \uart_tx_inst|Selector29~1_combout\);

-- Location: FF_X28_Y13_N17
\uart_tx_inst|state.STATE_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector29~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STATE_STOP~q\);

-- Location: LCCOMB_X28_Y12_N4
\uart_tx_inst|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector26~1_combout\ = (\trigger~q\ & (((!\uart_tx_inst|state.STATE_STOP~q\)) # (!\uart_tx_inst|LessThan0~3_combout\))) # (!\trigger~q\ & (\uart_tx_inst|state.STATE_IDLE~q\ & ((!\uart_tx_inst|state.STATE_STOP~q\) # 
-- (!\uart_tx_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger~q\,
	datab => \uart_tx_inst|LessThan0~3_combout\,
	datac => \uart_tx_inst|state.STATE_IDLE~q\,
	datad => \uart_tx_inst|state.STATE_STOP~q\,
	combout => \uart_tx_inst|Selector26~1_combout\);

-- Location: FF_X28_Y12_N5
\uart_tx_inst|state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector26~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STATE_IDLE~q\);

-- Location: FF_X29_Y12_N31
\uart_tx_inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \trigger~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_tx_inst|ALT_INV_state.STATE_IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|busy~q\);

-- Location: LCCOMB_X30_Y12_N16
\write_ptr[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_ptr[0]~5_combout\ = write_ptr(0) $ (VCC)
-- \write_ptr[0]~6\ = CARRY(write_ptr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_ptr(0),
	datad => VCC,
	combout => \write_ptr[0]~5_combout\,
	cout => \write_ptr[0]~6\);

-- Location: LCCOMB_X30_Y12_N18
\write_ptr[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_ptr[1]~7_combout\ = (write_ptr(1) & (!\write_ptr[0]~6\)) # (!write_ptr(1) & ((\write_ptr[0]~6\) # (GND)))
-- \write_ptr[1]~8\ = CARRY((!\write_ptr[0]~6\) # (!write_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => write_ptr(1),
	datad => VCC,
	cin => \write_ptr[0]~6\,
	combout => \write_ptr[1]~7_combout\,
	cout => \write_ptr[1]~8\);

-- Location: FF_X30_Y12_N19
\write_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write_ptr[1]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_ptr(1));

-- Location: LCCOMB_X30_Y12_N20
\write_ptr[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_ptr[2]~9_combout\ = (write_ptr(2) & (\write_ptr[1]~8\ $ (GND))) # (!write_ptr(2) & (!\write_ptr[1]~8\ & VCC))
-- \write_ptr[2]~10\ = CARRY((write_ptr(2) & !\write_ptr[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(2),
	datad => VCC,
	cin => \write_ptr[1]~8\,
	combout => \write_ptr[2]~9_combout\,
	cout => \write_ptr[2]~10\);

-- Location: FF_X30_Y12_N21
\write_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write_ptr[2]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_ptr(2));

-- Location: LCCOMB_X30_Y12_N22
\write_ptr[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_ptr[3]~11_combout\ = (write_ptr(3) & (!\write_ptr[2]~10\)) # (!write_ptr(3) & ((\write_ptr[2]~10\) # (GND)))
-- \write_ptr[3]~12\ = CARRY((!\write_ptr[2]~10\) # (!write_ptr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(3),
	datad => VCC,
	cin => \write_ptr[2]~10\,
	combout => \write_ptr[3]~11_combout\,
	cout => \write_ptr[3]~12\);

-- Location: FF_X30_Y12_N23
\write_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write_ptr[3]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_ptr(3));

-- Location: LCCOMB_X29_Y12_N22
\read_ptr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[0]~0_combout\ = read_ptr(0) $ (((!\trigger~q\ & (!\uart_tx_inst|busy~q\ & !\Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger~q\,
	datab => \uart_tx_inst|busy~q\,
	datac => read_ptr(0),
	datad => \Equal2~2_combout\,
	combout => \read_ptr[0]~0_combout\);

-- Location: FF_X29_Y12_N23
\read_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_ptr[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_ptr(0));

-- Location: LCCOMB_X29_Y12_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = read_ptr(0) $ (VCC)
-- \Add0~1\ = CARRY(read_ptr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y12_N20
\read_ptr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[1]~1_combout\ = read_ptr(1) $ (((read_ptr(0) & !\always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(0),
	datac => read_ptr(1),
	datad => \always0~0_combout\,
	combout => \read_ptr[1]~1_combout\);

-- Location: FF_X29_Y12_N21
\read_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_ptr[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_ptr(1));

-- Location: LCCOMB_X29_Y12_N14
\read_ptr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[2]~2_combout\ = read_ptr(2) $ (((read_ptr(0) & (read_ptr(1) & !\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(0),
	datab => read_ptr(1),
	datac => read_ptr(2),
	datad => \always0~0_combout\,
	combout => \read_ptr[2]~2_combout\);

-- Location: FF_X29_Y12_N15
\read_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_ptr[2]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_ptr(2));

-- Location: LCCOMB_X28_Y12_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = read_ptr(3) $ (((read_ptr(1) & (read_ptr(0) & read_ptr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(1),
	datab => read_ptr(0),
	datac => read_ptr(2),
	datad => read_ptr(3),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X30_Y12_N30
\read_ptr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[3]~3_combout\ = (\always0~0_combout\ & ((read_ptr(3)))) # (!\always0~0_combout\ & (\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => read_ptr(3),
	datad => \always0~0_combout\,
	combout => \read_ptr[3]~3_combout\);

-- Location: FF_X29_Y12_N17
\read_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \read_ptr[3]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_ptr(3));

-- Location: LCCOMB_X29_Y12_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (read_ptr(1) & (\Add0~1\ & VCC)) # (!read_ptr(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!read_ptr(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_ptr(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y12_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (read_ptr(2) & ((GND) # (!\Add0~3\))) # (!read_ptr(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((read_ptr(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_ptr(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y12_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (read_ptr(3) & (\Add0~5\ & VCC)) # (!read_ptr(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!read_ptr(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_ptr(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y12_N26
\always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (write_ptr(3) & ((write_ptr(0) $ (\Add0~0_combout\)) # (!\Add0~6_combout\))) # (!write_ptr(3) & ((\Add0~6_combout\) # (write_ptr(0) $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(3),
	datab => write_ptr(0),
	datac => \Add0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X31_Y12_N10
\Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (read_ptr(0) & (read_ptr(3) & (read_ptr(1) & read_ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(0),
	datab => read_ptr(3),
	datac => read_ptr(1),
	datad => read_ptr(2),
	combout => \Add2~3_combout\);

-- Location: LCCOMB_X31_Y12_N8
\read_ptr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[4]~4_combout\ = read_ptr(4) $ (((\Add2~3_combout\ & !\always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datac => read_ptr(4),
	datad => \always0~0_combout\,
	combout => \read_ptr[4]~4_combout\);

-- Location: FF_X31_Y12_N9
\read_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_ptr[4]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_ptr(4));

-- Location: LCCOMB_X29_Y12_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (read_ptr(4) & ((GND) # (!\Add0~7\))) # (!read_ptr(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((read_ptr(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_ptr(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X29_Y12_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = !\Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X30_Y12_N24
\write_ptr[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_ptr[4]~13_combout\ = write_ptr(4) $ (!\write_ptr[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(4),
	cin => \write_ptr[3]~12\,
	combout => \write_ptr[4]~13_combout\);

-- Location: FF_X30_Y12_N25
\write_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write_ptr[4]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_ptr(4));

-- Location: LCCOMB_X29_Y12_N12
\always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (write_ptr(1) & ((write_ptr(4) $ (\Add0~8_combout\)) # (!\Add0~2_combout\))) # (!write_ptr(1) & ((\Add0~2_combout\) # (write_ptr(4) $ (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(1),
	datab => write_ptr(4),
	datac => \Add0~2_combout\,
	datad => \Add0~8_combout\,
	combout => \always0~4_combout\);

-- Location: LCCOMB_X29_Y12_N30
\always0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = (\always0~4_combout\) # (write_ptr(2) $ (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(2),
	datab => \Add0~4_combout\,
	datad => \always0~4_combout\,
	combout => \always0~5_combout\);

-- Location: IOIBUF_X34_Y18_N15
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X31_Y17_N28
\uart_rx_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector18~0_combout\ = (\rx~input_o\ & !\uart_rx_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datad => \uart_rx_inst|state.IDLE~q\,
	combout => \uart_rx_inst|Selector18~0_combout\);

-- Location: LCCOMB_X32_Y16_N6
\uart_rx_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~6_combout\ = (\uart_rx_inst|counter\(3) & (!\uart_rx_inst|Add0~5\)) # (!\uart_rx_inst|counter\(3) & ((\uart_rx_inst|Add0~5\) # (GND)))
-- \uart_rx_inst|Add0~7\ = CARRY((!\uart_rx_inst|Add0~5\) # (!\uart_rx_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(3),
	datad => VCC,
	cin => \uart_rx_inst|Add0~5\,
	combout => \uart_rx_inst|Add0~6_combout\,
	cout => \uart_rx_inst|Add0~7\);

-- Location: LCCOMB_X32_Y16_N8
\uart_rx_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~12_combout\ = (\uart_rx_inst|counter\(4) & (\uart_rx_inst|Add0~7\ $ (GND))) # (!\uart_rx_inst|counter\(4) & (!\uart_rx_inst|Add0~7\ & VCC))
-- \uart_rx_inst|Add0~13\ = CARRY((\uart_rx_inst|counter\(4) & !\uart_rx_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|counter\(4),
	datad => VCC,
	cin => \uart_rx_inst|Add0~7\,
	combout => \uart_rx_inst|Add0~12_combout\,
	cout => \uart_rx_inst|Add0~13\);

-- Location: LCCOMB_X32_Y16_N10
\uart_rx_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~14_combout\ = (\uart_rx_inst|counter\(5) & (!\uart_rx_inst|Add0~13\)) # (!\uart_rx_inst|counter\(5) & ((\uart_rx_inst|Add0~13\) # (GND)))
-- \uart_rx_inst|Add0~15\ = CARRY((!\uart_rx_inst|Add0~13\) # (!\uart_rx_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|counter\(5),
	datad => VCC,
	cin => \uart_rx_inst|Add0~13\,
	combout => \uart_rx_inst|Add0~14_combout\,
	cout => \uart_rx_inst|Add0~15\);

-- Location: LCCOMB_X30_Y16_N30
\uart_rx_inst|counter[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[8]~10_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & ((!\uart_rx_inst|LessThan0~2_combout\) # (!\uart_rx_inst|state.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.START~q\,
	datab => \uart_rx_inst|state.IDLE~q\,
	datac => \uart_rx_inst|LessThan0~2_combout\,
	datad => \uart_rx_inst|counter[11]~2_combout\,
	combout => \uart_rx_inst|counter[8]~10_combout\);

-- Location: LCCOMB_X31_Y16_N18
\uart_rx_inst|counter[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[11]~4_combout\ = ((!\uart_rx_inst|LessThan0~2_combout\) # (!\rx~input_o\)) # (!\uart_rx_inst|state.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.START~q\,
	datac => \rx~input_o\,
	datad => \uart_rx_inst|LessThan0~2_combout\,
	combout => \uart_rx_inst|counter[11]~4_combout\);

-- Location: LCCOMB_X32_Y16_N12
\uart_rx_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~16_combout\ = (\uart_rx_inst|counter\(6) & (\uart_rx_inst|Add0~15\ $ (GND))) # (!\uart_rx_inst|counter\(6) & (!\uart_rx_inst|Add0~15\ & VCC))
-- \uart_rx_inst|Add0~17\ = CARRY((\uart_rx_inst|counter\(6) & !\uart_rx_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|counter\(6),
	datad => VCC,
	cin => \uart_rx_inst|Add0~15\,
	combout => \uart_rx_inst|Add0~16_combout\,
	cout => \uart_rx_inst|Add0~17\);

-- Location: LCCOMB_X32_Y16_N14
\uart_rx_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~18_combout\ = (\uart_rx_inst|counter\(7) & (!\uart_rx_inst|Add0~17\)) # (!\uart_rx_inst|counter\(7) & ((\uart_rx_inst|Add0~17\) # (GND)))
-- \uart_rx_inst|Add0~19\ = CARRY((!\uart_rx_inst|Add0~17\) # (!\uart_rx_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(7),
	datad => VCC,
	cin => \uart_rx_inst|Add0~17\,
	combout => \uart_rx_inst|Add0~18_combout\,
	cout => \uart_rx_inst|Add0~19\);

-- Location: LCCOMB_X31_Y16_N14
\uart_rx_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~22_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & (\uart_rx_inst|Add0~18_combout\ & !\uart_rx_inst|counter[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.IDLE~q\,
	datab => \uart_rx_inst|counter[11]~2_combout\,
	datac => \uart_rx_inst|Add0~18_combout\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Add0~22_combout\);

-- Location: FF_X31_Y16_N15
\uart_rx_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(7));

-- Location: LCCOMB_X32_Y16_N16
\uart_rx_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~20_combout\ = (\uart_rx_inst|counter\(8) & (\uart_rx_inst|Add0~19\ $ (GND))) # (!\uart_rx_inst|counter\(8) & (!\uart_rx_inst|Add0~19\ & VCC))
-- \uart_rx_inst|Add0~21\ = CARRY((\uart_rx_inst|counter\(8) & !\uart_rx_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(8),
	datad => VCC,
	cin => \uart_rx_inst|Add0~19\,
	combout => \uart_rx_inst|Add0~20_combout\,
	cout => \uart_rx_inst|Add0~21\);

-- Location: LCCOMB_X30_Y16_N2
\uart_rx_inst|counter[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[8]~5_combout\ = (\uart_rx_inst|counter[8]~10_combout\ & ((\uart_rx_inst|Add0~20_combout\) # ((!\uart_rx_inst|counter[11]~4_combout\ & \uart_rx_inst|counter\(8))))) # (!\uart_rx_inst|counter[8]~10_combout\ & 
-- (!\uart_rx_inst|counter[11]~4_combout\ & (\uart_rx_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter[8]~10_combout\,
	datab => \uart_rx_inst|counter[11]~4_combout\,
	datac => \uart_rx_inst|counter\(8),
	datad => \uart_rx_inst|Add0~20_combout\,
	combout => \uart_rx_inst|counter[8]~5_combout\);

-- Location: FF_X30_Y16_N3
\uart_rx_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|counter[8]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(8));

-- Location: LCCOMB_X32_Y16_N18
\uart_rx_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~26_combout\ = (\uart_rx_inst|counter\(9) & (!\uart_rx_inst|Add0~21\)) # (!\uart_rx_inst|counter\(9) & ((\uart_rx_inst|Add0~21\) # (GND)))
-- \uart_rx_inst|Add0~27\ = CARRY((!\uart_rx_inst|Add0~21\) # (!\uart_rx_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(9),
	datad => VCC,
	cin => \uart_rx_inst|Add0~21\,
	combout => \uart_rx_inst|Add0~26_combout\,
	cout => \uart_rx_inst|Add0~27\);

-- Location: LCCOMB_X32_Y16_N26
\uart_rx_inst|counter[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[9]~9_combout\ = (\uart_rx_inst|Add0~26_combout\ & ((\uart_rx_inst|counter[8]~10_combout\) # ((!\uart_rx_inst|counter[11]~4_combout\ & \uart_rx_inst|counter\(9))))) # (!\uart_rx_inst|Add0~26_combout\ & 
-- (!\uart_rx_inst|counter[11]~4_combout\ & (\uart_rx_inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~26_combout\,
	datab => \uart_rx_inst|counter[11]~4_combout\,
	datac => \uart_rx_inst|counter\(9),
	datad => \uart_rx_inst|counter[8]~10_combout\,
	combout => \uart_rx_inst|counter[9]~9_combout\);

-- Location: FF_X32_Y16_N27
\uart_rx_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|counter[9]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(9));

-- Location: LCCOMB_X32_Y16_N20
\uart_rx_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~28_combout\ = (\uart_rx_inst|counter\(10) & (\uart_rx_inst|Add0~27\ $ (GND))) # (!\uart_rx_inst|counter\(10) & (!\uart_rx_inst|Add0~27\ & VCC))
-- \uart_rx_inst|Add0~29\ = CARRY((\uart_rx_inst|counter\(10) & !\uart_rx_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|counter\(10),
	datad => VCC,
	cin => \uart_rx_inst|Add0~27\,
	combout => \uart_rx_inst|Add0~28_combout\,
	cout => \uart_rx_inst|Add0~29\);

-- Location: LCCOMB_X32_Y16_N28
\uart_rx_inst|counter[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[10]~8_combout\ = (\uart_rx_inst|Add0~28_combout\ & ((\uart_rx_inst|counter[8]~10_combout\) # ((!\uart_rx_inst|counter[11]~4_combout\ & \uart_rx_inst|counter\(10))))) # (!\uart_rx_inst|Add0~28_combout\ & 
-- (!\uart_rx_inst|counter[11]~4_combout\ & (\uart_rx_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~28_combout\,
	datab => \uart_rx_inst|counter[11]~4_combout\,
	datac => \uart_rx_inst|counter\(10),
	datad => \uart_rx_inst|counter[8]~10_combout\,
	combout => \uart_rx_inst|counter[10]~8_combout\);

-- Location: FF_X32_Y16_N29
\uart_rx_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|counter[10]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(10));

-- Location: LCCOMB_X32_Y16_N22
\uart_rx_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~30_combout\ = (\uart_rx_inst|counter\(11) & (!\uart_rx_inst|Add0~29\)) # (!\uart_rx_inst|counter\(11) & ((\uart_rx_inst|Add0~29\) # (GND)))
-- \uart_rx_inst|Add0~31\ = CARRY((!\uart_rx_inst|Add0~29\) # (!\uart_rx_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(11),
	datad => VCC,
	cin => \uart_rx_inst|Add0~29\,
	combout => \uart_rx_inst|Add0~30_combout\,
	cout => \uart_rx_inst|Add0~31\);

-- Location: LCCOMB_X32_Y16_N30
\uart_rx_inst|counter[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[11]~7_combout\ = (\uart_rx_inst|Add0~30_combout\ & ((\uart_rx_inst|counter[8]~10_combout\) # ((!\uart_rx_inst|counter[11]~4_combout\ & \uart_rx_inst|counter\(11))))) # (!\uart_rx_inst|Add0~30_combout\ & 
-- (!\uart_rx_inst|counter[11]~4_combout\ & (\uart_rx_inst|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~30_combout\,
	datab => \uart_rx_inst|counter[11]~4_combout\,
	datac => \uart_rx_inst|counter\(11),
	datad => \uart_rx_inst|counter[8]~10_combout\,
	combout => \uart_rx_inst|counter[11]~7_combout\);

-- Location: FF_X32_Y16_N31
\uart_rx_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|counter[11]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(11));

-- Location: LCCOMB_X32_Y16_N24
\uart_rx_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~32_combout\ = \uart_rx_inst|Add0~31\ $ (!\uart_rx_inst|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|counter\(12),
	cin => \uart_rx_inst|Add0~31\,
	combout => \uart_rx_inst|Add0~32_combout\);

-- Location: LCCOMB_X30_Y16_N4
\uart_rx_inst|counter[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[12]~6_combout\ = (\uart_rx_inst|counter[8]~10_combout\ & ((\uart_rx_inst|Add0~32_combout\) # ((!\uart_rx_inst|counter[11]~4_combout\ & \uart_rx_inst|counter\(12))))) # (!\uart_rx_inst|counter[8]~10_combout\ & 
-- (!\uart_rx_inst|counter[11]~4_combout\ & (\uart_rx_inst|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter[8]~10_combout\,
	datab => \uart_rx_inst|counter[11]~4_combout\,
	datac => \uart_rx_inst|counter\(12),
	datad => \uart_rx_inst|Add0~32_combout\,
	combout => \uart_rx_inst|counter[12]~6_combout\);

-- Location: FF_X30_Y16_N5
\uart_rx_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|counter[12]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(12));

-- Location: LCCOMB_X30_Y16_N22
\uart_rx_inst|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~5_combout\ = (!\uart_rx_inst|counter\(11) & (!\uart_rx_inst|counter\(12) & (!\uart_rx_inst|counter\(10) & !\uart_rx_inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(11),
	datab => \uart_rx_inst|counter\(12),
	datac => \uart_rx_inst|counter\(10),
	datad => \uart_rx_inst|counter\(9),
	combout => \uart_rx_inst|LessThan3~5_combout\);

-- Location: LCCOMB_X31_Y16_N20
\uart_rx_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan0~0_combout\ = (\uart_rx_inst|counter\(4) & ((\uart_rx_inst|counter\(0)) # ((\uart_rx_inst|counter\(1)) # (\uart_rx_inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(0),
	datab => \uart_rx_inst|counter\(1),
	datac => \uart_rx_inst|counter\(4),
	datad => \uart_rx_inst|counter\(2),
	combout => \uart_rx_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y16_N22
\uart_rx_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan0~1_combout\ = (\uart_rx_inst|counter\(7) & ((\uart_rx_inst|counter\(5)) # ((\uart_rx_inst|counter\(3) & \uart_rx_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(3),
	datab => \uart_rx_inst|counter\(5),
	datac => \uart_rx_inst|counter\(7),
	datad => \uart_rx_inst|LessThan0~0_combout\,
	combout => \uart_rx_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y16_N8
\uart_rx_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan0~2_combout\ = (\uart_rx_inst|counter\(8)) # (((\uart_rx_inst|counter\(6) & \uart_rx_inst|LessThan0~1_combout\)) # (!\uart_rx_inst|LessThan3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(6),
	datab => \uart_rx_inst|counter\(8),
	datac => \uart_rx_inst|LessThan3~5_combout\,
	datad => \uart_rx_inst|LessThan0~1_combout\,
	combout => \uart_rx_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y16_N6
\uart_rx_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector19~0_combout\ = (\rx~input_o\ & (((\uart_rx_inst|state.START~q\ & !\uart_rx_inst|LessThan0~2_combout\)))) # (!\rx~input_o\ & (((\uart_rx_inst|state.START~q\ & !\uart_rx_inst|LessThan0~2_combout\)) # (!\uart_rx_inst|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|state.IDLE~q\,
	datac => \uart_rx_inst|state.START~q\,
	datad => \uart_rx_inst|LessThan0~2_combout\,
	combout => \uart_rx_inst|Selector19~0_combout\);

-- Location: FF_X31_Y16_N7
\uart_rx_inst|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector19~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|state.START~q\);

-- Location: LCCOMB_X31_Y16_N28
\uart_rx_inst|counter[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[11]~3_combout\ = (\uart_rx_inst|state.START~q\ & \uart_rx_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.START~q\,
	datad => \uart_rx_inst|LessThan0~2_combout\,
	combout => \uart_rx_inst|counter[11]~3_combout\);

-- Location: LCCOMB_X31_Y16_N24
\uart_rx_inst|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~23_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & (\uart_rx_inst|Add0~14_combout\ & !\uart_rx_inst|counter[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.IDLE~q\,
	datab => \uart_rx_inst|counter[11]~2_combout\,
	datac => \uart_rx_inst|Add0~14_combout\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Add0~23_combout\);

-- Location: FF_X31_Y16_N25
\uart_rx_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(5));

-- Location: LCCOMB_X31_Y16_N4
\uart_rx_inst|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~25_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & (\uart_rx_inst|Add0~16_combout\ & !\uart_rx_inst|counter[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.IDLE~q\,
	datab => \uart_rx_inst|counter[11]~2_combout\,
	datac => \uart_rx_inst|Add0~16_combout\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Add0~25_combout\);

-- Location: FF_X31_Y16_N5
\uart_rx_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(6));

-- Location: LCCOMB_X30_Y16_N16
\uart_rx_inst|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~6_combout\ = ((\uart_rx_inst|counter\(6) & (\uart_rx_inst|counter\(7) & \uart_rx_inst|counter\(8)))) # (!\uart_rx_inst|LessThan3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(6),
	datab => \uart_rx_inst|counter\(7),
	datac => \uart_rx_inst|LessThan3~5_combout\,
	datad => \uart_rx_inst|counter\(8),
	combout => \uart_rx_inst|LessThan3~6_combout\);

-- Location: LCCOMB_X30_Y16_N18
\uart_rx_inst|counter[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|counter[11]~2_combout\ = (\uart_rx_inst|state.DATA~q\ & ((\uart_rx_inst|LessThan3~6_combout\) # ((\uart_rx_inst|LessThan3~4_combout\)))) # (!\uart_rx_inst|state.DATA~q\ & (\uart_rx_inst|state.STOP~q\ & ((\uart_rx_inst|LessThan3~6_combout\) # 
-- (\uart_rx_inst|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.DATA~q\,
	datab => \uart_rx_inst|LessThan3~6_combout\,
	datac => \uart_rx_inst|state.STOP~q\,
	datad => \uart_rx_inst|LessThan3~4_combout\,
	combout => \uart_rx_inst|counter[11]~2_combout\);

-- Location: LCCOMB_X31_Y16_N30
\uart_rx_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~24_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & (\uart_rx_inst|Add0~12_combout\ & !\uart_rx_inst|counter[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.IDLE~q\,
	datab => \uart_rx_inst|counter[11]~2_combout\,
	datac => \uart_rx_inst|Add0~12_combout\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Add0~24_combout\);

-- Location: FF_X31_Y16_N31
\uart_rx_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(4));

-- Location: LCCOMB_X30_Y16_N28
\uart_rx_inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~3_combout\ = (\uart_rx_inst|counter\(4) & (\uart_rx_inst|counter\(8) & (\uart_rx_inst|counter\(7) & \uart_rx_inst|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(4),
	datab => \uart_rx_inst|counter\(8),
	datac => \uart_rx_inst|counter\(7),
	datad => \uart_rx_inst|counter\(5),
	combout => \uart_rx_inst|LessThan3~3_combout\);

-- Location: LCCOMB_X30_Y16_N24
\uart_rx_inst|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector20~3_combout\ = ((!\uart_rx_inst|LessThan3~6_combout\ & ((!\uart_rx_inst|LessThan3~2_combout\) # (!\uart_rx_inst|LessThan3~3_combout\)))) # (!\uart_rx_inst|Selector21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan3~3_combout\,
	datab => \uart_rx_inst|Selector21~0_combout\,
	datac => \uart_rx_inst|LessThan3~2_combout\,
	datad => \uart_rx_inst|LessThan3~6_combout\,
	combout => \uart_rx_inst|Selector20~3_combout\);

-- Location: LCCOMB_X30_Y16_N12
\uart_rx_inst|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector20~2_combout\ = (\rx~input_o\ & (\uart_rx_inst|Selector20~3_combout\ & (\uart_rx_inst|state.DATA~q\))) # (!\rx~input_o\ & ((\uart_rx_inst|counter[11]~3_combout\) # ((\uart_rx_inst|Selector20~3_combout\ & 
-- \uart_rx_inst|state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Selector20~3_combout\,
	datac => \uart_rx_inst|state.DATA~q\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Selector20~2_combout\);

-- Location: FF_X30_Y16_N13
\uart_rx_inst|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector20~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|state.DATA~q\);

-- Location: LCCOMB_X30_Y16_N10
\uart_rx_inst|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~7_combout\ = (\uart_rx_inst|LessThan3~6_combout\) # ((\uart_rx_inst|LessThan3~3_combout\ & \uart_rx_inst|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan3~3_combout\,
	datab => \uart_rx_inst|LessThan3~2_combout\,
	datad => \uart_rx_inst|LessThan3~6_combout\,
	combout => \uart_rx_inst|LessThan3~7_combout\);

-- Location: LCCOMB_X31_Y16_N0
\uart_rx_inst|bit_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|bit_index~0_combout\ = (!\uart_rx_inst|state.START~q\ & !\uart_rx_inst|state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.START~q\,
	datad => \uart_rx_inst|state.STOP~q\,
	combout => \uart_rx_inst|bit_index~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\uart_rx_inst|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~2_combout\ = (\uart_rx_inst|bit_index\(3) & (((!\uart_rx_inst|LessThan3~7_combout\ & \uart_rx_inst|state.DATA~q\)) # (!\uart_rx_inst|bit_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan3~7_combout\,
	datab => \uart_rx_inst|state.DATA~q\,
	datac => \uart_rx_inst|bit_index\(3),
	datad => \uart_rx_inst|bit_index~0_combout\,
	combout => \uart_rx_inst|Selector14~2_combout\);

-- Location: FF_X30_Y17_N31
\uart_rx_inst|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector14~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|bit_index\(3));

-- Location: LCCOMB_X30_Y16_N0
\uart_rx_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~3_combout\ = (\uart_rx_inst|state.DATA~q\ & (!\uart_rx_inst|bit_index\(3) & ((\uart_rx_inst|LessThan3~6_combout\) # (\uart_rx_inst|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.DATA~q\,
	datab => \uart_rx_inst|LessThan3~6_combout\,
	datac => \uart_rx_inst|bit_index\(3),
	datad => \uart_rx_inst|LessThan3~4_combout\,
	combout => \uart_rx_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X30_Y16_N14
\uart_rx_inst|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~3_combout\ = (\uart_rx_inst|state.DATA~q\ & (!\uart_rx_inst|LessThan3~6_combout\ & ((!\uart_rx_inst|LessThan3~2_combout\) # (!\uart_rx_inst|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.DATA~q\,
	datab => \uart_rx_inst|LessThan3~3_combout\,
	datac => \uart_rx_inst|LessThan3~2_combout\,
	datad => \uart_rx_inst|LessThan3~6_combout\,
	combout => \uart_rx_inst|Selector14~3_combout\);

-- Location: LCCOMB_X30_Y17_N10
\uart_rx_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector17~0_combout\ = (\uart_rx_inst|bit_index\(0) & (((\uart_rx_inst|Selector14~3_combout\) # (!\uart_rx_inst|bit_index~0_combout\)))) # (!\uart_rx_inst|bit_index\(0) & (\uart_rx_inst|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Decoder0~3_combout\,
	datab => \uart_rx_inst|bit_index~0_combout\,
	datac => \uart_rx_inst|bit_index\(0),
	datad => \uart_rx_inst|Selector14~3_combout\,
	combout => \uart_rx_inst|Selector17~0_combout\);

-- Location: FF_X30_Y17_N11
\uart_rx_inst|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector17~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|bit_index\(0));

-- Location: LCCOMB_X30_Y17_N12
\uart_rx_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector16~0_combout\ = (\uart_rx_inst|Decoder0~3_combout\ & (\uart_rx_inst|bit_index\(0) $ (\uart_rx_inst|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|bit_index\(0),
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|Decoder0~3_combout\,
	combout => \uart_rx_inst|Selector16~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\uart_rx_inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector16~1_combout\ = (\uart_rx_inst|Selector16~0_combout\) # ((\uart_rx_inst|bit_index\(1) & ((\uart_rx_inst|Selector14~3_combout\) # (!\uart_rx_inst|bit_index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector16~0_combout\,
	datab => \uart_rx_inst|bit_index~0_combout\,
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|Selector14~3_combout\,
	combout => \uart_rx_inst|Selector16~1_combout\);

-- Location: FF_X30_Y17_N5
\uart_rx_inst|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector16~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|bit_index\(1));

-- Location: LCCOMB_X30_Y17_N6
\uart_rx_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector15~0_combout\ = (\uart_rx_inst|Decoder0~3_combout\ & (\uart_rx_inst|bit_index\(2) $ (((\uart_rx_inst|bit_index\(0) & \uart_rx_inst|bit_index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|bit_index\(0),
	datab => \uart_rx_inst|bit_index\(2),
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|Decoder0~3_combout\,
	combout => \uart_rx_inst|Selector15~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\uart_rx_inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector15~1_combout\ = (\uart_rx_inst|Selector15~0_combout\) # ((\uart_rx_inst|bit_index\(2) & ((\uart_rx_inst|Selector14~3_combout\) # (!\uart_rx_inst|bit_index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector14~3_combout\,
	datab => \uart_rx_inst|bit_index~0_combout\,
	datac => \uart_rx_inst|bit_index\(2),
	datad => \uart_rx_inst|Selector15~0_combout\,
	combout => \uart_rx_inst|Selector15~1_combout\);

-- Location: FF_X30_Y17_N25
\uart_rx_inst|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector15~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|bit_index\(2));

-- Location: LCCOMB_X30_Y17_N18
\uart_rx_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector21~0_combout\ = (\uart_rx_inst|bit_index\(3)) # ((\uart_rx_inst|bit_index\(0) & (\uart_rx_inst|bit_index\(1) & \uart_rx_inst|bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|bit_index\(0),
	datab => \uart_rx_inst|bit_index\(1),
	datac => \uart_rx_inst|bit_index\(3),
	datad => \uart_rx_inst|bit_index\(2),
	combout => \uart_rx_inst|Selector21~0_combout\);

-- Location: LCCOMB_X29_Y16_N26
\uart_rx_inst|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector21~1_combout\ = (\uart_rx_inst|LessThan3~7_combout\ & (\uart_rx_inst|Selector21~0_combout\ & ((\uart_rx_inst|state.DATA~q\)))) # (!\uart_rx_inst|LessThan3~7_combout\ & (((\uart_rx_inst|state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector21~0_combout\,
	datab => \uart_rx_inst|LessThan3~7_combout\,
	datac => \uart_rx_inst|state.STOP~q\,
	datad => \uart_rx_inst|state.DATA~q\,
	combout => \uart_rx_inst|Selector21~1_combout\);

-- Location: FF_X29_Y16_N27
\uart_rx_inst|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector21~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|state.STOP~q\);

-- Location: LCCOMB_X31_Y16_N26
\uart_rx_inst|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector18~1_combout\ = (!\uart_rx_inst|Selector18~0_combout\ & (\uart_rx_inst|counter[11]~4_combout\ & ((!\uart_rx_inst|LessThan3~7_combout\) # (!\uart_rx_inst|state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector18~0_combout\,
	datab => \uart_rx_inst|state.STOP~q\,
	datac => \uart_rx_inst|LessThan3~7_combout\,
	datad => \uart_rx_inst|counter[11]~4_combout\,
	combout => \uart_rx_inst|Selector18~1_combout\);

-- Location: FF_X31_Y16_N27
\uart_rx_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector18~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|state.IDLE~q\);

-- Location: LCCOMB_X32_Y16_N0
\uart_rx_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~0_combout\ = \uart_rx_inst|counter\(0) $ (VCC)
-- \uart_rx_inst|Add0~1\ = CARRY(\uart_rx_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(0),
	datad => VCC,
	combout => \uart_rx_inst|Add0~0_combout\,
	cout => \uart_rx_inst|Add0~1\);

-- Location: LCCOMB_X31_Y16_N10
\uart_rx_inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~11_combout\ = (\uart_rx_inst|state.IDLE~q\ & (!\uart_rx_inst|counter[11]~2_combout\ & (\uart_rx_inst|Add0~0_combout\ & !\uart_rx_inst|counter[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.IDLE~q\,
	datab => \uart_rx_inst|counter[11]~2_combout\,
	datac => \uart_rx_inst|Add0~0_combout\,
	datad => \uart_rx_inst|counter[11]~3_combout\,
	combout => \uart_rx_inst|Add0~11_combout\);

-- Location: FF_X31_Y16_N11
\uart_rx_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(0));

-- Location: LCCOMB_X32_Y16_N2
\uart_rx_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~2_combout\ = (\uart_rx_inst|counter\(1) & (!\uart_rx_inst|Add0~1\)) # (!\uart_rx_inst|counter\(1) & ((\uart_rx_inst|Add0~1\) # (GND)))
-- \uart_rx_inst|Add0~3\ = CARRY((!\uart_rx_inst|Add0~1\) # (!\uart_rx_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(1),
	datad => VCC,
	cin => \uart_rx_inst|Add0~1\,
	combout => \uart_rx_inst|Add0~2_combout\,
	cout => \uart_rx_inst|Add0~3\);

-- Location: LCCOMB_X31_Y16_N16
\uart_rx_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~10_combout\ = (\uart_rx_inst|Add0~2_combout\ & (!\uart_rx_inst|counter[11]~3_combout\ & (\uart_rx_inst|state.IDLE~q\ & !\uart_rx_inst|counter[11]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~2_combout\,
	datab => \uart_rx_inst|counter[11]~3_combout\,
	datac => \uart_rx_inst|state.IDLE~q\,
	datad => \uart_rx_inst|counter[11]~2_combout\,
	combout => \uart_rx_inst|Add0~10_combout\);

-- Location: FF_X31_Y16_N17
\uart_rx_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(1));

-- Location: LCCOMB_X32_Y16_N4
\uart_rx_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~4_combout\ = (\uart_rx_inst|counter\(2) & (\uart_rx_inst|Add0~3\ $ (GND))) # (!\uart_rx_inst|counter\(2) & (!\uart_rx_inst|Add0~3\ & VCC))
-- \uart_rx_inst|Add0~5\ = CARRY((\uart_rx_inst|counter\(2) & !\uart_rx_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(2),
	datad => VCC,
	cin => \uart_rx_inst|Add0~3\,
	combout => \uart_rx_inst|Add0~4_combout\,
	cout => \uart_rx_inst|Add0~5\);

-- Location: LCCOMB_X31_Y16_N2
\uart_rx_inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~9_combout\ = (\uart_rx_inst|Add0~4_combout\ & (!\uart_rx_inst|counter[11]~3_combout\ & (\uart_rx_inst|state.IDLE~q\ & !\uart_rx_inst|counter[11]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~4_combout\,
	datab => \uart_rx_inst|counter[11]~3_combout\,
	datac => \uart_rx_inst|state.IDLE~q\,
	datad => \uart_rx_inst|counter[11]~2_combout\,
	combout => \uart_rx_inst|Add0~9_combout\);

-- Location: FF_X31_Y16_N3
\uart_rx_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(2));

-- Location: LCCOMB_X31_Y16_N12
\uart_rx_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add0~8_combout\ = (\uart_rx_inst|Add0~6_combout\ & (!\uart_rx_inst|counter[11]~3_combout\ & (\uart_rx_inst|state.IDLE~q\ & !\uart_rx_inst|counter[11]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Add0~6_combout\,
	datab => \uart_rx_inst|counter[11]~3_combout\,
	datac => \uart_rx_inst|state.IDLE~q\,
	datad => \uart_rx_inst|counter[11]~2_combout\,
	combout => \uart_rx_inst|Add0~8_combout\);

-- Location: FF_X31_Y16_N13
\uart_rx_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Add0~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|counter\(3));

-- Location: LCCOMB_X31_Y16_N8
\uart_rx_inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~2_combout\ = (\uart_rx_inst|counter\(3)) # ((\uart_rx_inst|counter\(1)) # ((\uart_rx_inst|counter\(2)) # (\uart_rx_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|counter\(3),
	datab => \uart_rx_inst|counter\(1),
	datac => \uart_rx_inst|counter\(2),
	datad => \uart_rx_inst|counter\(0),
	combout => \uart_rx_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X30_Y16_N6
\uart_rx_inst|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan3~4_combout\ = (\uart_rx_inst|LessThan3~2_combout\ & \uart_rx_inst|LessThan3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|LessThan3~2_combout\,
	datad => \uart_rx_inst|LessThan3~3_combout\,
	combout => \uart_rx_inst|LessThan3~4_combout\);

-- Location: LCCOMB_X30_Y16_N26
\uart_rx_inst|data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[0]~0_combout\ = (\rx~input_o\ & (\uart_rx_inst|state.STOP~q\ & ((\uart_rx_inst|LessThan3~4_combout\) # (\uart_rx_inst|LessThan3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan3~4_combout\,
	datab => \rx~input_o\,
	datac => \uart_rx_inst|state.STOP~q\,
	datad => \uart_rx_inst|LessThan3~6_combout\,
	combout => \uart_rx_inst|data_out[0]~0_combout\);

-- Location: LCCOMB_X30_Y16_N20
\uart_rx_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector0~0_combout\ = (\uart_rx_inst|data_out[0]~0_combout\) # ((\uart_rx_inst|valid~q\ & ((\uart_rx_inst|state.DATA~q\) # (!\uart_rx_inst|bit_index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|data_out[0]~0_combout\,
	datab => \uart_rx_inst|bit_index~0_combout\,
	datac => \uart_rx_inst|valid~q\,
	datad => \uart_rx_inst|state.DATA~q\,
	combout => \uart_rx_inst|Selector0~0_combout\);

-- Location: FF_X30_Y16_N21
\uart_rx_inst|valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|valid~q\);

-- Location: LCCOMB_X31_Y12_N28
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (write_ptr(0) & (write_ptr(1) & (!read_ptr(0) & write_ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(0),
	datab => write_ptr(1),
	datac => read_ptr(0),
	datad => write_ptr(2),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X31_Y12_N2
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!read_ptr(3) & (!read_ptr(4) & (!read_ptr(1) & !read_ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(3),
	datab => read_ptr(4),
	datac => read_ptr(1),
	datad => read_ptr(2),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X31_Y12_N18
\always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (!\comb~0_combout\) # (!\comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datad => \comb~0_combout\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X31_Y12_N12
\always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (\uart_rx_inst|valid~q\ & (((\always0~2_combout\) # (!write_ptr(3))) # (!write_ptr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|valid~q\,
	datab => write_ptr(4),
	datac => write_ptr(3),
	datad => \always0~2_combout\,
	combout => \always0~3_combout\);

-- Location: LCCOMB_X29_Y12_N18
\always0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = (\always0~3_combout\ & ((\always0~1_combout\) # ((\Add0~10_combout\) # (\always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \Add0~10_combout\,
	datac => \always0~5_combout\,
	datad => \always0~3_combout\,
	combout => \always0~6_combout\);

-- Location: FF_X30_Y12_N17
\write_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write_ptr[0]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_ptr(0));

-- Location: LCCOMB_X31_Y12_N22
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (write_ptr(0) & (read_ptr(0) & (write_ptr(1) $ (!read_ptr(1))))) # (!write_ptr(0) & (!read_ptr(0) & (write_ptr(1) $ (!read_ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(0),
	datab => write_ptr(1),
	datac => read_ptr(0),
	datad => read_ptr(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X31_Y12_N14
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (read_ptr(2) & (write_ptr(2) & (write_ptr(3) $ (!read_ptr(3))))) # (!read_ptr(2) & (!write_ptr(2) & (write_ptr(3) $ (!read_ptr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(2),
	datab => write_ptr(2),
	datac => write_ptr(3),
	datad => read_ptr(3),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y12_N6
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (write_ptr(4) $ (!read_ptr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => write_ptr(4),
	datac => \Equal2~1_combout\,
	datad => read_ptr(4),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X31_Y12_N4
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\trigger~q\) # ((\uart_tx_inst|busy~q\) # (\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~q\,
	datac => \uart_tx_inst|busy~q\,
	datad => \Equal2~2_combout\,
	combout => \always0~0_combout\);

-- Location: FF_X32_Y12_N25
\buffer~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~0feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~0_q\);

-- Location: LCCOMB_X30_Y17_N8
\uart_rx_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~1_combout\ = (!\uart_rx_inst|bit_index\(1) & !\uart_rx_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|bit_index\(0),
	combout => \uart_rx_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X29_Y17_N12
\uart_rx_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~0_combout\ = (\uart_rx_inst|state.DATA~q\ & (!\uart_rx_inst|bit_index\(2) & (!\uart_rx_inst|bit_index\(3) & \uart_rx_inst|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.DATA~q\,
	datab => \uart_rx_inst|bit_index\(2),
	datac => \uart_rx_inst|bit_index\(3),
	datad => \uart_rx_inst|LessThan3~7_combout\,
	combout => \uart_rx_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\uart_rx_inst|rx_shift[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[0]~0_combout\ = (\uart_rx_inst|Decoder0~1_combout\ & ((\uart_rx_inst|Decoder0~0_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~0_combout\ & ((\uart_rx_inst|rx_shift\(0)))))) # (!\uart_rx_inst|Decoder0~1_combout\ & 
-- (((\uart_rx_inst|rx_shift\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~1_combout\,
	datac => \uart_rx_inst|rx_shift\(0),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|rx_shift[0]~0_combout\);

-- Location: FF_X29_Y17_N21
\uart_rx_inst|rx_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(0));

-- Location: LCCOMB_X29_Y16_N6
\uart_rx_inst|data_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[0]~feeder_combout\ = \uart_rx_inst|rx_shift\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|rx_shift\(0),
	combout => \uart_rx_inst|data_out[0]~feeder_combout\);

-- Location: FF_X29_Y16_N7
\uart_rx_inst|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(0));

-- Location: LCCOMB_X30_Y12_N6
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (write_ptr(3) & (\comb~1_combout\ & (write_ptr(4) & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(3),
	datab => \comb~1_combout\,
	datac => write_ptr(4),
	datad => \comb~0_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X30_Y12_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\ & (write_ptr(0) & (write_ptr(1) $ (!\Add0~2_combout\)))) # (!\Add0~0_combout\ & (!write_ptr(0) & (write_ptr(1) $ (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => write_ptr(1),
	datac => \Add0~2_combout\,
	datad => write_ptr(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y11_N12
\buffer~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~13_combout\ = (!write_ptr(0) & (!write_ptr(1) & (!write_ptr(3) & !write_ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(0),
	datab => write_ptr(1),
	datac => write_ptr(3),
	datad => write_ptr(2),
	combout => \buffer~13_combout\);

-- Location: LCCOMB_X30_Y11_N2
\buffer~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~14_combout\ = (!write_ptr(4) & (\rst_n~input_o\ & (\uart_rx_inst|valid~q\ & \buffer~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(4),
	datab => \rst_n~input_o\,
	datac => \uart_rx_inst|valid~q\,
	datad => \buffer~13_combout\,
	combout => \buffer~14_combout\);

-- Location: LCCOMB_X29_Y12_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (write_ptr(2) & (\Add0~4_combout\ & (write_ptr(3) $ (!\Add0~6_combout\)))) # (!write_ptr(2) & (!\Add0~4_combout\ & (write_ptr(3) $ (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_ptr(2),
	datab => write_ptr(3),
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y12_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~10_combout\ & (\Equal0~1_combout\ & (\Add0~8_combout\ $ (!write_ptr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datac => write_ptr(4),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y12_N12
\buffer~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~15_combout\ = (!\comb~2_combout\ & (\buffer~14_combout\ & ((!\Equal0~2_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \buffer~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \buffer~15_combout\);

-- Location: FF_X30_Y12_N1
\buffer~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|data_out\(0),
	sload => VCC,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~1_q\);

-- Location: LCCOMB_X29_Y12_N16
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\rst_n~input_o\ & \always0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => \always0~6_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X31_Y12_N24
\always0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_wirecell_combout\ = !\always0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always0~0_combout\,
	combout => \always0~0_wirecell_combout\);

-- Location: LCCOMB_X28_Y12_N6
\read_ptr[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_ptr[0]~_wirecell_combout\ = !read_ptr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(0),
	combout => \read_ptr[0]~_wirecell_combout\);

-- Location: LCCOMB_X31_Y12_N30
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = read_ptr(0) $ (read_ptr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_ptr(0),
	datad => read_ptr(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = read_ptr(2) $ (((read_ptr(0) & read_ptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_ptr(2),
	datac => read_ptr(0),
	datad => read_ptr(1),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X31_Y12_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = read_ptr(4) $ (\Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_ptr(4),
	datad => \Add2~3_combout\,
	combout => \Add2~4_combout\);

-- Location: LCCOMB_X30_Y17_N28
\uart_rx_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~2_combout\ = (!\uart_rx_inst|bit_index\(1) & \uart_rx_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|bit_index\(0),
	combout => \uart_rx_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X29_Y17_N30
\uart_rx_inst|rx_shift[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[1]~1_combout\ = (\uart_rx_inst|Decoder0~2_combout\ & ((\uart_rx_inst|Decoder0~0_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~0_combout\ & ((\uart_rx_inst|rx_shift\(1)))))) # (!\uart_rx_inst|Decoder0~2_combout\ & 
-- (((\uart_rx_inst|rx_shift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~2_combout\,
	datac => \uart_rx_inst|rx_shift\(1),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|rx_shift[1]~1_combout\);

-- Location: FF_X29_Y17_N31
\uart_rx_inst|rx_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(1));

-- Location: LCCOMB_X29_Y16_N28
\uart_rx_inst|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[1]~feeder_combout\ = \uart_rx_inst|rx_shift\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|rx_shift\(1),
	combout => \uart_rx_inst|data_out[1]~feeder_combout\);

-- Location: FF_X29_Y16_N29
\uart_rx_inst|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(1));

-- Location: LCCOMB_X30_Y17_N22
\uart_rx_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~4_combout\ = (\uart_rx_inst|bit_index\(1) & !\uart_rx_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|bit_index\(0),
	combout => \uart_rx_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X29_Y17_N10
\uart_rx_inst|rx_shift[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[2]~2_combout\ = (\uart_rx_inst|Decoder0~4_combout\ & ((\uart_rx_inst|Decoder0~0_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~0_combout\ & ((\uart_rx_inst|rx_shift\(2)))))) # (!\uart_rx_inst|Decoder0~4_combout\ & 
-- (((\uart_rx_inst|rx_shift\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~4_combout\,
	datac => \uart_rx_inst|rx_shift\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|rx_shift[2]~2_combout\);

-- Location: FF_X29_Y17_N11
\uart_rx_inst|rx_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[2]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(2));

-- Location: LCCOMB_X29_Y16_N16
\uart_rx_inst|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[2]~feeder_combout\ = \uart_rx_inst|rx_shift\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|rx_shift\(2),
	combout => \uart_rx_inst|data_out[2]~feeder_combout\);

-- Location: FF_X29_Y16_N17
\uart_rx_inst|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(2));

-- Location: LCCOMB_X30_Y17_N16
\uart_rx_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Add1~0_combout\ = (\uart_rx_inst|bit_index\(1) & \uart_rx_inst|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|bit_index\(1),
	datad => \uart_rx_inst|bit_index\(0),
	combout => \uart_rx_inst|Add1~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\uart_rx_inst|rx_shift[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[3]~3_combout\ = (\uart_rx_inst|Add1~0_combout\ & ((\uart_rx_inst|Decoder0~0_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~0_combout\ & ((\uart_rx_inst|rx_shift\(3)))))) # (!\uart_rx_inst|Add1~0_combout\ & 
-- (((\uart_rx_inst|rx_shift\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Add1~0_combout\,
	datac => \uart_rx_inst|rx_shift\(3),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|rx_shift[3]~3_combout\);

-- Location: FF_X29_Y17_N29
\uart_rx_inst|rx_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[3]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(3));

-- Location: FF_X30_Y16_N11
\uart_rx_inst|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|rx_shift\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(3));

-- Location: LCCOMB_X29_Y17_N18
\uart_rx_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~5_combout\ = (\uart_rx_inst|state.DATA~q\ & (\uart_rx_inst|bit_index\(2) & (!\uart_rx_inst|bit_index\(3) & \uart_rx_inst|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|state.DATA~q\,
	datab => \uart_rx_inst|bit_index\(2),
	datac => \uart_rx_inst|bit_index\(3),
	datad => \uart_rx_inst|LessThan3~7_combout\,
	combout => \uart_rx_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X29_Y17_N26
\uart_rx_inst|rx_shift[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[4]~4_combout\ = (\uart_rx_inst|Decoder0~1_combout\ & ((\uart_rx_inst|Decoder0~5_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~5_combout\ & ((\uart_rx_inst|rx_shift\(4)))))) # (!\uart_rx_inst|Decoder0~1_combout\ & 
-- (((\uart_rx_inst|rx_shift\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~1_combout\,
	datac => \uart_rx_inst|rx_shift\(4),
	datad => \uart_rx_inst|Decoder0~5_combout\,
	combout => \uart_rx_inst|rx_shift[4]~4_combout\);

-- Location: FF_X29_Y17_N27
\uart_rx_inst|rx_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[4]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(4));

-- Location: LCCOMB_X29_Y16_N10
\uart_rx_inst|data_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[4]~feeder_combout\ = \uart_rx_inst|rx_shift\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|rx_shift\(4),
	combout => \uart_rx_inst|data_out[4]~feeder_combout\);

-- Location: FF_X29_Y16_N11
\uart_rx_inst|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[4]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(4));

-- Location: LCCOMB_X29_Y17_N4
\uart_rx_inst|rx_shift[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[5]~5_combout\ = (\uart_rx_inst|Decoder0~2_combout\ & ((\uart_rx_inst|Decoder0~5_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~5_combout\ & ((\uart_rx_inst|rx_shift\(5)))))) # (!\uart_rx_inst|Decoder0~2_combout\ & 
-- (((\uart_rx_inst|rx_shift\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~2_combout\,
	datac => \uart_rx_inst|rx_shift\(5),
	datad => \uart_rx_inst|Decoder0~5_combout\,
	combout => \uart_rx_inst|rx_shift[5]~5_combout\);

-- Location: FF_X29_Y17_N5
\uart_rx_inst|rx_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[5]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(5));

-- Location: LCCOMB_X29_Y16_N12
\uart_rx_inst|data_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[5]~feeder_combout\ = \uart_rx_inst|rx_shift\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|rx_shift\(5),
	combout => \uart_rx_inst|data_out[5]~feeder_combout\);

-- Location: FF_X29_Y16_N13
\uart_rx_inst|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[5]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(5));

-- Location: LCCOMB_X29_Y17_N24
\uart_rx_inst|rx_shift[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[6]~6_combout\ = (\uart_rx_inst|Decoder0~4_combout\ & ((\uart_rx_inst|Decoder0~5_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~5_combout\ & ((\uart_rx_inst|rx_shift\(6)))))) # (!\uart_rx_inst|Decoder0~4_combout\ & 
-- (((\uart_rx_inst|rx_shift\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Decoder0~4_combout\,
	datac => \uart_rx_inst|rx_shift\(6),
	datad => \uart_rx_inst|Decoder0~5_combout\,
	combout => \uart_rx_inst|rx_shift[6]~6_combout\);

-- Location: FF_X29_Y17_N25
\uart_rx_inst|rx_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[6]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(6));

-- Location: LCCOMB_X29_Y16_N22
\uart_rx_inst|data_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|data_out[6]~feeder_combout\ = \uart_rx_inst|rx_shift\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|rx_shift\(6),
	combout => \uart_rx_inst|data_out[6]~feeder_combout\);

-- Location: FF_X29_Y16_N23
\uart_rx_inst|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|data_out[6]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(6));

-- Location: LCCOMB_X29_Y17_N22
\uart_rx_inst|rx_shift[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx_inst|rx_shift[7]~7_combout\ = (\uart_rx_inst|Add1~0_combout\ & ((\uart_rx_inst|Decoder0~5_combout\ & (\rx~input_o\)) # (!\uart_rx_inst|Decoder0~5_combout\ & ((\uart_rx_inst|rx_shift\(7)))))) # (!\uart_rx_inst|Add1~0_combout\ & 
-- (((\uart_rx_inst|rx_shift\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart_rx_inst|Add1~0_combout\,
	datac => \uart_rx_inst|rx_shift\(7),
	datad => \uart_rx_inst|Decoder0~5_combout\,
	combout => \uart_rx_inst|rx_shift[7]~7_combout\);

-- Location: FF_X29_Y17_N23
\uart_rx_inst|rx_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|rx_shift[7]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|rx_shift\(7));

-- Location: FF_X30_Y16_N7
\uart_rx_inst|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|rx_shift\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_rx_inst|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|data_out\(7));

-- Location: M9K_X27_Y12_N0
\buffer_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:buffer_rtl_0|altsyncram_r8i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \comb~3_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_always0~0_wirecell_combout\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \buffer_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \buffer_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \buffer_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \buffer_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y12_N6
\tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[0]~0_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\buffer~0_q\ & (\buffer~1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~1_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \tx_data[0]~0_combout\);

-- Location: LCCOMB_X26_Y12_N26
\buffer_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[11]~feeder_combout\ = \uart_rx_inst|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|data_out\(0),
	combout => \buffer_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X26_Y12_N27
\buffer_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(11));

-- Location: LCCOMB_X30_Y11_N10
\buffer_rtl_0_bypass[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[2]~0_combout\ = !read_ptr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_ptr(0),
	combout => \buffer_rtl_0_bypass[2]~0_combout\);

-- Location: FF_X30_Y11_N11
\buffer_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[2]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(2));

-- Location: LCCOMB_X30_Y11_N28
\buffer_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[3]~feeder_combout\ = write_ptr(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => write_ptr(1),
	combout => \buffer_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X30_Y11_N29
\buffer_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(3));

-- Location: FF_X30_Y11_N19
\buffer_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => write_ptr(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(1));

-- Location: FF_X31_Y12_N31
\buffer_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(4));

-- Location: LCCOMB_X30_Y11_N18
\buffer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~9_combout\ = (buffer_rtl_0_bypass(2) & (buffer_rtl_0_bypass(1) & (buffer_rtl_0_bypass(3) $ (!buffer_rtl_0_bypass(4))))) # (!buffer_rtl_0_bypass(2) & (!buffer_rtl_0_bypass(1) & (buffer_rtl_0_bypass(3) $ (!buffer_rtl_0_bypass(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_rtl_0_bypass(2),
	datab => buffer_rtl_0_bypass(3),
	datac => buffer_rtl_0_bypass(1),
	datad => buffer_rtl_0_bypass(4),
	combout => \buffer~9_combout\);

-- Location: FF_X31_Y12_N27
\buffer_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(6));

-- Location: FF_X31_Y12_N15
\buffer_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => write_ptr(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(7));

-- Location: FF_X31_Y12_N1
\buffer_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => write_ptr(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(5));

-- Location: FF_X31_Y12_N25
\buffer_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(8));

-- Location: LCCOMB_X31_Y12_N0
\buffer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~10_combout\ = (buffer_rtl_0_bypass(6) & (buffer_rtl_0_bypass(5) & (buffer_rtl_0_bypass(7) $ (!buffer_rtl_0_bypass(8))))) # (!buffer_rtl_0_bypass(6) & (!buffer_rtl_0_bypass(5) & (buffer_rtl_0_bypass(7) $ (!buffer_rtl_0_bypass(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_rtl_0_bypass(6),
	datab => buffer_rtl_0_bypass(7),
	datac => buffer_rtl_0_bypass(5),
	datad => buffer_rtl_0_bypass(8),
	combout => \buffer~10_combout\);

-- Location: FF_X31_Y12_N21
\buffer_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(10));

-- Location: FF_X29_Y12_N25
\buffer_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => write_ptr(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(9));

-- Location: FF_X29_Y12_N3
\buffer_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(0));

-- Location: LCCOMB_X30_Y12_N0
\buffer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~11_combout\ = (buffer_rtl_0_bypass(0) & (buffer_rtl_0_bypass(10) $ (!buffer_rtl_0_bypass(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_rtl_0_bypass(10),
	datab => buffer_rtl_0_bypass(9),
	datad => buffer_rtl_0_bypass(0),
	combout => \buffer~11_combout\);

-- Location: LCCOMB_X26_Y12_N24
\buffer~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~12_combout\ = (\buffer~9_combout\ & (\buffer~10_combout\ & \buffer~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buffer~9_combout\,
	datac => \buffer~10_combout\,
	datad => \buffer~11_combout\,
	combout => \buffer~12_combout\);

-- Location: LCCOMB_X26_Y12_N28
\tx_data[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[0]~8_combout\ = (!\trigger~q\ & (\rst_n~input_o\ & (!\Equal2~2_combout\ & !\uart_tx_inst|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger~q\,
	datab => \rst_n~input_o\,
	datac => \Equal2~2_combout\,
	datad => \uart_tx_inst|busy~q\,
	combout => \tx_data[0]~8_combout\);

-- Location: FF_X26_Y12_N7
\tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[0]~0_combout\,
	asdata => buffer_rtl_0_bypass(11),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(0));

-- Location: LCCOMB_X30_Y12_N14
\buffer~2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~2feeder_combout\ = \uart_rx_inst|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(1),
	combout => \buffer~2feeder_combout\);

-- Location: FF_X30_Y12_N15
\buffer~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~2feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~2_q\);

-- Location: LCCOMB_X26_Y12_N18
\tx_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[1]~1_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a1\))) # (!\buffer~0_q\ & (\buffer~2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~2_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a1\,
	combout => \tx_data[1]~1_combout\);

-- Location: LCCOMB_X29_Y16_N24
\buffer_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[12]~feeder_combout\ = \uart_rx_inst|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(1),
	combout => \buffer_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X29_Y16_N25
\buffer_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(12));

-- Location: FF_X26_Y12_N19
\tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[1]~1_combout\,
	asdata => buffer_rtl_0_bypass(12),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(1));

-- Location: LCCOMB_X30_Y12_N28
\buffer~4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~4feeder_combout\ = \uart_rx_inst|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|data_out\(3),
	combout => \buffer~4feeder_combout\);

-- Location: FF_X30_Y12_N29
\buffer~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~4feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~4_q\);

-- Location: LCCOMB_X26_Y12_N10
\tx_data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[3]~3_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a3\))) # (!\buffer~0_q\ & (\buffer~4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~4_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a3\,
	combout => \tx_data[3]~3_combout\);

-- Location: LCCOMB_X26_Y12_N8
\buffer_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[14]~feeder_combout\ = \uart_rx_inst|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(3),
	combout => \buffer_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X26_Y12_N9
\buffer_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(14));

-- Location: FF_X26_Y12_N11
\tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[3]~3_combout\,
	asdata => buffer_rtl_0_bypass(14),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(3));

-- Location: LCCOMB_X30_Y12_N2
\buffer~6feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~6feeder_combout\ = \uart_rx_inst|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(5),
	combout => \buffer~6feeder_combout\);

-- Location: FF_X30_Y12_N3
\buffer~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~6feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~6_q\);

-- Location: LCCOMB_X26_Y12_N0
\tx_data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[5]~5_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a5\))) # (!\buffer~0_q\ & (\buffer~6_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~6_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a5\,
	combout => \tx_data[5]~5_combout\);

-- Location: LCCOMB_X26_Y12_N14
\buffer_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[16]~feeder_combout\ = \uart_rx_inst|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|data_out\(5),
	combout => \buffer_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X26_Y12_N15
\buffer_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(16));

-- Location: FF_X26_Y12_N1
\tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[5]~5_combout\,
	asdata => buffer_rtl_0_bypass(16),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(5));

-- Location: LCCOMB_X30_Y12_N4
\buffer~7feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~7feeder_combout\ = \uart_rx_inst|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(6),
	combout => \buffer~7feeder_combout\);

-- Location: FF_X30_Y12_N5
\buffer~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~7feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~7_q\);

-- Location: LCCOMB_X26_Y12_N20
\tx_data[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[6]~6_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a6\))) # (!\buffer~0_q\ & (\buffer~7_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~7_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a6\,
	combout => \tx_data[6]~6_combout\);

-- Location: LCCOMB_X26_Y12_N22
\buffer_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[17]~feeder_combout\ = \uart_rx_inst|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(6),
	combout => \buffer_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X26_Y12_N23
\buffer_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(17));

-- Location: FF_X26_Y12_N21
\tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[6]~6_combout\,
	asdata => buffer_rtl_0_bypass(17),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(6));

-- Location: LCCOMB_X30_Y12_N10
\buffer~8feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~8feeder_combout\ = \uart_rx_inst|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|data_out\(7),
	combout => \buffer~8feeder_combout\);

-- Location: FF_X30_Y12_N11
\buffer~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~8feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~8_q\);

-- Location: LCCOMB_X26_Y12_N12
\tx_data[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[7]~7_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a7\))) # (!\buffer~0_q\ & (\buffer~8_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~8_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a7\,
	combout => \tx_data[7]~7_combout\);

-- Location: FF_X28_Y12_N7
\buffer_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|data_out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(18));

-- Location: FF_X26_Y12_N13
\tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[7]~7_combout\,
	asdata => buffer_rtl_0_bypass(18),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(7));

-- Location: LCCOMB_X28_Y12_N22
\uart_tx_inst|tx_shift[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift[7]~3_combout\ = (\rst_n~input_o\ & ((\uart_tx_inst|state.STATE_DATA~q\) # (!\uart_tx_inst|state.STATE_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \uart_tx_inst|state.STATE_IDLE~q\,
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|tx_shift[7]~3_combout\);

-- Location: LCCOMB_X28_Y12_N16
\uart_tx_inst|tx_shift[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift[7]~4_combout\ = (\uart_tx_inst|tx_shift[7]~3_combout\ & ((\uart_tx_inst|state.STATE_IDLE~q\ & ((\uart_tx_inst|LessThan0~3_combout\))) # (!\uart_tx_inst|state.STATE_IDLE~q\ & (\trigger~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger~q\,
	datab => \uart_tx_inst|state.STATE_IDLE~q\,
	datac => \uart_tx_inst|tx_shift[7]~3_combout\,
	datad => \uart_tx_inst|LessThan0~3_combout\,
	combout => \uart_tx_inst|tx_shift[7]~4_combout\);

-- Location: LCCOMB_X28_Y12_N12
\uart_tx_inst|tx_shift[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift[7]~5_combout\ = (\uart_tx_inst|tx_shift[7]~4_combout\ & (tx_data(7) & (!\uart_tx_inst|state.STATE_IDLE~q\))) # (!\uart_tx_inst|tx_shift[7]~4_combout\ & (((\uart_tx_inst|tx_shift\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(7),
	datab => \uart_tx_inst|state.STATE_IDLE~q\,
	datac => \uart_tx_inst|tx_shift\(7),
	datad => \uart_tx_inst|tx_shift[7]~4_combout\,
	combout => \uart_tx_inst|tx_shift[7]~5_combout\);

-- Location: FF_X28_Y12_N13
\uart_tx_inst|tx_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|tx_shift[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(7));

-- Location: LCCOMB_X28_Y12_N14
\uart_tx_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector19~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|tx_shift\(7)))) # (!\uart_tx_inst|state.STATE_DATA~q\ & (tx_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_data(6),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|tx_shift\(7),
	combout => \uart_tx_inst|Selector19~0_combout\);

-- Location: LCCOMB_X28_Y12_N2
\uart_tx_inst|tx_shift[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift[0]~1_combout\ = (\rst_n~input_o\ & (((\uart_tx_inst|state.STATE_DATA~q\ & \uart_tx_inst|LessThan0~3_combout\)) # (!\uart_tx_inst|tx_shift[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \uart_tx_inst|tx_shift[0]~0_combout\,
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|LessThan0~3_combout\,
	combout => \uart_tx_inst|tx_shift[0]~1_combout\);

-- Location: FF_X28_Y12_N15
\uart_tx_inst|tx_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector19~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(6));

-- Location: LCCOMB_X28_Y12_N20
\uart_tx_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector20~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|tx_shift\(6)))) # (!\uart_tx_inst|state.STATE_DATA~q\ & (tx_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(5),
	datab => \uart_tx_inst|tx_shift\(6),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|Selector20~0_combout\);

-- Location: FF_X28_Y12_N21
\uart_tx_inst|tx_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector20~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(5));

-- Location: LCCOMB_X30_Y12_N26
\buffer~5feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer~5feeder_combout\ = \uart_rx_inst|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(4),
	combout => \buffer~5feeder_combout\);

-- Location: FF_X30_Y12_N27
\buffer~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer~5feeder_combout\,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~5_q\);

-- Location: LCCOMB_X26_Y12_N16
\tx_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[4]~4_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a4\))) # (!\buffer~0_q\ & (\buffer~5_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~5_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a4\,
	combout => \tx_data[4]~4_combout\);

-- Location: LCCOMB_X26_Y12_N30
\buffer_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[15]~feeder_combout\ = \uart_rx_inst|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_inst|data_out\(4),
	combout => \buffer_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X26_Y12_N31
\buffer_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(15));

-- Location: FF_X26_Y12_N17
\tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[4]~4_combout\,
	asdata => buffer_rtl_0_bypass(15),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(4));

-- Location: LCCOMB_X28_Y12_N10
\uart_tx_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector21~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & (\uart_tx_inst|tx_shift\(5))) # (!\uart_tx_inst|state.STATE_DATA~q\ & ((tx_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|tx_shift\(5),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => tx_data(4),
	combout => \uart_tx_inst|Selector21~0_combout\);

-- Location: FF_X28_Y12_N11
\uart_tx_inst|tx_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector21~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(4));

-- Location: LCCOMB_X28_Y12_N26
\uart_tx_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|tx_shift\(4)))) # (!\uart_tx_inst|state.STATE_DATA~q\ & (tx_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(3),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|tx_shift\(4),
	combout => \uart_tx_inst|Selector22~0_combout\);

-- Location: FF_X28_Y12_N27
\uart_tx_inst|tx_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector22~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(3));

-- Location: FF_X30_Y12_N31
\buffer~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|data_out\(2),
	sload => VCC,
	ena => \buffer~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer~3_q\);

-- Location: LCCOMB_X26_Y12_N2
\tx_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[2]~2_combout\ = (\buffer~0_q\ & ((\buffer_rtl_0|auto_generated|ram_block1a2\))) # (!\buffer~0_q\ & (\buffer~3_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffer~0_q\,
	datab => \buffer~3_q\,
	datad => \buffer_rtl_0|auto_generated|ram_block1a2\,
	combout => \tx_data[2]~2_combout\);

-- Location: LCCOMB_X26_Y12_N4
\buffer_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buffer_rtl_0_bypass[13]~feeder_combout\ = \uart_rx_inst|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|data_out\(2),
	combout => \buffer_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X26_Y12_N5
\buffer_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buffer_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffer_rtl_0_bypass(13));

-- Location: FF_X26_Y12_N3
\tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_data[2]~2_combout\,
	asdata => buffer_rtl_0_bypass(13),
	sload => \buffer~12_combout\,
	ena => \tx_data[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(2));

-- Location: LCCOMB_X28_Y12_N28
\uart_tx_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector23~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & (\uart_tx_inst|tx_shift\(3))) # (!\uart_tx_inst|state.STATE_DATA~q\ & ((tx_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|tx_shift\(3),
	datab => tx_data(2),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	combout => \uart_tx_inst|Selector23~0_combout\);

-- Location: FF_X28_Y12_N29
\uart_tx_inst|tx_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector23~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(2));

-- Location: LCCOMB_X28_Y12_N18
\uart_tx_inst|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector24~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|tx_shift\(2)))) # (!\uart_tx_inst|state.STATE_DATA~q\ & (tx_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_data(1),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|tx_shift\(2),
	combout => \uart_tx_inst|Selector24~0_combout\);

-- Location: FF_X28_Y12_N19
\uart_tx_inst|tx_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector24~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(1));

-- Location: LCCOMB_X28_Y12_N30
\uart_tx_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector25~0_combout\ = (\uart_tx_inst|state.STATE_DATA~q\ & ((\uart_tx_inst|tx_shift\(1)))) # (!\uart_tx_inst|state.STATE_DATA~q\ & (tx_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_data(0),
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|tx_shift\(1),
	combout => \uart_tx_inst|Selector25~0_combout\);

-- Location: FF_X28_Y12_N31
\uart_tx_inst|tx_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector25~0_combout\,
	ena => \uart_tx_inst|tx_shift[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift\(0));

-- Location: LCCOMB_X28_Y12_N24
\uart_tx_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector0~0_combout\ = (\uart_tx_inst|state.STATE_IDLE~q\ & (!\uart_tx_inst|state.STATE_STOP~q\ & ((!\uart_tx_inst|state.STATE_DATA~q\) # (!\uart_tx_inst|tx_shift\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|tx_shift\(0),
	datab => \uart_tx_inst|state.STATE_IDLE~q\,
	datac => \uart_tx_inst|state.STATE_DATA~q\,
	datad => \uart_tx_inst|state.STATE_STOP~q\,
	combout => \uart_tx_inst|Selector0~0_combout\);

-- Location: FF_X28_Y12_N25
\uart_tx_inst|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx~q\);

ww_tx <= \tx~output_o\;
END structure;


