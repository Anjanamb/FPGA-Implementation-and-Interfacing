-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "01/18/2023 11:22:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Level IS
    PORT (
	clk_in : IN std_logic;
	count : BUFFER std_logic_vector(7 DOWNTO 0);
	address_out : BUFFER std_logic_vector(15 DOWNTO 0);
	out_val : BUFFER std_logic_vector(7 DOWNTO 0);
	clkout : BUFFER std_logic;
	wren_out : BUFFER std_logic;
	Tx_bit : BUFFER std_logic;
	TxBusy : BUFFER std_logic;
	state_out : BUFFER std_logic_vector(1 DOWNTO 0);
	Clock_trans : BUFFER std_logic;
	test_out_pin : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Top_Level;

-- Design Ports Information
-- count[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkout	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_out	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxBusy	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_trans	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[14]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_count : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_val : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clkout : std_logic;
SIGNAL ww_wren_out : std_logic;
SIGNAL ww_Tx_bit : std_logic;
SIGNAL ww_TxBusy : std_logic;
SIGNAL ww_state_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clock_trans : std_logic;
SIGNAL ww_test_out_pin : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \count[6]~output_o\ : std_logic;
SIGNAL \count[7]~output_o\ : std_logic;
SIGNAL \address_out[0]~output_o\ : std_logic;
SIGNAL \address_out[1]~output_o\ : std_logic;
SIGNAL \address_out[2]~output_o\ : std_logic;
SIGNAL \address_out[3]~output_o\ : std_logic;
SIGNAL \address_out[4]~output_o\ : std_logic;
SIGNAL \address_out[5]~output_o\ : std_logic;
SIGNAL \address_out[6]~output_o\ : std_logic;
SIGNAL \address_out[7]~output_o\ : std_logic;
SIGNAL \address_out[8]~output_o\ : std_logic;
SIGNAL \address_out[9]~output_o\ : std_logic;
SIGNAL \address_out[10]~output_o\ : std_logic;
SIGNAL \address_out[11]~output_o\ : std_logic;
SIGNAL \address_out[12]~output_o\ : std_logic;
SIGNAL \address_out[13]~output_o\ : std_logic;
SIGNAL \address_out[14]~output_o\ : std_logic;
SIGNAL \address_out[15]~output_o\ : std_logic;
SIGNAL \out_val[0]~output_o\ : std_logic;
SIGNAL \out_val[1]~output_o\ : std_logic;
SIGNAL \out_val[2]~output_o\ : std_logic;
SIGNAL \out_val[3]~output_o\ : std_logic;
SIGNAL \out_val[4]~output_o\ : std_logic;
SIGNAL \out_val[5]~output_o\ : std_logic;
SIGNAL \out_val[6]~output_o\ : std_logic;
SIGNAL \out_val[7]~output_o\ : std_logic;
SIGNAL \clkout~output_o\ : std_logic;
SIGNAL \wren_out~output_o\ : std_logic;
SIGNAL \Tx_bit~output_o\ : std_logic;
SIGNAL \TxBusy~output_o\ : std_logic;
SIGNAL \state_out[0]~output_o\ : std_logic;
SIGNAL \state_out[1]~output_o\ : std_logic;
SIGNAL \Clock_trans~output_o\ : std_logic;
SIGNAL \test_out_pin[0]~output_o\ : std_logic;
SIGNAL \test_out_pin[1]~output_o\ : std_logic;
SIGNAL \test_out_pin[2]~output_o\ : std_logic;
SIGNAL \test_out_pin[3]~output_o\ : std_logic;
SIGNAL \test_out_pin[4]~output_o\ : std_logic;
SIGNAL \test_out_pin[5]~output_o\ : std_logic;
SIGNAL \test_out_pin[6]~output_o\ : std_logic;
SIGNAL \test_out_pin[7]~output_o\ : std_logic;
SIGNAL \test_out_pin[8]~output_o\ : std_logic;
SIGNAL \test_out_pin[9]~output_o\ : std_logic;
SIGNAL \test_out_pin[10]~output_o\ : std_logic;
SIGNAL \test_out_pin[11]~output_o\ : std_logic;
SIGNAL \test_out_pin[12]~output_o\ : std_logic;
SIGNAL \test_out_pin[13]~output_o\ : std_logic;
SIGNAL \test_out_pin[14]~output_o\ : std_logic;
SIGNAL \test_out_pin[15]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter_8bit|counter_up[1]~8_combout\ : std_logic;
SIGNAL \Counter_8bit|LessThan0~0_combout\ : std_logic;
SIGNAL \Counter_8bit|LessThan0~2_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[1]~9\ : std_logic;
SIGNAL \Counter_8bit|counter_up[2]~10_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[2]~11\ : std_logic;
SIGNAL \Counter_8bit|counter_up[3]~12_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[3]~13\ : std_logic;
SIGNAL \Counter_8bit|counter_up[4]~14_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[4]~15\ : std_logic;
SIGNAL \Counter_8bit|counter_up[5]~16_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[5]~17\ : std_logic;
SIGNAL \Counter_8bit|counter_up[6]~18_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[6]~19\ : std_logic;
SIGNAL \Counter_8bit|counter_up[7]~20_combout\ : std_logic;
SIGNAL \Counter_8bit|LessThan0~1_combout\ : std_logic;
SIGNAL \Counter_8bit|counter_up[0]~7_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[0]~16_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~0_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~0_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~1\ : std_logic;
SIGNAL \Baud_Rate|Add0~2_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~2_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~3\ : std_logic;
SIGNAL \Baud_Rate|Add0~4_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~5\ : std_logic;
SIGNAL \Baud_Rate|Add0~6_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~7\ : std_logic;
SIGNAL \Baud_Rate|Add0~9\ : std_logic;
SIGNAL \Baud_Rate|Add0~10_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~3_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~11\ : std_logic;
SIGNAL \Baud_Rate|Add0~12_combout\ : std_logic;
SIGNAL \Baud_Rate|Equal0~0_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~8_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~1_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~13\ : std_logic;
SIGNAL \Baud_Rate|Add0~14_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~4_combout\ : std_logic;
SIGNAL \Baud_Rate|Equal1~0_combout\ : std_logic;
SIGNAL \Baud_Rate|Add0~15\ : std_logic;
SIGNAL \Baud_Rate|Add0~16_combout\ : std_logic;
SIGNAL \Baud_Rate|tx_acc~5_combout\ : std_logic;
SIGNAL \Baud_Rate|Equal0~1_combout\ : std_logic;
SIGNAL \Transmitter|test[0]~15_combout\ : std_logic;
SIGNAL \Counter_8bit|wren_reg~0_combout\ : std_logic;
SIGNAL \Counter_8bit|wren_reg~q\ : std_logic;
SIGNAL \Transmitter|Selector3~1_combout\ : std_logic;
SIGNAL \Transmitter|bit_pos[2]~0_combout\ : std_logic;
SIGNAL \Transmitter|bit_pos[2]~3_combout\ : std_logic;
SIGNAL \Baud_Rate|Equal0~2_combout\ : std_logic;
SIGNAL \Transmitter|test[0]~16_combout\ : std_logic;
SIGNAL \Transmitter|Selector3~2_combout\ : std_logic;
SIGNAL \Transmitter|state.TX_STATE_STOP~q\ : std_logic;
SIGNAL \Transmitter|Selector0~0_combout\ : std_logic;
SIGNAL \Transmitter|state.TX_STATE_IDLE~q\ : std_logic;
SIGNAL \Transmitter|bit_pos[0]~2_combout\ : std_logic;
SIGNAL \Transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \Transmitter|Selector2~2_combout\ : std_logic;
SIGNAL \Transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \Transmitter|state.TX_STATE_START~q\ : std_logic;
SIGNAL \Transmitter|Selector2~3_combout\ : std_logic;
SIGNAL \Transmitter|state.TX_STATE_DATA~q\ : std_logic;
SIGNAL \Transmitter|bit_pos[1]~1_combout\ : std_logic;
SIGNAL \Transmitter|Equal0~0_combout\ : std_logic;
SIGNAL \Transmitter|test[0]~17_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[0]~17\ : std_logic;
SIGNAL \Counter_8bit|address_reg[1]~18_combout\ : std_logic;
SIGNAL \Transmitter|test[1]~18_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[1]~19\ : std_logic;
SIGNAL \Counter_8bit|address_reg[2]~20_combout\ : std_logic;
SIGNAL \Transmitter|test[1]~19\ : std_logic;
SIGNAL \Transmitter|test[2]~20_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[2]~21\ : std_logic;
SIGNAL \Counter_8bit|address_reg[3]~22_combout\ : std_logic;
SIGNAL \Transmitter|test[2]~21\ : std_logic;
SIGNAL \Transmitter|test[3]~22_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[3]~23\ : std_logic;
SIGNAL \Counter_8bit|address_reg[4]~24_combout\ : std_logic;
SIGNAL \Transmitter|test[3]~23\ : std_logic;
SIGNAL \Transmitter|test[4]~24_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[4]~25\ : std_logic;
SIGNAL \Counter_8bit|address_reg[5]~26_combout\ : std_logic;
SIGNAL \Transmitter|test[4]~25\ : std_logic;
SIGNAL \Transmitter|test[5]~26_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[5]~27\ : std_logic;
SIGNAL \Counter_8bit|address_reg[6]~28_combout\ : std_logic;
SIGNAL \Transmitter|test[5]~27\ : std_logic;
SIGNAL \Transmitter|test[6]~28_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[6]~29\ : std_logic;
SIGNAL \Counter_8bit|address_reg[7]~30_combout\ : std_logic;
SIGNAL \Transmitter|test[6]~29\ : std_logic;
SIGNAL \Transmitter|test[7]~30_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[7]~31\ : std_logic;
SIGNAL \Counter_8bit|address_reg[8]~32_combout\ : std_logic;
SIGNAL \Transmitter|test[7]~31\ : std_logic;
SIGNAL \Transmitter|test[8]~32_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[8]~33\ : std_logic;
SIGNAL \Counter_8bit|address_reg[9]~34_combout\ : std_logic;
SIGNAL \Transmitter|test[8]~33\ : std_logic;
SIGNAL \Transmitter|test[9]~34_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[9]~35\ : std_logic;
SIGNAL \Counter_8bit|address_reg[10]~36_combout\ : std_logic;
SIGNAL \Transmitter|test[9]~35\ : std_logic;
SIGNAL \Transmitter|test[10]~36_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[10]~37\ : std_logic;
SIGNAL \Counter_8bit|address_reg[11]~38_combout\ : std_logic;
SIGNAL \Transmitter|test[10]~37\ : std_logic;
SIGNAL \Transmitter|test[11]~38_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[11]~39\ : std_logic;
SIGNAL \Counter_8bit|address_reg[12]~40_combout\ : std_logic;
SIGNAL \Transmitter|test[11]~39\ : std_logic;
SIGNAL \Transmitter|test[12]~40_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[12]~41\ : std_logic;
SIGNAL \Counter_8bit|address_reg[13]~42_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Transmitter|test[12]~41\ : std_logic;
SIGNAL \Transmitter|test[13]~42_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[13]~43\ : std_logic;
SIGNAL \Counter_8bit|address_reg[14]~44_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[14]~feeder_combout\ : std_logic;
SIGNAL \Transmitter|test[13]~43\ : std_logic;
SIGNAL \Transmitter|test[14]~44_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[14]~45\ : std_logic;
SIGNAL \Counter_8bit|address_reg[15]~46_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[15]~feeder_combout\ : std_logic;
SIGNAL \Transmitter|test[14]~45\ : std_logic;
SIGNAL \Transmitter|test[15]~46_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \Transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \Transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \Transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \Transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \Transmitter|Selector7~2_combout\ : std_logic;
SIGNAL \Transmitter|Selector7~0_combout\ : std_logic;
SIGNAL \Transmitter|Selector7~1_combout\ : std_logic;
SIGNAL \Transmitter|Selector7~3_combout\ : std_logic;
SIGNAL \Transmitter|Tx~q\ : std_logic;
SIGNAL \Transmitter|state_out~2_combout\ : std_logic;
SIGNAL \Transmitter|state_out~3_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Counter_8bit|counter_up\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Transmitter|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Counter_8bit|address_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Transmitter|test\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Baud_Rate|tx_acc\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Transmitter|bit_pos\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter_8bit|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Transmitter|ALT_INV_state_out~3_combout\ : std_logic;
SIGNAL \Transmitter|ALT_INV_state_out~2_combout\ : std_logic;
SIGNAL \Transmitter|ALT_INV_Tx~q\ : std_logic;
SIGNAL \Counter_8bit|ALT_INV_wren_reg~q\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
count <= ww_count;
address_out <= ww_address_out;
out_val <= ww_out_val;
clkout <= ww_clkout;
wren_out <= ww_wren_out;
Tx_bit <= ww_Tx_bit;
TxBusy <= ww_TxBusy;
state_out <= ww_state_out;
Clock_trans <= ww_Clock_trans;
test_out_pin <= ww_test_out_pin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(1);

\DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(2);

\DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(3);

\DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(4);

\DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(5);

\DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(6);

\DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \Counter_8bit|counter_up\(7);

\DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\Counter_8bit|address_reg\(12) & \Counter_8bit|address_reg\(11) & \Counter_8bit|address_reg\(10) & \Counter_8bit|address_reg\(9) & \Counter_8bit|address_reg\(8) & 
\Counter_8bit|address_reg\(7) & \Counter_8bit|address_reg\(6) & \Counter_8bit|address_reg\(5) & \Counter_8bit|address_reg\(4) & \Counter_8bit|address_reg\(3) & \Counter_8bit|address_reg\(2) & \Counter_8bit|address_reg\(1) & 
\Counter_8bit|address_reg\(0));

\DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ALT_INV_clk_in~inputclkctrl_outclk\ <= NOT \clk_in~inputclkctrl_outclk\;
\Counter_8bit|ALT_INV_LessThan0~2_combout\ <= NOT \Counter_8bit|LessThan0~2_combout\;
\Transmitter|ALT_INV_state_out~3_combout\ <= NOT \Transmitter|state_out~3_combout\;
\Transmitter|ALT_INV_state_out~2_combout\ <= NOT \Transmitter|state_out~2_combout\;
\Transmitter|ALT_INV_Tx~q\ <= NOT \Transmitter|Tx~q\;
\Counter_8bit|ALT_INV_wren_reg~q\ <= NOT \Counter_8bit|wren_reg~q\;

-- Location: IOOBUF_X60_Y73_N2
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\count[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\count[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(6),
	devoe => ww_devoe,
	o => \count[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\count[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|counter_up\(7),
	devoe => ww_devoe,
	o => \count[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\address_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(0),
	devoe => ww_devoe,
	o => \address_out[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\address_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(1),
	devoe => ww_devoe,
	o => \address_out[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\address_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(2),
	devoe => ww_devoe,
	o => \address_out[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\address_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(3),
	devoe => ww_devoe,
	o => \address_out[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\address_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(4),
	devoe => ww_devoe,
	o => \address_out[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\address_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(5),
	devoe => ww_devoe,
	o => \address_out[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\address_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(6),
	devoe => ww_devoe,
	o => \address_out[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\address_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(7),
	devoe => ww_devoe,
	o => \address_out[7]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\address_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(8),
	devoe => ww_devoe,
	o => \address_out[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\address_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(9),
	devoe => ww_devoe,
	o => \address_out[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\address_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(10),
	devoe => ww_devoe,
	o => \address_out[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\address_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(11),
	devoe => ww_devoe,
	o => \address_out[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\address_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(12),
	devoe => ww_devoe,
	o => \address_out[12]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\address_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(13),
	devoe => ww_devoe,
	o => \address_out[13]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\address_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(14),
	devoe => ww_devoe,
	o => \address_out[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\address_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|address_reg\(15),
	devoe => ww_devoe,
	o => \address_out[15]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\out_val[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\,
	devoe => ww_devoe,
	o => \out_val[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\out_val[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\,
	devoe => ww_devoe,
	o => \out_val[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\out_val[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\,
	devoe => ww_devoe,
	o => \out_val[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\out_val[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\,
	devoe => ww_devoe,
	o => \out_val[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\out_val[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\,
	devoe => ww_devoe,
	o => \out_val[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\out_val[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\,
	devoe => ww_devoe,
	o => \out_val[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\out_val[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\,
	devoe => ww_devoe,
	o => \out_val[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\out_val[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\,
	devoe => ww_devoe,
	o => \out_val[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\clkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_in~input_o\,
	devoe => ww_devoe,
	o => \clkout~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\wren_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter_8bit|ALT_INV_wren_reg~q\,
	devoe => ww_devoe,
	o => \wren_out~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Tx_bit~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|ALT_INV_Tx~q\,
	devoe => ww_devoe,
	o => \Tx_bit~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\TxBusy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|state.TX_STATE_IDLE~q\,
	devoe => ww_devoe,
	o => \TxBusy~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\state_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|ALT_INV_state_out~2_combout\,
	devoe => ww_devoe,
	o => \state_out[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\state_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|ALT_INV_state_out~3_combout\,
	devoe => ww_devoe,
	o => \state_out[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Clock_trans~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Baud_Rate|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \Clock_trans~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\test_out_pin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(0),
	devoe => ww_devoe,
	o => \test_out_pin[0]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\test_out_pin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(1),
	devoe => ww_devoe,
	o => \test_out_pin[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\test_out_pin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(2),
	devoe => ww_devoe,
	o => \test_out_pin[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\test_out_pin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(3),
	devoe => ww_devoe,
	o => \test_out_pin[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\test_out_pin[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(4),
	devoe => ww_devoe,
	o => \test_out_pin[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\test_out_pin[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(5),
	devoe => ww_devoe,
	o => \test_out_pin[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\test_out_pin[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(6),
	devoe => ww_devoe,
	o => \test_out_pin[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\test_out_pin[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(7),
	devoe => ww_devoe,
	o => \test_out_pin[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\test_out_pin[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(8),
	devoe => ww_devoe,
	o => \test_out_pin[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\test_out_pin[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(9),
	devoe => ww_devoe,
	o => \test_out_pin[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\test_out_pin[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(10),
	devoe => ww_devoe,
	o => \test_out_pin[10]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\test_out_pin[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(11),
	devoe => ww_devoe,
	o => \test_out_pin[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\test_out_pin[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(12),
	devoe => ww_devoe,
	o => \test_out_pin[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\test_out_pin[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(13),
	devoe => ww_devoe,
	o => \test_out_pin[13]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\test_out_pin[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(14),
	devoe => ww_devoe,
	o => \test_out_pin[14]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\test_out_pin[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|test\(15),
	devoe => ww_devoe,
	o => \test_out_pin[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G4
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X48_Y53_N4
\Counter_8bit|counter_up[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[1]~8_combout\ = (\Counter_8bit|counter_up\(1) & (\Counter_8bit|counter_up\(0) $ (VCC))) # (!\Counter_8bit|counter_up\(1) & (\Counter_8bit|counter_up\(0) & VCC))
-- \Counter_8bit|counter_up[1]~9\ = CARRY((\Counter_8bit|counter_up\(1) & \Counter_8bit|counter_up\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(1),
	datab => \Counter_8bit|counter_up\(0),
	datad => VCC,
	combout => \Counter_8bit|counter_up[1]~8_combout\,
	cout => \Counter_8bit|counter_up[1]~9\);

-- Location: LCCOMB_X48_Y53_N18
\Counter_8bit|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|LessThan0~0_combout\ = (((!\Counter_8bit|counter_up\(1)) # (!\Counter_8bit|counter_up\(3))) # (!\Counter_8bit|counter_up\(0))) # (!\Counter_8bit|counter_up\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(2),
	datab => \Counter_8bit|counter_up\(0),
	datac => \Counter_8bit|counter_up\(3),
	datad => \Counter_8bit|counter_up\(1),
	combout => \Counter_8bit|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y53_N28
\Counter_8bit|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|LessThan0~2_combout\ = (\Counter_8bit|LessThan0~1_combout\) # (\Counter_8bit|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_8bit|LessThan0~1_combout\,
	datad => \Counter_8bit|LessThan0~0_combout\,
	combout => \Counter_8bit|LessThan0~2_combout\);

-- Location: FF_X48_Y53_N5
\Counter_8bit|counter_up[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[1]~8_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(1));

-- Location: LCCOMB_X48_Y53_N6
\Counter_8bit|counter_up[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[2]~10_combout\ = (\Counter_8bit|counter_up\(2) & (!\Counter_8bit|counter_up[1]~9\)) # (!\Counter_8bit|counter_up\(2) & ((\Counter_8bit|counter_up[1]~9\) # (GND)))
-- \Counter_8bit|counter_up[2]~11\ = CARRY((!\Counter_8bit|counter_up[1]~9\) # (!\Counter_8bit|counter_up\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(2),
	datad => VCC,
	cin => \Counter_8bit|counter_up[1]~9\,
	combout => \Counter_8bit|counter_up[2]~10_combout\,
	cout => \Counter_8bit|counter_up[2]~11\);

-- Location: FF_X48_Y53_N7
\Counter_8bit|counter_up[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[2]~10_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(2));

-- Location: LCCOMB_X48_Y53_N8
\Counter_8bit|counter_up[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[3]~12_combout\ = (\Counter_8bit|counter_up\(3) & (\Counter_8bit|counter_up[2]~11\ $ (GND))) # (!\Counter_8bit|counter_up\(3) & (!\Counter_8bit|counter_up[2]~11\ & VCC))
-- \Counter_8bit|counter_up[3]~13\ = CARRY((\Counter_8bit|counter_up\(3) & !\Counter_8bit|counter_up[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|counter_up\(3),
	datad => VCC,
	cin => \Counter_8bit|counter_up[2]~11\,
	combout => \Counter_8bit|counter_up[3]~12_combout\,
	cout => \Counter_8bit|counter_up[3]~13\);

-- Location: FF_X48_Y53_N9
\Counter_8bit|counter_up[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[3]~12_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(3));

-- Location: LCCOMB_X48_Y53_N10
\Counter_8bit|counter_up[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[4]~14_combout\ = (\Counter_8bit|counter_up\(4) & (!\Counter_8bit|counter_up[3]~13\)) # (!\Counter_8bit|counter_up\(4) & ((\Counter_8bit|counter_up[3]~13\) # (GND)))
-- \Counter_8bit|counter_up[4]~15\ = CARRY((!\Counter_8bit|counter_up[3]~13\) # (!\Counter_8bit|counter_up\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(4),
	datad => VCC,
	cin => \Counter_8bit|counter_up[3]~13\,
	combout => \Counter_8bit|counter_up[4]~14_combout\,
	cout => \Counter_8bit|counter_up[4]~15\);

-- Location: FF_X48_Y53_N11
\Counter_8bit|counter_up[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[4]~14_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(4));

-- Location: LCCOMB_X48_Y53_N12
\Counter_8bit|counter_up[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[5]~16_combout\ = (\Counter_8bit|counter_up\(5) & (\Counter_8bit|counter_up[4]~15\ $ (GND))) # (!\Counter_8bit|counter_up\(5) & (!\Counter_8bit|counter_up[4]~15\ & VCC))
-- \Counter_8bit|counter_up[5]~17\ = CARRY((\Counter_8bit|counter_up\(5) & !\Counter_8bit|counter_up[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(5),
	datad => VCC,
	cin => \Counter_8bit|counter_up[4]~15\,
	combout => \Counter_8bit|counter_up[5]~16_combout\,
	cout => \Counter_8bit|counter_up[5]~17\);

-- Location: FF_X48_Y53_N13
\Counter_8bit|counter_up[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[5]~16_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(5));

-- Location: LCCOMB_X48_Y53_N14
\Counter_8bit|counter_up[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[6]~18_combout\ = (\Counter_8bit|counter_up\(6) & (!\Counter_8bit|counter_up[5]~17\)) # (!\Counter_8bit|counter_up\(6) & ((\Counter_8bit|counter_up[5]~17\) # (GND)))
-- \Counter_8bit|counter_up[6]~19\ = CARRY((!\Counter_8bit|counter_up[5]~17\) # (!\Counter_8bit|counter_up\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|counter_up\(6),
	datad => VCC,
	cin => \Counter_8bit|counter_up[5]~17\,
	combout => \Counter_8bit|counter_up[6]~18_combout\,
	cout => \Counter_8bit|counter_up[6]~19\);

-- Location: FF_X48_Y53_N15
\Counter_8bit|counter_up[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[6]~18_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(6));

-- Location: LCCOMB_X48_Y53_N16
\Counter_8bit|counter_up[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[7]~20_combout\ = \Counter_8bit|counter_up[6]~19\ $ (!\Counter_8bit|counter_up\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|counter_up\(7),
	cin => \Counter_8bit|counter_up[6]~19\,
	combout => \Counter_8bit|counter_up[7]~20_combout\);

-- Location: FF_X48_Y53_N17
\Counter_8bit|counter_up[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[7]~20_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(7));

-- Location: LCCOMB_X48_Y53_N30
\Counter_8bit|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|LessThan0~1_combout\ = (((!\Counter_8bit|counter_up\(5)) # (!\Counter_8bit|counter_up\(6))) # (!\Counter_8bit|counter_up\(7))) # (!\Counter_8bit|counter_up\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(4),
	datab => \Counter_8bit|counter_up\(7),
	datac => \Counter_8bit|counter_up\(6),
	datad => \Counter_8bit|counter_up\(5),
	combout => \Counter_8bit|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y53_N24
\Counter_8bit|counter_up[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[0]~7_combout\ = \Counter_8bit|counter_up\(0) $ (((\Counter_8bit|LessThan0~1_combout\) # (\Counter_8bit|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|LessThan0~1_combout\,
	datac => \Counter_8bit|counter_up\(0),
	datad => \Counter_8bit|LessThan0~0_combout\,
	combout => \Counter_8bit|counter_up[0]~7_combout\);

-- Location: FF_X48_Y53_N25
\Counter_8bit|counter_up[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|counter_up[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(0));

-- Location: LCCOMB_X45_Y53_N0
\Counter_8bit|address_reg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[0]~16_combout\ = \Counter_8bit|address_reg\(0) $ (VCC)
-- \Counter_8bit|address_reg[0]~17\ = CARRY(\Counter_8bit|address_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(0),
	datad => VCC,
	combout => \Counter_8bit|address_reg[0]~16_combout\,
	cout => \Counter_8bit|address_reg[0]~17\);

-- Location: LCCOMB_X48_Y55_N8
\Baud_Rate|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~0_combout\ = \Baud_Rate|tx_acc\(0) $ (VCC)
-- \Baud_Rate|Add0~1\ = CARRY(\Baud_Rate|tx_acc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|tx_acc\(0),
	datad => VCC,
	combout => \Baud_Rate|Add0~0_combout\,
	cout => \Baud_Rate|Add0~1\);

-- Location: LCCOMB_X48_Y55_N28
\Baud_Rate|tx_acc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~0_combout\ = (\Baud_Rate|Add0~0_combout\ & (((!\Baud_Rate|tx_acc\(8)) # (!\Baud_Rate|Equal0~0_combout\)) # (!\Baud_Rate|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|Equal1~0_combout\,
	datab => \Baud_Rate|Equal0~0_combout\,
	datac => \Baud_Rate|Add0~0_combout\,
	datad => \Baud_Rate|tx_acc\(8),
	combout => \Baud_Rate|tx_acc~0_combout\);

-- Location: FF_X48_Y55_N29
\Baud_Rate|tx_acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(0));

-- Location: LCCOMB_X48_Y55_N10
\Baud_Rate|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~2_combout\ = (\Baud_Rate|tx_acc\(1) & (!\Baud_Rate|Add0~1\)) # (!\Baud_Rate|tx_acc\(1) & ((\Baud_Rate|Add0~1\) # (GND)))
-- \Baud_Rate|Add0~3\ = CARRY((!\Baud_Rate|Add0~1\) # (!\Baud_Rate|tx_acc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(1),
	datad => VCC,
	cin => \Baud_Rate|Add0~1\,
	combout => \Baud_Rate|Add0~2_combout\,
	cout => \Baud_Rate|Add0~3\);

-- Location: LCCOMB_X48_Y55_N30
\Baud_Rate|tx_acc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~2_combout\ = (\Baud_Rate|Add0~2_combout\ & (((!\Baud_Rate|tx_acc\(8)) # (!\Baud_Rate|Equal1~0_combout\)) # (!\Baud_Rate|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|Add0~2_combout\,
	datab => \Baud_Rate|Equal0~0_combout\,
	datac => \Baud_Rate|Equal1~0_combout\,
	datad => \Baud_Rate|tx_acc\(8),
	combout => \Baud_Rate|tx_acc~2_combout\);

-- Location: FF_X48_Y55_N31
\Baud_Rate|tx_acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(1));

-- Location: LCCOMB_X48_Y55_N12
\Baud_Rate|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~4_combout\ = (\Baud_Rate|tx_acc\(2) & (\Baud_Rate|Add0~3\ $ (GND))) # (!\Baud_Rate|tx_acc\(2) & (!\Baud_Rate|Add0~3\ & VCC))
-- \Baud_Rate|Add0~5\ = CARRY((\Baud_Rate|tx_acc\(2) & !\Baud_Rate|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(2),
	datad => VCC,
	cin => \Baud_Rate|Add0~3\,
	combout => \Baud_Rate|Add0~4_combout\,
	cout => \Baud_Rate|Add0~5\);

-- Location: FF_X48_Y55_N13
\Baud_Rate|tx_acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(2));

-- Location: LCCOMB_X48_Y55_N14
\Baud_Rate|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~6_combout\ = (\Baud_Rate|tx_acc\(3) & (!\Baud_Rate|Add0~5\)) # (!\Baud_Rate|tx_acc\(3) & ((\Baud_Rate|Add0~5\) # (GND)))
-- \Baud_Rate|Add0~7\ = CARRY((!\Baud_Rate|Add0~5\) # (!\Baud_Rate|tx_acc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|tx_acc\(3),
	datad => VCC,
	cin => \Baud_Rate|Add0~5\,
	combout => \Baud_Rate|Add0~6_combout\,
	cout => \Baud_Rate|Add0~7\);

-- Location: FF_X48_Y55_N15
\Baud_Rate|tx_acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(3));

-- Location: LCCOMB_X48_Y55_N16
\Baud_Rate|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~8_combout\ = (\Baud_Rate|tx_acc\(4) & (\Baud_Rate|Add0~7\ $ (GND))) # (!\Baud_Rate|tx_acc\(4) & (!\Baud_Rate|Add0~7\ & VCC))
-- \Baud_Rate|Add0~9\ = CARRY((\Baud_Rate|tx_acc\(4) & !\Baud_Rate|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|tx_acc\(4),
	datad => VCC,
	cin => \Baud_Rate|Add0~7\,
	combout => \Baud_Rate|Add0~8_combout\,
	cout => \Baud_Rate|Add0~9\);

-- Location: LCCOMB_X48_Y55_N18
\Baud_Rate|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~10_combout\ = (\Baud_Rate|tx_acc\(5) & (!\Baud_Rate|Add0~9\)) # (!\Baud_Rate|tx_acc\(5) & ((\Baud_Rate|Add0~9\) # (GND)))
-- \Baud_Rate|Add0~11\ = CARRY((!\Baud_Rate|Add0~9\) # (!\Baud_Rate|tx_acc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(5),
	datad => VCC,
	cin => \Baud_Rate|Add0~9\,
	combout => \Baud_Rate|Add0~10_combout\,
	cout => \Baud_Rate|Add0~11\);

-- Location: LCCOMB_X48_Y55_N26
\Baud_Rate|tx_acc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~3_combout\ = (\Baud_Rate|Add0~10_combout\ & (((!\Baud_Rate|Equal1~0_combout\) # (!\Baud_Rate|Equal0~0_combout\)) # (!\Baud_Rate|tx_acc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(8),
	datab => \Baud_Rate|Equal0~0_combout\,
	datac => \Baud_Rate|Equal1~0_combout\,
	datad => \Baud_Rate|Add0~10_combout\,
	combout => \Baud_Rate|tx_acc~3_combout\);

-- Location: FF_X48_Y55_N27
\Baud_Rate|tx_acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(5));

-- Location: LCCOMB_X48_Y55_N20
\Baud_Rate|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~12_combout\ = (\Baud_Rate|tx_acc\(6) & (\Baud_Rate|Add0~11\ $ (GND))) # (!\Baud_Rate|tx_acc\(6) & (!\Baud_Rate|Add0~11\ & VCC))
-- \Baud_Rate|Add0~13\ = CARRY((\Baud_Rate|tx_acc\(6) & !\Baud_Rate|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|tx_acc\(6),
	datad => VCC,
	cin => \Baud_Rate|Add0~11\,
	combout => \Baud_Rate|Add0~12_combout\,
	cout => \Baud_Rate|Add0~13\);

-- Location: FF_X48_Y55_N21
\Baud_Rate|tx_acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(6));

-- Location: LCCOMB_X48_Y55_N2
\Baud_Rate|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Equal0~0_combout\ = (!\Baud_Rate|tx_acc\(2) & (!\Baud_Rate|tx_acc\(6) & (!\Baud_Rate|tx_acc\(3) & !\Baud_Rate|tx_acc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(2),
	datab => \Baud_Rate|tx_acc\(6),
	datac => \Baud_Rate|tx_acc\(3),
	datad => \Baud_Rate|tx_acc\(0),
	combout => \Baud_Rate|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y55_N4
\Baud_Rate|tx_acc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~1_combout\ = (\Baud_Rate|Add0~8_combout\ & (((!\Baud_Rate|Equal1~0_combout\) # (!\Baud_Rate|Equal0~0_combout\)) # (!\Baud_Rate|tx_acc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(8),
	datab => \Baud_Rate|Equal0~0_combout\,
	datac => \Baud_Rate|Equal1~0_combout\,
	datad => \Baud_Rate|Add0~8_combout\,
	combout => \Baud_Rate|tx_acc~1_combout\);

-- Location: FF_X48_Y55_N5
\Baud_Rate|tx_acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(4));

-- Location: LCCOMB_X48_Y55_N22
\Baud_Rate|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~14_combout\ = (\Baud_Rate|tx_acc\(7) & (!\Baud_Rate|Add0~13\)) # (!\Baud_Rate|tx_acc\(7) & ((\Baud_Rate|Add0~13\) # (GND)))
-- \Baud_Rate|Add0~15\ = CARRY((!\Baud_Rate|Add0~13\) # (!\Baud_Rate|tx_acc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|tx_acc\(7),
	datad => VCC,
	cin => \Baud_Rate|Add0~13\,
	combout => \Baud_Rate|Add0~14_combout\,
	cout => \Baud_Rate|Add0~15\);

-- Location: LCCOMB_X48_Y55_N0
\Baud_Rate|tx_acc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~4_combout\ = (\Baud_Rate|Add0~14_combout\ & (((!\Baud_Rate|tx_acc\(8)) # (!\Baud_Rate|Equal0~0_combout\)) # (!\Baud_Rate|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|Equal1~0_combout\,
	datab => \Baud_Rate|Equal0~0_combout\,
	datac => \Baud_Rate|Add0~14_combout\,
	datad => \Baud_Rate|tx_acc\(8),
	combout => \Baud_Rate|tx_acc~4_combout\);

-- Location: FF_X48_Y55_N1
\Baud_Rate|tx_acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(7));

-- Location: LCCOMB_X47_Y55_N26
\Baud_Rate|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Equal1~0_combout\ = (\Baud_Rate|tx_acc\(4) & (\Baud_Rate|tx_acc\(7) & (\Baud_Rate|tx_acc\(1) & \Baud_Rate|tx_acc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(4),
	datab => \Baud_Rate|tx_acc\(7),
	datac => \Baud_Rate|tx_acc\(1),
	datad => \Baud_Rate|tx_acc\(5),
	combout => \Baud_Rate|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y55_N24
\Baud_Rate|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Add0~16_combout\ = \Baud_Rate|Add0~15\ $ (!\Baud_Rate|tx_acc\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Baud_Rate|tx_acc\(8),
	cin => \Baud_Rate|Add0~15\,
	combout => \Baud_Rate|Add0~16_combout\);

-- Location: LCCOMB_X48_Y55_N6
\Baud_Rate|tx_acc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|tx_acc~5_combout\ = (\Baud_Rate|Add0~16_combout\ & (((!\Baud_Rate|Equal0~0_combout\) # (!\Baud_Rate|tx_acc\(8))) # (!\Baud_Rate|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|Equal1~0_combout\,
	datab => \Baud_Rate|Add0~16_combout\,
	datac => \Baud_Rate|tx_acc\(8),
	datad => \Baud_Rate|Equal0~0_combout\,
	combout => \Baud_Rate|tx_acc~5_combout\);

-- Location: FF_X48_Y55_N7
\Baud_Rate|tx_acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Baud_Rate|tx_acc~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate|tx_acc\(8));

-- Location: LCCOMB_X47_Y55_N28
\Baud_Rate|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Equal0~1_combout\ = (!\Baud_Rate|tx_acc\(4) & (!\Baud_Rate|tx_acc\(7) & (!\Baud_Rate|tx_acc\(1) & !\Baud_Rate|tx_acc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(4),
	datab => \Baud_Rate|tx_acc\(7),
	datac => \Baud_Rate|tx_acc\(1),
	datad => \Baud_Rate|tx_acc\(5),
	combout => \Baud_Rate|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y55_N6
\Transmitter|test[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[0]~15_combout\ = (!\Baud_Rate|tx_acc\(8) & (\Transmitter|state.TX_STATE_DATA~q\ & (\Baud_Rate|Equal0~0_combout\ & \Baud_Rate|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate|tx_acc\(8),
	datab => \Transmitter|state.TX_STATE_DATA~q\,
	datac => \Baud_Rate|Equal0~0_combout\,
	datad => \Baud_Rate|Equal0~1_combout\,
	combout => \Transmitter|test[0]~15_combout\);

-- Location: LCCOMB_X47_Y53_N4
\Counter_8bit|wren_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|wren_reg~0_combout\ = (\Counter_8bit|wren_reg~q\) # ((!\Counter_8bit|LessThan0~1_combout\ & !\Counter_8bit|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|LessThan0~1_combout\,
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|LessThan0~0_combout\,
	combout => \Counter_8bit|wren_reg~0_combout\);

-- Location: FF_X47_Y53_N5
\Counter_8bit|wren_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|wren_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|wren_reg~q\);

-- Location: LCCOMB_X47_Y53_N18
\Transmitter|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector3~1_combout\ = (\Counter_8bit|wren_reg~q\ & !\Transmitter|state.TX_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|wren_reg~q\,
	datac => \Transmitter|state.TX_STATE_IDLE~q\,
	combout => \Transmitter|Selector3~1_combout\);

-- Location: LCCOMB_X47_Y53_N10
\Transmitter|bit_pos[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|bit_pos[2]~0_combout\ = (!\Transmitter|Selector3~1_combout\ & (((\Transmitter|Equal0~0_combout\ & \Transmitter|bit_pos\(2))) # (!\Transmitter|test[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test[0]~15_combout\,
	datab => \Transmitter|Equal0~0_combout\,
	datac => \Transmitter|bit_pos\(2),
	datad => \Transmitter|Selector3~1_combout\,
	combout => \Transmitter|bit_pos[2]~0_combout\);

-- Location: LCCOMB_X47_Y53_N14
\Transmitter|bit_pos[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|bit_pos[2]~3_combout\ = (\Transmitter|bit_pos[2]~0_combout\ & (((\Transmitter|bit_pos\(2))))) # (!\Transmitter|bit_pos[2]~0_combout\ & (\Transmitter|state.TX_STATE_DATA~q\ & (\Transmitter|Equal0~0_combout\ $ (\Transmitter|bit_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_DATA~q\,
	datab => \Transmitter|Equal0~0_combout\,
	datac => \Transmitter|bit_pos\(2),
	datad => \Transmitter|bit_pos[2]~0_combout\,
	combout => \Transmitter|bit_pos[2]~3_combout\);

-- Location: FF_X47_Y53_N15
\Transmitter|bit_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|bit_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|bit_pos\(2));

-- Location: LCCOMB_X47_Y55_N2
\Baud_Rate|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate|Equal0~2_combout\ = (\Baud_Rate|Equal0~1_combout\ & (\Baud_Rate|Equal0~0_combout\ & !\Baud_Rate|tx_acc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|Equal0~1_combout\,
	datac => \Baud_Rate|Equal0~0_combout\,
	datad => \Baud_Rate|tx_acc\(8),
	combout => \Baud_Rate|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y55_N24
\Transmitter|test[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[0]~16_combout\ = (\Transmitter|Equal0~0_combout\ & (\Transmitter|state.TX_STATE_DATA~q\ & (\Transmitter|bit_pos\(2) & \Baud_Rate|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|Equal0~0_combout\,
	datab => \Transmitter|state.TX_STATE_DATA~q\,
	datac => \Transmitter|bit_pos\(2),
	datad => \Baud_Rate|Equal0~2_combout\,
	combout => \Transmitter|test[0]~16_combout\);

-- Location: LCCOMB_X47_Y55_N8
\Transmitter|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector3~2_combout\ = (\Transmitter|test[0]~16_combout\) # ((\Transmitter|state.TX_STATE_STOP~q\ & !\Baud_Rate|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test[0]~16_combout\,
	datac => \Transmitter|state.TX_STATE_STOP~q\,
	datad => \Baud_Rate|Equal0~2_combout\,
	combout => \Transmitter|Selector3~2_combout\);

-- Location: FF_X47_Y55_N9
\Transmitter|state.TX_STATE_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|state.TX_STATE_STOP~q\);

-- Location: LCCOMB_X47_Y55_N10
\Transmitter|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector0~0_combout\ = (\Transmitter|state.TX_STATE_STOP~q\ & (!\Baud_Rate|Equal0~2_combout\ & ((\Transmitter|state.TX_STATE_IDLE~q\) # (\Counter_8bit|wren_reg~q\)))) # (!\Transmitter|state.TX_STATE_STOP~q\ & 
-- (((\Transmitter|state.TX_STATE_IDLE~q\) # (\Counter_8bit|wren_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_STOP~q\,
	datab => \Baud_Rate|Equal0~2_combout\,
	datac => \Transmitter|state.TX_STATE_IDLE~q\,
	datad => \Counter_8bit|wren_reg~q\,
	combout => \Transmitter|Selector0~0_combout\);

-- Location: FF_X47_Y55_N11
\Transmitter|state.TX_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|state.TX_STATE_IDLE~q\);

-- Location: LCCOMB_X47_Y53_N16
\Transmitter|bit_pos[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|bit_pos[0]~2_combout\ = (\Transmitter|bit_pos\(0) & ((\Transmitter|bit_pos[2]~0_combout\))) # (!\Transmitter|bit_pos\(0) & (\Transmitter|state.TX_STATE_DATA~q\ & !\Transmitter|bit_pos[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_DATA~q\,
	datac => \Transmitter|bit_pos\(0),
	datad => \Transmitter|bit_pos[2]~0_combout\,
	combout => \Transmitter|bit_pos[0]~2_combout\);

-- Location: FF_X47_Y53_N17
\Transmitter|bit_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|bit_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|bit_pos\(0));

-- Location: LCCOMB_X47_Y53_N20
\Transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector2~1_combout\ = (\Transmitter|bit_pos\(1) & (\Transmitter|bit_pos\(2) & \Transmitter|bit_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|bit_pos\(1),
	datac => \Transmitter|bit_pos\(2),
	datad => \Transmitter|bit_pos\(0),
	combout => \Transmitter|Selector2~1_combout\);

-- Location: LCCOMB_X47_Y55_N30
\Transmitter|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector2~2_combout\ = (\Transmitter|state.TX_STATE_DATA~q\ & (((\Transmitter|state.TX_STATE_IDLE~q\ & !\Baud_Rate|Equal0~2_combout\)) # (!\Transmitter|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_IDLE~q\,
	datab => \Baud_Rate|Equal0~2_combout\,
	datac => \Transmitter|Selector2~1_combout\,
	datad => \Transmitter|state.TX_STATE_DATA~q\,
	combout => \Transmitter|Selector2~2_combout\);

-- Location: LCCOMB_X47_Y55_N0
\Transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector1~0_combout\ = (!\Transmitter|test[0]~16_combout\ & ((\Transmitter|Selector3~1_combout\) # ((!\Baud_Rate|Equal0~2_combout\ & \Transmitter|state.TX_STATE_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test[0]~16_combout\,
	datab => \Baud_Rate|Equal0~2_combout\,
	datac => \Transmitter|state.TX_STATE_START~q\,
	datad => \Transmitter|Selector3~1_combout\,
	combout => \Transmitter|Selector1~0_combout\);

-- Location: FF_X47_Y55_N1
\Transmitter|state.TX_STATE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|state.TX_STATE_START~q\);

-- Location: LCCOMB_X47_Y55_N16
\Transmitter|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector2~3_combout\ = (\Baud_Rate|Equal0~2_combout\ & (!\Transmitter|state.TX_STATE_STOP~q\ & ((\Transmitter|Selector2~2_combout\) # (\Transmitter|state.TX_STATE_START~q\)))) # (!\Baud_Rate|Equal0~2_combout\ & 
-- (\Transmitter|Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|Selector2~2_combout\,
	datab => \Transmitter|state.TX_STATE_START~q\,
	datac => \Transmitter|state.TX_STATE_STOP~q\,
	datad => \Baud_Rate|Equal0~2_combout\,
	combout => \Transmitter|Selector2~3_combout\);

-- Location: FF_X47_Y55_N17
\Transmitter|state.TX_STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|state.TX_STATE_DATA~q\);

-- Location: LCCOMB_X47_Y53_N22
\Transmitter|bit_pos[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|bit_pos[1]~1_combout\ = (\Transmitter|bit_pos[2]~0_combout\ & (((\Transmitter|bit_pos\(1))))) # (!\Transmitter|bit_pos[2]~0_combout\ & (\Transmitter|state.TX_STATE_DATA~q\ & (\Transmitter|bit_pos\(0) $ (\Transmitter|bit_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_DATA~q\,
	datab => \Transmitter|bit_pos\(0),
	datac => \Transmitter|bit_pos\(1),
	datad => \Transmitter|bit_pos[2]~0_combout\,
	combout => \Transmitter|bit_pos[1]~1_combout\);

-- Location: FF_X47_Y53_N23
\Transmitter|bit_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|bit_pos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|bit_pos\(1));

-- Location: LCCOMB_X47_Y53_N0
\Transmitter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Equal0~0_combout\ = (\Transmitter|bit_pos\(1) & \Transmitter|bit_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|bit_pos\(1),
	datad => \Transmitter|bit_pos\(0),
	combout => \Transmitter|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y53_N30
\Transmitter|test[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[0]~17_combout\ = \Transmitter|test\(0) $ (((\Transmitter|Equal0~0_combout\ & (\Transmitter|bit_pos\(2) & \Transmitter|test[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|Equal0~0_combout\,
	datab => \Transmitter|bit_pos\(2),
	datac => \Transmitter|test\(0),
	datad => \Transmitter|test[0]~15_combout\,
	combout => \Transmitter|test[0]~17_combout\);

-- Location: FF_X47_Y53_N31
\Transmitter|test[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(0));

-- Location: FF_X45_Y53_N1
\Counter_8bit|address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[0]~16_combout\,
	asdata => \Transmitter|test\(0),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(0));

-- Location: LCCOMB_X45_Y53_N2
\Counter_8bit|address_reg[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[1]~18_combout\ = (\Counter_8bit|address_reg\(1) & (!\Counter_8bit|address_reg[0]~17\)) # (!\Counter_8bit|address_reg\(1) & ((\Counter_8bit|address_reg[0]~17\) # (GND)))
-- \Counter_8bit|address_reg[1]~19\ = CARRY((!\Counter_8bit|address_reg[0]~17\) # (!\Counter_8bit|address_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(1),
	datad => VCC,
	cin => \Counter_8bit|address_reg[0]~17\,
	combout => \Counter_8bit|address_reg[1]~18_combout\,
	cout => \Counter_8bit|address_reg[1]~19\);

-- Location: LCCOMB_X45_Y57_N0
\Transmitter|test[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[1]~18_combout\ = (\Transmitter|test\(1) & (\Transmitter|test\(0) $ (VCC))) # (!\Transmitter|test\(1) & (\Transmitter|test\(0) & VCC))
-- \Transmitter|test[1]~19\ = CARRY((\Transmitter|test\(1) & \Transmitter|test\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(1),
	datab => \Transmitter|test\(0),
	datad => VCC,
	combout => \Transmitter|test[1]~18_combout\,
	cout => \Transmitter|test[1]~19\);

-- Location: FF_X45_Y57_N1
\Transmitter|test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[1]~18_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(1));

-- Location: FF_X45_Y53_N3
\Counter_8bit|address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[1]~18_combout\,
	asdata => \Transmitter|test\(1),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(1));

-- Location: LCCOMB_X45_Y53_N4
\Counter_8bit|address_reg[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[2]~20_combout\ = (\Counter_8bit|address_reg\(2) & (\Counter_8bit|address_reg[1]~19\ $ (GND))) # (!\Counter_8bit|address_reg\(2) & (!\Counter_8bit|address_reg[1]~19\ & VCC))
-- \Counter_8bit|address_reg[2]~21\ = CARRY((\Counter_8bit|address_reg\(2) & !\Counter_8bit|address_reg[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(2),
	datad => VCC,
	cin => \Counter_8bit|address_reg[1]~19\,
	combout => \Counter_8bit|address_reg[2]~20_combout\,
	cout => \Counter_8bit|address_reg[2]~21\);

-- Location: LCCOMB_X45_Y57_N2
\Transmitter|test[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[2]~20_combout\ = (\Transmitter|test\(2) & (!\Transmitter|test[1]~19\)) # (!\Transmitter|test\(2) & ((\Transmitter|test[1]~19\) # (GND)))
-- \Transmitter|test[2]~21\ = CARRY((!\Transmitter|test[1]~19\) # (!\Transmitter|test\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(2),
	datad => VCC,
	cin => \Transmitter|test[1]~19\,
	combout => \Transmitter|test[2]~20_combout\,
	cout => \Transmitter|test[2]~21\);

-- Location: FF_X45_Y57_N3
\Transmitter|test[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[2]~20_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(2));

-- Location: FF_X45_Y53_N5
\Counter_8bit|address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[2]~20_combout\,
	asdata => \Transmitter|test\(2),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(2));

-- Location: LCCOMB_X45_Y53_N6
\Counter_8bit|address_reg[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[3]~22_combout\ = (\Counter_8bit|address_reg\(3) & (!\Counter_8bit|address_reg[2]~21\)) # (!\Counter_8bit|address_reg\(3) & ((\Counter_8bit|address_reg[2]~21\) # (GND)))
-- \Counter_8bit|address_reg[3]~23\ = CARRY((!\Counter_8bit|address_reg[2]~21\) # (!\Counter_8bit|address_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(3),
	datad => VCC,
	cin => \Counter_8bit|address_reg[2]~21\,
	combout => \Counter_8bit|address_reg[3]~22_combout\,
	cout => \Counter_8bit|address_reg[3]~23\);

-- Location: LCCOMB_X45_Y57_N4
\Transmitter|test[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[3]~22_combout\ = (\Transmitter|test\(3) & (\Transmitter|test[2]~21\ $ (GND))) # (!\Transmitter|test\(3) & (!\Transmitter|test[2]~21\ & VCC))
-- \Transmitter|test[3]~23\ = CARRY((\Transmitter|test\(3) & !\Transmitter|test[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(3),
	datad => VCC,
	cin => \Transmitter|test[2]~21\,
	combout => \Transmitter|test[3]~22_combout\,
	cout => \Transmitter|test[3]~23\);

-- Location: FF_X45_Y57_N5
\Transmitter|test[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[3]~22_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(3));

-- Location: FF_X45_Y53_N7
\Counter_8bit|address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[3]~22_combout\,
	asdata => \Transmitter|test\(3),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(3));

-- Location: LCCOMB_X45_Y53_N8
\Counter_8bit|address_reg[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[4]~24_combout\ = (\Counter_8bit|address_reg\(4) & (\Counter_8bit|address_reg[3]~23\ $ (GND))) # (!\Counter_8bit|address_reg\(4) & (!\Counter_8bit|address_reg[3]~23\ & VCC))
-- \Counter_8bit|address_reg[4]~25\ = CARRY((\Counter_8bit|address_reg\(4) & !\Counter_8bit|address_reg[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(4),
	datad => VCC,
	cin => \Counter_8bit|address_reg[3]~23\,
	combout => \Counter_8bit|address_reg[4]~24_combout\,
	cout => \Counter_8bit|address_reg[4]~25\);

-- Location: LCCOMB_X45_Y57_N6
\Transmitter|test[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[4]~24_combout\ = (\Transmitter|test\(4) & (!\Transmitter|test[3]~23\)) # (!\Transmitter|test\(4) & ((\Transmitter|test[3]~23\) # (GND)))
-- \Transmitter|test[4]~25\ = CARRY((!\Transmitter|test[3]~23\) # (!\Transmitter|test\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(4),
	datad => VCC,
	cin => \Transmitter|test[3]~23\,
	combout => \Transmitter|test[4]~24_combout\,
	cout => \Transmitter|test[4]~25\);

-- Location: FF_X45_Y57_N7
\Transmitter|test[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[4]~24_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(4));

-- Location: FF_X45_Y53_N9
\Counter_8bit|address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[4]~24_combout\,
	asdata => \Transmitter|test\(4),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(4));

-- Location: LCCOMB_X45_Y53_N10
\Counter_8bit|address_reg[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[5]~26_combout\ = (\Counter_8bit|address_reg\(5) & (!\Counter_8bit|address_reg[4]~25\)) # (!\Counter_8bit|address_reg\(5) & ((\Counter_8bit|address_reg[4]~25\) # (GND)))
-- \Counter_8bit|address_reg[5]~27\ = CARRY((!\Counter_8bit|address_reg[4]~25\) # (!\Counter_8bit|address_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(5),
	datad => VCC,
	cin => \Counter_8bit|address_reg[4]~25\,
	combout => \Counter_8bit|address_reg[5]~26_combout\,
	cout => \Counter_8bit|address_reg[5]~27\);

-- Location: LCCOMB_X45_Y57_N8
\Transmitter|test[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[5]~26_combout\ = (\Transmitter|test\(5) & (\Transmitter|test[4]~25\ $ (GND))) # (!\Transmitter|test\(5) & (!\Transmitter|test[4]~25\ & VCC))
-- \Transmitter|test[5]~27\ = CARRY((\Transmitter|test\(5) & !\Transmitter|test[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(5),
	datad => VCC,
	cin => \Transmitter|test[4]~25\,
	combout => \Transmitter|test[5]~26_combout\,
	cout => \Transmitter|test[5]~27\);

-- Location: FF_X45_Y57_N9
\Transmitter|test[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[5]~26_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(5));

-- Location: FF_X45_Y53_N11
\Counter_8bit|address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[5]~26_combout\,
	asdata => \Transmitter|test\(5),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(5));

-- Location: LCCOMB_X45_Y53_N12
\Counter_8bit|address_reg[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[6]~28_combout\ = (\Counter_8bit|address_reg\(6) & (\Counter_8bit|address_reg[5]~27\ $ (GND))) # (!\Counter_8bit|address_reg\(6) & (!\Counter_8bit|address_reg[5]~27\ & VCC))
-- \Counter_8bit|address_reg[6]~29\ = CARRY((\Counter_8bit|address_reg\(6) & !\Counter_8bit|address_reg[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(6),
	datad => VCC,
	cin => \Counter_8bit|address_reg[5]~27\,
	combout => \Counter_8bit|address_reg[6]~28_combout\,
	cout => \Counter_8bit|address_reg[6]~29\);

-- Location: LCCOMB_X45_Y57_N10
\Transmitter|test[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[6]~28_combout\ = (\Transmitter|test\(6) & (!\Transmitter|test[5]~27\)) # (!\Transmitter|test\(6) & ((\Transmitter|test[5]~27\) # (GND)))
-- \Transmitter|test[6]~29\ = CARRY((!\Transmitter|test[5]~27\) # (!\Transmitter|test\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(6),
	datad => VCC,
	cin => \Transmitter|test[5]~27\,
	combout => \Transmitter|test[6]~28_combout\,
	cout => \Transmitter|test[6]~29\);

-- Location: FF_X45_Y57_N11
\Transmitter|test[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[6]~28_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(6));

-- Location: FF_X45_Y53_N13
\Counter_8bit|address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[6]~28_combout\,
	asdata => \Transmitter|test\(6),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(6));

-- Location: LCCOMB_X45_Y53_N14
\Counter_8bit|address_reg[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[7]~30_combout\ = (\Counter_8bit|address_reg\(7) & (!\Counter_8bit|address_reg[6]~29\)) # (!\Counter_8bit|address_reg\(7) & ((\Counter_8bit|address_reg[6]~29\) # (GND)))
-- \Counter_8bit|address_reg[7]~31\ = CARRY((!\Counter_8bit|address_reg[6]~29\) # (!\Counter_8bit|address_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(7),
	datad => VCC,
	cin => \Counter_8bit|address_reg[6]~29\,
	combout => \Counter_8bit|address_reg[7]~30_combout\,
	cout => \Counter_8bit|address_reg[7]~31\);

-- Location: LCCOMB_X45_Y57_N12
\Transmitter|test[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[7]~30_combout\ = (\Transmitter|test\(7) & (\Transmitter|test[6]~29\ $ (GND))) # (!\Transmitter|test\(7) & (!\Transmitter|test[6]~29\ & VCC))
-- \Transmitter|test[7]~31\ = CARRY((\Transmitter|test\(7) & !\Transmitter|test[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(7),
	datad => VCC,
	cin => \Transmitter|test[6]~29\,
	combout => \Transmitter|test[7]~30_combout\,
	cout => \Transmitter|test[7]~31\);

-- Location: FF_X45_Y57_N13
\Transmitter|test[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[7]~30_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(7));

-- Location: FF_X45_Y53_N15
\Counter_8bit|address_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[7]~30_combout\,
	asdata => \Transmitter|test\(7),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(7));

-- Location: LCCOMB_X45_Y53_N16
\Counter_8bit|address_reg[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[8]~32_combout\ = (\Counter_8bit|address_reg\(8) & (\Counter_8bit|address_reg[7]~31\ $ (GND))) # (!\Counter_8bit|address_reg\(8) & (!\Counter_8bit|address_reg[7]~31\ & VCC))
-- \Counter_8bit|address_reg[8]~33\ = CARRY((\Counter_8bit|address_reg\(8) & !\Counter_8bit|address_reg[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(8),
	datad => VCC,
	cin => \Counter_8bit|address_reg[7]~31\,
	combout => \Counter_8bit|address_reg[8]~32_combout\,
	cout => \Counter_8bit|address_reg[8]~33\);

-- Location: LCCOMB_X45_Y57_N14
\Transmitter|test[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[8]~32_combout\ = (\Transmitter|test\(8) & (!\Transmitter|test[7]~31\)) # (!\Transmitter|test\(8) & ((\Transmitter|test[7]~31\) # (GND)))
-- \Transmitter|test[8]~33\ = CARRY((!\Transmitter|test[7]~31\) # (!\Transmitter|test\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(8),
	datad => VCC,
	cin => \Transmitter|test[7]~31\,
	combout => \Transmitter|test[8]~32_combout\,
	cout => \Transmitter|test[8]~33\);

-- Location: FF_X45_Y57_N15
\Transmitter|test[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[8]~32_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(8));

-- Location: FF_X45_Y53_N17
\Counter_8bit|address_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[8]~32_combout\,
	asdata => \Transmitter|test\(8),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(8));

-- Location: LCCOMB_X45_Y53_N18
\Counter_8bit|address_reg[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[9]~34_combout\ = (\Counter_8bit|address_reg\(9) & (!\Counter_8bit|address_reg[8]~33\)) # (!\Counter_8bit|address_reg\(9) & ((\Counter_8bit|address_reg[8]~33\) # (GND)))
-- \Counter_8bit|address_reg[9]~35\ = CARRY((!\Counter_8bit|address_reg[8]~33\) # (!\Counter_8bit|address_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(9),
	datad => VCC,
	cin => \Counter_8bit|address_reg[8]~33\,
	combout => \Counter_8bit|address_reg[9]~34_combout\,
	cout => \Counter_8bit|address_reg[9]~35\);

-- Location: LCCOMB_X45_Y57_N16
\Transmitter|test[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[9]~34_combout\ = (\Transmitter|test\(9) & (\Transmitter|test[8]~33\ $ (GND))) # (!\Transmitter|test\(9) & (!\Transmitter|test[8]~33\ & VCC))
-- \Transmitter|test[9]~35\ = CARRY((\Transmitter|test\(9) & !\Transmitter|test[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(9),
	datad => VCC,
	cin => \Transmitter|test[8]~33\,
	combout => \Transmitter|test[9]~34_combout\,
	cout => \Transmitter|test[9]~35\);

-- Location: FF_X45_Y57_N17
\Transmitter|test[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[9]~34_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(9));

-- Location: FF_X45_Y53_N19
\Counter_8bit|address_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[9]~34_combout\,
	asdata => \Transmitter|test\(9),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(9));

-- Location: LCCOMB_X45_Y53_N20
\Counter_8bit|address_reg[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[10]~36_combout\ = (\Counter_8bit|address_reg\(10) & (\Counter_8bit|address_reg[9]~35\ $ (GND))) # (!\Counter_8bit|address_reg\(10) & (!\Counter_8bit|address_reg[9]~35\ & VCC))
-- \Counter_8bit|address_reg[10]~37\ = CARRY((\Counter_8bit|address_reg\(10) & !\Counter_8bit|address_reg[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(10),
	datad => VCC,
	cin => \Counter_8bit|address_reg[9]~35\,
	combout => \Counter_8bit|address_reg[10]~36_combout\,
	cout => \Counter_8bit|address_reg[10]~37\);

-- Location: LCCOMB_X45_Y57_N18
\Transmitter|test[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[10]~36_combout\ = (\Transmitter|test\(10) & (!\Transmitter|test[9]~35\)) # (!\Transmitter|test\(10) & ((\Transmitter|test[9]~35\) # (GND)))
-- \Transmitter|test[10]~37\ = CARRY((!\Transmitter|test[9]~35\) # (!\Transmitter|test\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(10),
	datad => VCC,
	cin => \Transmitter|test[9]~35\,
	combout => \Transmitter|test[10]~36_combout\,
	cout => \Transmitter|test[10]~37\);

-- Location: FF_X45_Y57_N19
\Transmitter|test[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[10]~36_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(10));

-- Location: FF_X45_Y53_N21
\Counter_8bit|address_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[10]~36_combout\,
	asdata => \Transmitter|test\(10),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(10));

-- Location: LCCOMB_X45_Y53_N22
\Counter_8bit|address_reg[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[11]~38_combout\ = (\Counter_8bit|address_reg\(11) & (!\Counter_8bit|address_reg[10]~37\)) # (!\Counter_8bit|address_reg\(11) & ((\Counter_8bit|address_reg[10]~37\) # (GND)))
-- \Counter_8bit|address_reg[11]~39\ = CARRY((!\Counter_8bit|address_reg[10]~37\) # (!\Counter_8bit|address_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(11),
	datad => VCC,
	cin => \Counter_8bit|address_reg[10]~37\,
	combout => \Counter_8bit|address_reg[11]~38_combout\,
	cout => \Counter_8bit|address_reg[11]~39\);

-- Location: LCCOMB_X45_Y57_N20
\Transmitter|test[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[11]~38_combout\ = (\Transmitter|test\(11) & (\Transmitter|test[10]~37\ $ (GND))) # (!\Transmitter|test\(11) & (!\Transmitter|test[10]~37\ & VCC))
-- \Transmitter|test[11]~39\ = CARRY((\Transmitter|test\(11) & !\Transmitter|test[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(11),
	datad => VCC,
	cin => \Transmitter|test[10]~37\,
	combout => \Transmitter|test[11]~38_combout\,
	cout => \Transmitter|test[11]~39\);

-- Location: FF_X45_Y57_N21
\Transmitter|test[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[11]~38_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(11));

-- Location: FF_X45_Y53_N23
\Counter_8bit|address_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[11]~38_combout\,
	asdata => \Transmitter|test\(11),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(11));

-- Location: LCCOMB_X45_Y53_N24
\Counter_8bit|address_reg[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[12]~40_combout\ = (\Counter_8bit|address_reg\(12) & (\Counter_8bit|address_reg[11]~39\ $ (GND))) # (!\Counter_8bit|address_reg\(12) & (!\Counter_8bit|address_reg[11]~39\ & VCC))
-- \Counter_8bit|address_reg[12]~41\ = CARRY((\Counter_8bit|address_reg\(12) & !\Counter_8bit|address_reg[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(12),
	datad => VCC,
	cin => \Counter_8bit|address_reg[11]~39\,
	combout => \Counter_8bit|address_reg[12]~40_combout\,
	cout => \Counter_8bit|address_reg[12]~41\);

-- Location: LCCOMB_X45_Y57_N22
\Transmitter|test[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[12]~40_combout\ = (\Transmitter|test\(12) & (!\Transmitter|test[11]~39\)) # (!\Transmitter|test\(12) & ((\Transmitter|test[11]~39\) # (GND)))
-- \Transmitter|test[12]~41\ = CARRY((!\Transmitter|test[11]~39\) # (!\Transmitter|test\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(12),
	datad => VCC,
	cin => \Transmitter|test[11]~39\,
	combout => \Transmitter|test[12]~40_combout\,
	cout => \Transmitter|test[12]~41\);

-- Location: FF_X45_Y57_N23
\Transmitter|test[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[12]~40_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(12));

-- Location: FF_X45_Y53_N25
\Counter_8bit|address_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[12]~40_combout\,
	asdata => \Transmitter|test\(12),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(12));

-- Location: LCCOMB_X45_Y53_N26
\Counter_8bit|address_reg[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[13]~42_combout\ = (\Counter_8bit|address_reg\(13) & (!\Counter_8bit|address_reg[12]~41\)) # (!\Counter_8bit|address_reg\(13) & ((\Counter_8bit|address_reg[12]~41\) # (GND)))
-- \Counter_8bit|address_reg[13]~43\ = CARRY((!\Counter_8bit|address_reg[12]~41\) # (!\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(13),
	datad => VCC,
	cin => \Counter_8bit|address_reg[12]~41\,
	combout => \Counter_8bit|address_reg[13]~42_combout\,
	cout => \Counter_8bit|address_reg[13]~43\);

-- Location: LCCOMB_X46_Y53_N16
\Counter_8bit|address_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[13]~feeder_combout\ = \Counter_8bit|address_reg[13]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg[13]~42_combout\,
	combout => \Counter_8bit|address_reg[13]~feeder_combout\);

-- Location: LCCOMB_X45_Y57_N24
\Transmitter|test[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[13]~42_combout\ = (\Transmitter|test\(13) & (\Transmitter|test[12]~41\ $ (GND))) # (!\Transmitter|test\(13) & (!\Transmitter|test[12]~41\ & VCC))
-- \Transmitter|test[13]~43\ = CARRY((\Transmitter|test\(13) & !\Transmitter|test[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(13),
	datad => VCC,
	cin => \Transmitter|test[12]~41\,
	combout => \Transmitter|test[13]~42_combout\,
	cout => \Transmitter|test[13]~43\);

-- Location: FF_X45_Y57_N25
\Transmitter|test[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[13]~42_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(13));

-- Location: FF_X46_Y53_N17
\Counter_8bit|address_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[13]~feeder_combout\,
	asdata => \Transmitter|test\(13),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(13));

-- Location: LCCOMB_X45_Y53_N28
\Counter_8bit|address_reg[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[14]~44_combout\ = (\Counter_8bit|address_reg\(14) & (\Counter_8bit|address_reg[13]~43\ $ (GND))) # (!\Counter_8bit|address_reg\(14) & (!\Counter_8bit|address_reg[13]~43\ & VCC))
-- \Counter_8bit|address_reg[14]~45\ = CARRY((\Counter_8bit|address_reg\(14) & !\Counter_8bit|address_reg[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(14),
	datad => VCC,
	cin => \Counter_8bit|address_reg[13]~43\,
	combout => \Counter_8bit|address_reg[14]~44_combout\,
	cout => \Counter_8bit|address_reg[14]~45\);

-- Location: LCCOMB_X46_Y53_N26
\Counter_8bit|address_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[14]~feeder_combout\ = \Counter_8bit|address_reg[14]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg[14]~44_combout\,
	combout => \Counter_8bit|address_reg[14]~feeder_combout\);

-- Location: LCCOMB_X45_Y57_N26
\Transmitter|test[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[14]~44_combout\ = (\Transmitter|test\(14) & (!\Transmitter|test[13]~43\)) # (!\Transmitter|test\(14) & ((\Transmitter|test[13]~43\) # (GND)))
-- \Transmitter|test[14]~45\ = CARRY((!\Transmitter|test[13]~43\) # (!\Transmitter|test\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(14),
	datad => VCC,
	cin => \Transmitter|test[13]~43\,
	combout => \Transmitter|test[14]~44_combout\,
	cout => \Transmitter|test[14]~45\);

-- Location: FF_X45_Y57_N27
\Transmitter|test[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[14]~44_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(14));

-- Location: FF_X46_Y53_N27
\Counter_8bit|address_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[14]~feeder_combout\,
	asdata => \Transmitter|test\(14),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(14));

-- Location: LCCOMB_X45_Y53_N30
\Counter_8bit|address_reg[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[15]~46_combout\ = \Counter_8bit|address_reg[14]~45\ $ (\Counter_8bit|address_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg\(15),
	cin => \Counter_8bit|address_reg[14]~45\,
	combout => \Counter_8bit|address_reg[15]~46_combout\);

-- Location: LCCOMB_X46_Y53_N4
\Counter_8bit|address_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[15]~feeder_combout\ = \Counter_8bit|address_reg[15]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg[15]~46_combout\,
	combout => \Counter_8bit|address_reg[15]~feeder_combout\);

-- Location: LCCOMB_X45_Y57_N28
\Transmitter|test[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[15]~46_combout\ = \Transmitter|test[14]~45\ $ (!\Transmitter|test\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Transmitter|test\(15),
	cin => \Transmitter|test[14]~45\,
	combout => \Transmitter|test[15]~46_combout\);

-- Location: FF_X45_Y57_N29
\Transmitter|test[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|test[15]~46_combout\,
	ena => \Transmitter|test[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(15));

-- Location: FF_X46_Y53_N5
\Counter_8bit|address_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~inputclkctrl_outclk\,
	d => \Counter_8bit|address_reg[15]~feeder_combout\,
	asdata => \Transmitter|test\(15),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(15));

-- Location: LCCOMB_X46_Y57_N14
\DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ = \Counter_8bit|address_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_8bit|address_reg\(15),
	combout => \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X46_Y57_N15
\DRAM|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X47_Y57_N4
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\ = \DRAM|altsyncram_component|auto_generated|address_reg_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|altsyncram_component|auto_generated|address_reg_a\(2),
	combout => \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\);

-- Location: FF_X47_Y57_N5
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: LCCOMB_X47_Y53_N24
\DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (!\Counter_8bit|wren_reg~q\ & (!\Counter_8bit|address_reg\(15) & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|wren_reg~q\,
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N22
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\ = (!\Counter_8bit|address_reg\(14) & (!\Counter_8bit|address_reg\(15) & \Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\);

-- Location: M9K_X51_Y61_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y57_N20
\DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\ = (\Counter_8bit|address_reg\(14) & (!\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(13) & !\Counter_8bit|wren_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|wren_reg~q\,
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N28
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\ = (!\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(14) & \Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\);

-- Location: M9K_X51_Y68_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X47_Y53_N12
\DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (!\Counter_8bit|wren_reg~q\ & (!\Counter_8bit|address_reg\(15) & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|wren_reg~q\,
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N14
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3) = (!\Counter_8bit|address_reg\(14) & (!\Counter_8bit|address_reg\(15) & !\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3));

-- Location: M9K_X64_Y55_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y57_N16
\DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = \Counter_8bit|address_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X46_Y57_N17
\DRAM|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X46_Y57_N28
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \DRAM|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X46_Y57_N29
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X46_Y57_N26
\DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \Counter_8bit|address_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X46_Y57_N27
\DRAM|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X46_Y57_N19
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \DRAM|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X47_Y53_N2
\DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (!\Counter_8bit|wren_reg~q\ & (!\Counter_8bit|address_reg\(15) & \Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|wren_reg~q\,
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N20
\DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\ = (!\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(14) & !\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\);

-- Location: M9K_X64_Y50_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N4
\DRAM|altsyncram_component|auto_generated|mux2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X52_Y57_N2
\DRAM|altsyncram_component|auto_generated|mux2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X46_Y53_N6
\DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(14) & !\Counter_8bit|wren_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|wren_reg~q\,
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N24
\DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\ = (\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(14) & !\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\);

-- Location: M9K_X51_Y70_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y53_N2
\DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\ = (\Counter_8bit|address_reg\(14) & (\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & !\Counter_8bit|wren_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datab => \Counter_8bit|address_reg\(13),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|wren_reg~q\,
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N0
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\ = (\Counter_8bit|address_reg\(14) & (\Counter_8bit|address_reg\(15) & \Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\);

-- Location: M9K_X51_Y67_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y53_N30
\DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\ = (!\Counter_8bit|address_reg\(14) & (!\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & !\Counter_8bit|wren_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datab => \Counter_8bit|address_reg\(13),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|wren_reg~q\,
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\ = (!\Counter_8bit|address_reg\(14) & (\Counter_8bit|address_reg\(15) & !\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\);

-- Location: M9K_X51_Y48_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y53_N18
\DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|address_reg\(14) & !\Counter_8bit|wren_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|wren_reg~q\,
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\);

-- Location: LCCOMB_X46_Y53_N8
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\ = (!\Counter_8bit|address_reg\(14) & (\Counter_8bit|address_reg\(15) & \Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(14),
	datac => \Counter_8bit|address_reg\(15),
	datad => \Counter_8bit|address_reg\(13),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\);

-- Location: M9K_X51_Y63_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N24
\DRAM|altsyncram_component|auto_generated|mux2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\) # 
-- (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ & 
-- ((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X52_Y57_N30
\DRAM|altsyncram_component|auto_generated|mux2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X48_Y57_N20
\DRAM|altsyncram_component|auto_generated|mux2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: M9K_X37_Y69_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y53_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y48_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\) # 
-- ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ & 
-- !\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: M9K_X37_Y71_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a57~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a49~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: M9K_X51_Y49_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y56_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: M9K_X37_Y68_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y57_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N26
\DRAM|altsyncram_component|auto_generated|mux2|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: LCCOMB_X48_Y57_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: M9K_X37_Y58_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y64_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y56_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y52_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N20
\DRAM|altsyncram_component|auto_generated|mux2|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: LCCOMB_X38_Y57_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: M9K_X64_Y61_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y58_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y51_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N12
\DRAM|altsyncram_component|auto_generated|mux2|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a18~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: M9K_X37_Y65_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X48_Y57_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: LCCOMB_X48_Y57_N6
\DRAM|altsyncram_component|auto_generated|mux2|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: M9K_X51_Y62_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y47_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N6
\DRAM|altsyncram_component|auto_generated|mux2|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: M9K_X51_Y64_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y71_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N16
\DRAM|altsyncram_component|auto_generated|mux2|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\) # 
-- ((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ & 
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: M9K_X51_Y57_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y55_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y53_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y52_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N22
\DRAM|altsyncram_component|auto_generated|mux2|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: LCCOMB_X52_Y57_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\) # 
-- ((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & 
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: LCCOMB_X48_Y57_N12
\DRAM|altsyncram_component|auto_generated|mux2|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X51_Y66_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y59_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y58_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y49_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N10
\DRAM|altsyncram_component|auto_generated|mux2|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: LCCOMB_X52_Y57_N20
\DRAM|altsyncram_component|auto_generated|mux2|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: M9K_X37_Y62_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y70_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y61_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y49_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\) # 
-- ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ & 
-- !\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: LCCOMB_X38_Y57_N26
\DRAM|altsyncram_component|auto_generated|mux2|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: LCCOMB_X48_Y57_N10
\DRAM|altsyncram_component|auto_generated|mux2|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: M9K_X37_Y66_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y54_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y51_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N4
\DRAM|altsyncram_component|auto_generated|mux2|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: M9K_X37_Y67_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N10
\DRAM|altsyncram_component|auto_generated|mux2|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: M9K_X51_Y56_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y63_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y60_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y51_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: LCCOMB_X48_Y57_N16
\DRAM|altsyncram_component|auto_generated|mux2|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: LCCOMB_X48_Y57_N30
\DRAM|altsyncram_component|auto_generated|mux2|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: M9K_X37_Y60_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y50_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y52_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N0
\DRAM|altsyncram_component|auto_generated|mux2|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\) # 
-- ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- !\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M9K_X64_Y54_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X48_Y57_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: M9K_X51_Y65_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y59_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y50_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N16
\DRAM|altsyncram_component|auto_generated|mux2|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: M9K_X51_Y69_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: LCCOMB_X47_Y57_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: LCCOMB_X48_Y57_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: M9K_X64_Y53_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y57_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y48_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y59_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y57_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: LCCOMB_X48_Y57_N4
\DRAM|altsyncram_component|auto_generated|mux2|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: M9K_X51_Y72_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y54_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y55_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y47_N0
\DRAM|altsyncram_component|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DRAM:DRAM|altsyncram:altsyncram_component|altsyncram_djf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y57_N22
\DRAM|altsyncram_component|auto_generated|mux2|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: LCCOMB_X47_Y57_N24
\DRAM|altsyncram_component|auto_generated|mux2|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: LCCOMB_X48_Y57_N26
\DRAM|altsyncram_component|auto_generated|mux2|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: FF_X48_Y57_N13
\Transmitter|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(3));

-- Location: FF_X48_Y57_N15
\Transmitter|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(1));

-- Location: FF_X48_Y57_N21
\Transmitter|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(0));

-- Location: LCCOMB_X48_Y57_N24
\Transmitter|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Mux0~2_combout\ = (\Transmitter|bit_pos\(0) & ((\Transmitter|data\(1)) # ((\Transmitter|bit_pos\(1))))) # (!\Transmitter|bit_pos\(0) & (((!\Transmitter|bit_pos\(1) & \Transmitter|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|bit_pos\(0),
	datab => \Transmitter|data\(1),
	datac => \Transmitter|bit_pos\(1),
	datad => \Transmitter|data\(0),
	combout => \Transmitter|Mux0~2_combout\);

-- Location: FF_X48_Y57_N7
\Transmitter|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(2));

-- Location: LCCOMB_X48_Y57_N22
\Transmitter|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Mux0~3_combout\ = (\Transmitter|Mux0~2_combout\ & ((\Transmitter|data\(3)) # ((!\Transmitter|bit_pos\(1))))) # (!\Transmitter|Mux0~2_combout\ & (((\Transmitter|bit_pos\(1) & \Transmitter|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|data\(3),
	datab => \Transmitter|Mux0~2_combout\,
	datac => \Transmitter|bit_pos\(1),
	datad => \Transmitter|data\(2),
	combout => \Transmitter|Mux0~3_combout\);

-- Location: FF_X48_Y57_N27
\Transmitter|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(7));

-- Location: FF_X48_Y57_N19
\Transmitter|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(6));

-- Location: FF_X48_Y57_N31
\Transmitter|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(5));

-- Location: FF_X48_Y57_N11
\Transmitter|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\,
	ena => \Transmitter|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|data\(4));

-- Location: LCCOMB_X48_Y57_N0
\Transmitter|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Mux0~0_combout\ = (\Transmitter|bit_pos\(0) & ((\Transmitter|data\(5)) # ((\Transmitter|bit_pos\(1))))) # (!\Transmitter|bit_pos\(0) & (((!\Transmitter|bit_pos\(1) & \Transmitter|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|bit_pos\(0),
	datab => \Transmitter|data\(5),
	datac => \Transmitter|bit_pos\(1),
	datad => \Transmitter|data\(4),
	combout => \Transmitter|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y57_N2
\Transmitter|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Mux0~1_combout\ = (\Transmitter|bit_pos\(1) & ((\Transmitter|Mux0~0_combout\ & (\Transmitter|data\(7))) # (!\Transmitter|Mux0~0_combout\ & ((\Transmitter|data\(6)))))) # (!\Transmitter|bit_pos\(1) & (((\Transmitter|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|data\(7),
	datab => \Transmitter|data\(6),
	datac => \Transmitter|bit_pos\(1),
	datad => \Transmitter|Mux0~0_combout\,
	combout => \Transmitter|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y55_N12
\Transmitter|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector7~2_combout\ = (\Transmitter|test[0]~15_combout\ & ((\Transmitter|bit_pos\(2) & ((\Transmitter|Mux0~1_combout\))) # (!\Transmitter|bit_pos\(2) & (\Transmitter|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test[0]~15_combout\,
	datab => \Transmitter|Mux0~3_combout\,
	datac => \Transmitter|bit_pos\(2),
	datad => \Transmitter|Mux0~1_combout\,
	combout => \Transmitter|Selector7~2_combout\);

-- Location: LCCOMB_X47_Y55_N14
\Transmitter|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector7~0_combout\ = (!\Baud_Rate|Equal0~2_combout\ & ((\Transmitter|state.TX_STATE_START~q\) # (\Transmitter|state.TX_STATE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate|Equal0~2_combout\,
	datac => \Transmitter|state.TX_STATE_START~q\,
	datad => \Transmitter|state.TX_STATE_DATA~q\,
	combout => \Transmitter|Selector7~0_combout\);

-- Location: LCCOMB_X47_Y55_N4
\Transmitter|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector7~1_combout\ = (!\Transmitter|Tx~q\ & (((\Transmitter|Selector7~0_combout\) # (\Transmitter|state.TX_STATE_STOP~q\)) # (!\Transmitter|state.TX_STATE_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|state.TX_STATE_IDLE~q\,
	datab => \Transmitter|Selector7~0_combout\,
	datac => \Transmitter|state.TX_STATE_STOP~q\,
	datad => \Transmitter|Tx~q\,
	combout => \Transmitter|Selector7~1_combout\);

-- Location: LCCOMB_X47_Y55_N20
\Transmitter|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Selector7~3_combout\ = (!\Transmitter|Selector7~2_combout\ & (!\Transmitter|Selector7~1_combout\ & ((!\Baud_Rate|Equal0~2_combout\) # (!\Transmitter|state.TX_STATE_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|Selector7~2_combout\,
	datab => \Transmitter|state.TX_STATE_STOP~q\,
	datac => \Transmitter|Selector7~1_combout\,
	datad => \Baud_Rate|Equal0~2_combout\,
	combout => \Transmitter|Selector7~3_combout\);

-- Location: FF_X47_Y55_N21
\Transmitter|Tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Transmitter|Selector7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx~q\);

-- Location: LCCOMB_X47_Y55_N22
\Transmitter|state_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|state_out~2_combout\ = (\Transmitter|state.TX_STATE_DATA~q\) # (!\Transmitter|state.TX_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|state.TX_STATE_DATA~q\,
	datad => \Transmitter|state.TX_STATE_IDLE~q\,
	combout => \Transmitter|state_out~2_combout\);

-- Location: LCCOMB_X47_Y55_N18
\Transmitter|state_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|state_out~3_combout\ = (\Transmitter|state.TX_STATE_START~q\) # (!\Transmitter|state.TX_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|state.TX_STATE_START~q\,
	datad => \Transmitter|state.TX_STATE_IDLE~q\,
	combout => \Transmitter|state_out~3_combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_count(6) <= \count[6]~output_o\;

ww_count(7) <= \count[7]~output_o\;

ww_address_out(0) <= \address_out[0]~output_o\;

ww_address_out(1) <= \address_out[1]~output_o\;

ww_address_out(2) <= \address_out[2]~output_o\;

ww_address_out(3) <= \address_out[3]~output_o\;

ww_address_out(4) <= \address_out[4]~output_o\;

ww_address_out(5) <= \address_out[5]~output_o\;

ww_address_out(6) <= \address_out[6]~output_o\;

ww_address_out(7) <= \address_out[7]~output_o\;

ww_address_out(8) <= \address_out[8]~output_o\;

ww_address_out(9) <= \address_out[9]~output_o\;

ww_address_out(10) <= \address_out[10]~output_o\;

ww_address_out(11) <= \address_out[11]~output_o\;

ww_address_out(12) <= \address_out[12]~output_o\;

ww_address_out(13) <= \address_out[13]~output_o\;

ww_address_out(14) <= \address_out[14]~output_o\;

ww_address_out(15) <= \address_out[15]~output_o\;

ww_out_val(0) <= \out_val[0]~output_o\;

ww_out_val(1) <= \out_val[1]~output_o\;

ww_out_val(2) <= \out_val[2]~output_o\;

ww_out_val(3) <= \out_val[3]~output_o\;

ww_out_val(4) <= \out_val[4]~output_o\;

ww_out_val(5) <= \out_val[5]~output_o\;

ww_out_val(6) <= \out_val[6]~output_o\;

ww_out_val(7) <= \out_val[7]~output_o\;

ww_clkout <= \clkout~output_o\;

ww_wren_out <= \wren_out~output_o\;

ww_Tx_bit <= \Tx_bit~output_o\;

ww_TxBusy <= \TxBusy~output_o\;

ww_state_out(0) <= \state_out[0]~output_o\;

ww_state_out(1) <= \state_out[1]~output_o\;

ww_Clock_trans <= \Clock_trans~output_o\;

ww_test_out_pin(0) <= \test_out_pin[0]~output_o\;

ww_test_out_pin(1) <= \test_out_pin[1]~output_o\;

ww_test_out_pin(2) <= \test_out_pin[2]~output_o\;

ww_test_out_pin(3) <= \test_out_pin[3]~output_o\;

ww_test_out_pin(4) <= \test_out_pin[4]~output_o\;

ww_test_out_pin(5) <= \test_out_pin[5]~output_o\;

ww_test_out_pin(6) <= \test_out_pin[6]~output_o\;

ww_test_out_pin(7) <= \test_out_pin[7]~output_o\;

ww_test_out_pin(8) <= \test_out_pin[8]~output_o\;

ww_test_out_pin(9) <= \test_out_pin[9]~output_o\;

ww_test_out_pin(10) <= \test_out_pin[10]~output_o\;

ww_test_out_pin(11) <= \test_out_pin[11]~output_o\;

ww_test_out_pin(12) <= \test_out_pin[12]~output_o\;

ww_test_out_pin(13) <= \test_out_pin[13]~output_o\;

ww_test_out_pin(14) <= \test_out_pin[14]~output_o\;

ww_test_out_pin(15) <= \test_out_pin[15]~output_o\;
END structure;


