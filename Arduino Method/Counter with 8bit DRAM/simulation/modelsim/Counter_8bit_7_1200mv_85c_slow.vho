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

-- DATE "01/18/2023 14:16:18"

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
	Tx_bit : BUFFER std_logic_vector(7 DOWNTO 0);
	TxBusy : BUFFER std_logic;
	state_out : BUFFER std_logic_vector(1 DOWNTO 0);
	Clock_trans : BUFFER std_logic;
	test_out_pin : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Top_Level;

-- Design Ports Information
-- count[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_val[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkout	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_out	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[2]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[3]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_bit[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxBusy	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_trans	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[1]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[5]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[7]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[13]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_out_pin[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Tx_bit : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \Slow_Clock|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Tx_bit[0]~output_o\ : std_logic;
SIGNAL \Tx_bit[1]~output_o\ : std_logic;
SIGNAL \Tx_bit[2]~output_o\ : std_logic;
SIGNAL \Tx_bit[3]~output_o\ : std_logic;
SIGNAL \Tx_bit[4]~output_o\ : std_logic;
SIGNAL \Tx_bit[5]~output_o\ : std_logic;
SIGNAL \Tx_bit[6]~output_o\ : std_logic;
SIGNAL \Tx_bit[7]~output_o\ : std_logic;
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
SIGNAL \Slow_Clock|Add0~0_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~1\ : std_logic;
SIGNAL \Slow_Clock|Add0~2_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~3\ : std_logic;
SIGNAL \Slow_Clock|Add0~4_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~5\ : std_logic;
SIGNAL \Slow_Clock|Add0~6_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~7\ : std_logic;
SIGNAL \Slow_Clock|Add0~8_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~9\ : std_logic;
SIGNAL \Slow_Clock|Add0~10_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~11\ : std_logic;
SIGNAL \Slow_Clock|Add0~12_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~13\ : std_logic;
SIGNAL \Slow_Clock|Add0~14_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~0_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~15\ : std_logic;
SIGNAL \Slow_Clock|Add0~16_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~1_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~17\ : std_logic;
SIGNAL \Slow_Clock|Add0~18_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~19\ : std_logic;
SIGNAL \Slow_Clock|Add0~20_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~21\ : std_logic;
SIGNAL \Slow_Clock|Add0~22_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~2_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~23\ : std_logic;
SIGNAL \Slow_Clock|Add0~24_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~25\ : std_logic;
SIGNAL \Slow_Clock|Add0~26_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~3_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~27\ : std_logic;
SIGNAL \Slow_Clock|Add0~28_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~4_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~29\ : std_logic;
SIGNAL \Slow_Clock|Add0~30_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~31\ : std_logic;
SIGNAL \Slow_Clock|Add0~32_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~5_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~33\ : std_logic;
SIGNAL \Slow_Clock|Add0~34_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~6_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~35\ : std_logic;
SIGNAL \Slow_Clock|Add0~36_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~7_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~37\ : std_logic;
SIGNAL \Slow_Clock|Add0~38_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~39\ : std_logic;
SIGNAL \Slow_Clock|Add0~40_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~41\ : std_logic;
SIGNAL \Slow_Clock|Add0~42_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~8_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~43\ : std_logic;
SIGNAL \Slow_Clock|Add0~44_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~9_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~45\ : std_logic;
SIGNAL \Slow_Clock|Add0~46_combout\ : std_logic;
SIGNAL \Slow_Clock|Add0~47\ : std_logic;
SIGNAL \Slow_Clock|Add0~48_combout\ : std_logic;
SIGNAL \Slow_Clock|counter~10_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~6_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~5_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~3_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~1_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~2_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~0_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~4_combout\ : std_logic;
SIGNAL \Slow_Clock|Equal0~7_combout\ : std_logic;
SIGNAL \Slow_Clock|clkout~0_combout\ : std_logic;
SIGNAL \Slow_Clock|clkout~feeder_combout\ : std_logic;
SIGNAL \Slow_Clock|clkout~q\ : std_logic;
SIGNAL \Slow_Clock|clkout~clkctrl_outclk\ : std_logic;
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
SIGNAL \Transmitter|test[0]~45_combout\ : std_logic;
SIGNAL \Counter_8bit|wren_reg~0_combout\ : std_logic;
SIGNAL \Counter_8bit|wren_reg~q\ : std_logic;
SIGNAL \Counter_8bit|address_reg[0]~17\ : std_logic;
SIGNAL \Counter_8bit|address_reg[1]~18_combout\ : std_logic;
SIGNAL \Transmitter|test[1]~15_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[1]~19\ : std_logic;
SIGNAL \Counter_8bit|address_reg[2]~20_combout\ : std_logic;
SIGNAL \Transmitter|test[1]~16\ : std_logic;
SIGNAL \Transmitter|test[2]~17_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[2]~21\ : std_logic;
SIGNAL \Counter_8bit|address_reg[3]~22_combout\ : std_logic;
SIGNAL \Transmitter|test[2]~18\ : std_logic;
SIGNAL \Transmitter|test[3]~19_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[3]~23\ : std_logic;
SIGNAL \Counter_8bit|address_reg[4]~24_combout\ : std_logic;
SIGNAL \Transmitter|test[3]~20\ : std_logic;
SIGNAL \Transmitter|test[4]~21_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[4]~25\ : std_logic;
SIGNAL \Counter_8bit|address_reg[5]~26_combout\ : std_logic;
SIGNAL \Transmitter|test[4]~22\ : std_logic;
SIGNAL \Transmitter|test[5]~23_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[5]~27\ : std_logic;
SIGNAL \Counter_8bit|address_reg[6]~28_combout\ : std_logic;
SIGNAL \Transmitter|test[5]~24\ : std_logic;
SIGNAL \Transmitter|test[6]~25_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[6]~29\ : std_logic;
SIGNAL \Counter_8bit|address_reg[7]~30_combout\ : std_logic;
SIGNAL \Transmitter|test[6]~26\ : std_logic;
SIGNAL \Transmitter|test[7]~27_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[7]~31\ : std_logic;
SIGNAL \Counter_8bit|address_reg[8]~32_combout\ : std_logic;
SIGNAL \Transmitter|test[7]~28\ : std_logic;
SIGNAL \Transmitter|test[8]~29_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[8]~33\ : std_logic;
SIGNAL \Counter_8bit|address_reg[9]~34_combout\ : std_logic;
SIGNAL \Transmitter|test[8]~30\ : std_logic;
SIGNAL \Transmitter|test[9]~31_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[9]~35\ : std_logic;
SIGNAL \Counter_8bit|address_reg[10]~36_combout\ : std_logic;
SIGNAL \Transmitter|test[9]~32\ : std_logic;
SIGNAL \Transmitter|test[10]~33_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[10]~37\ : std_logic;
SIGNAL \Counter_8bit|address_reg[11]~38_combout\ : std_logic;
SIGNAL \Transmitter|test[10]~34\ : std_logic;
SIGNAL \Transmitter|test[11]~35_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[11]~39\ : std_logic;
SIGNAL \Counter_8bit|address_reg[12]~40_combout\ : std_logic;
SIGNAL \Transmitter|test[11]~36\ : std_logic;
SIGNAL \Transmitter|test[12]~37_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[12]~41\ : std_logic;
SIGNAL \Counter_8bit|address_reg[13]~42_combout\ : std_logic;
SIGNAL \Transmitter|test[12]~38\ : std_logic;
SIGNAL \Transmitter|test[13]~39_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[13]~43\ : std_logic;
SIGNAL \Counter_8bit|address_reg[14]~44_combout\ : std_logic;
SIGNAL \Transmitter|test[13]~40\ : std_logic;
SIGNAL \Transmitter|test[14]~41_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[14]~45\ : std_logic;
SIGNAL \Counter_8bit|address_reg[15]~46_combout\ : std_logic;
SIGNAL \Counter_8bit|address_reg[15]~feeder_combout\ : std_logic;
SIGNAL \Transmitter|test[14]~42\ : std_logic;
SIGNAL \Transmitter|test[15]~43_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \Transmitter|Tx[0]~0_combout\ : std_logic;
SIGNAL \DRAM|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Counter_8bit|counter_up\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Counter_8bit|address_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Transmitter|test\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Slow_Clock|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Transmitter|Tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\ : std_logic;
SIGNAL \Counter_8bit|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Transmitter|ALT_INV_Tx\ : std_logic_vector(0 DOWNTO 0);
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

\Slow_Clock|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Slow_Clock|clkout~q\);
\Slow_Clock|ALT_INV_clkout~clkctrl_outclk\ <= NOT \Slow_Clock|clkout~clkctrl_outclk\;
\Counter_8bit|ALT_INV_LessThan0~2_combout\ <= NOT \Counter_8bit|LessThan0~2_combout\;
\Transmitter|ALT_INV_Tx\(0) <= NOT \Transmitter|Tx\(0);
\Counter_8bit|ALT_INV_wren_reg~q\ <= NOT \Counter_8bit|wren_reg~q\;

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X60_Y0_N9
\clkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Slow_Clock|clkout~q\,
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

-- Location: IOOBUF_X107_Y0_N2
\Tx_bit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|ALT_INV_Tx\(0),
	devoe => ww_devoe,
	o => \Tx_bit[0]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\Tx_bit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(1),
	devoe => ww_devoe,
	o => \Tx_bit[1]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\Tx_bit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(2),
	devoe => ww_devoe,
	o => \Tx_bit[2]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\Tx_bit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(3),
	devoe => ww_devoe,
	o => \Tx_bit[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Tx_bit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(4),
	devoe => ww_devoe,
	o => \Tx_bit[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Tx_bit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(5),
	devoe => ww_devoe,
	o => \Tx_bit[5]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\Tx_bit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(6),
	devoe => ww_devoe,
	o => \Tx_bit[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\Tx_bit[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Transmitter|Tx\(7),
	devoe => ww_devoe,
	o => \Tx_bit[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\TxBusy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TxBusy~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\state_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state_out[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\state_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state_out[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Clock_trans~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Slow_Clock|clkout~q\,
	devoe => ww_devoe,
	o => \Clock_trans~output_o\);

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X115_Y49_N2
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: LCCOMB_X73_Y30_N8
\Slow_Clock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~0_combout\ = \Slow_Clock|counter\(0) $ (VCC)
-- \Slow_Clock|Add0~1\ = CARRY(\Slow_Clock|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(0),
	datad => VCC,
	combout => \Slow_Clock|Add0~0_combout\,
	cout => \Slow_Clock|Add0~1\);

-- Location: FF_X73_Y30_N9
\Slow_Clock|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(0));

-- Location: LCCOMB_X73_Y30_N10
\Slow_Clock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~2_combout\ = (\Slow_Clock|counter\(1) & (\Slow_Clock|Add0~1\ & VCC)) # (!\Slow_Clock|counter\(1) & (!\Slow_Clock|Add0~1\))
-- \Slow_Clock|Add0~3\ = CARRY((!\Slow_Clock|counter\(1) & !\Slow_Clock|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(1),
	datad => VCC,
	cin => \Slow_Clock|Add0~1\,
	combout => \Slow_Clock|Add0~2_combout\,
	cout => \Slow_Clock|Add0~3\);

-- Location: FF_X73_Y30_N11
\Slow_Clock|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(1));

-- Location: LCCOMB_X73_Y30_N12
\Slow_Clock|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~4_combout\ = (\Slow_Clock|counter\(2) & ((GND) # (!\Slow_Clock|Add0~3\))) # (!\Slow_Clock|counter\(2) & (\Slow_Clock|Add0~3\ $ (GND)))
-- \Slow_Clock|Add0~5\ = CARRY((\Slow_Clock|counter\(2)) # (!\Slow_Clock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(2),
	datad => VCC,
	cin => \Slow_Clock|Add0~3\,
	combout => \Slow_Clock|Add0~4_combout\,
	cout => \Slow_Clock|Add0~5\);

-- Location: FF_X73_Y30_N13
\Slow_Clock|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(2));

-- Location: LCCOMB_X73_Y30_N14
\Slow_Clock|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~6_combout\ = (\Slow_Clock|counter\(3) & (\Slow_Clock|Add0~5\ & VCC)) # (!\Slow_Clock|counter\(3) & (!\Slow_Clock|Add0~5\))
-- \Slow_Clock|Add0~7\ = CARRY((!\Slow_Clock|counter\(3) & !\Slow_Clock|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(3),
	datad => VCC,
	cin => \Slow_Clock|Add0~5\,
	combout => \Slow_Clock|Add0~6_combout\,
	cout => \Slow_Clock|Add0~7\);

-- Location: FF_X73_Y30_N15
\Slow_Clock|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(3));

-- Location: LCCOMB_X73_Y30_N16
\Slow_Clock|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~8_combout\ = (\Slow_Clock|counter\(4) & ((GND) # (!\Slow_Clock|Add0~7\))) # (!\Slow_Clock|counter\(4) & (\Slow_Clock|Add0~7\ $ (GND)))
-- \Slow_Clock|Add0~9\ = CARRY((\Slow_Clock|counter\(4)) # (!\Slow_Clock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(4),
	datad => VCC,
	cin => \Slow_Clock|Add0~7\,
	combout => \Slow_Clock|Add0~8_combout\,
	cout => \Slow_Clock|Add0~9\);

-- Location: FF_X73_Y30_N17
\Slow_Clock|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(4));

-- Location: LCCOMB_X73_Y30_N18
\Slow_Clock|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~10_combout\ = (\Slow_Clock|counter\(5) & (\Slow_Clock|Add0~9\ & VCC)) # (!\Slow_Clock|counter\(5) & (!\Slow_Clock|Add0~9\))
-- \Slow_Clock|Add0~11\ = CARRY((!\Slow_Clock|counter\(5) & !\Slow_Clock|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(5),
	datad => VCC,
	cin => \Slow_Clock|Add0~9\,
	combout => \Slow_Clock|Add0~10_combout\,
	cout => \Slow_Clock|Add0~11\);

-- Location: FF_X73_Y30_N19
\Slow_Clock|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(5));

-- Location: LCCOMB_X73_Y30_N20
\Slow_Clock|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~12_combout\ = (\Slow_Clock|counter\(6) & ((GND) # (!\Slow_Clock|Add0~11\))) # (!\Slow_Clock|counter\(6) & (\Slow_Clock|Add0~11\ $ (GND)))
-- \Slow_Clock|Add0~13\ = CARRY((\Slow_Clock|counter\(6)) # (!\Slow_Clock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(6),
	datad => VCC,
	cin => \Slow_Clock|Add0~11\,
	combout => \Slow_Clock|Add0~12_combout\,
	cout => \Slow_Clock|Add0~13\);

-- Location: FF_X73_Y30_N21
\Slow_Clock|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(6));

-- Location: LCCOMB_X73_Y30_N22
\Slow_Clock|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~14_combout\ = (\Slow_Clock|counter\(7) & (\Slow_Clock|Add0~13\ & VCC)) # (!\Slow_Clock|counter\(7) & (!\Slow_Clock|Add0~13\))
-- \Slow_Clock|Add0~15\ = CARRY((!\Slow_Clock|counter\(7) & !\Slow_Clock|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(7),
	datad => VCC,
	cin => \Slow_Clock|Add0~13\,
	combout => \Slow_Clock|Add0~14_combout\,
	cout => \Slow_Clock|Add0~15\);

-- Location: LCCOMB_X72_Y29_N24
\Slow_Clock|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~0_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Equal0~7_combout\,
	datac => \Slow_Clock|Add0~14_combout\,
	combout => \Slow_Clock|counter~0_combout\);

-- Location: FF_X72_Y29_N25
\Slow_Clock|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(7));

-- Location: LCCOMB_X73_Y30_N24
\Slow_Clock|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~16_combout\ = (\Slow_Clock|counter\(8) & ((GND) # (!\Slow_Clock|Add0~15\))) # (!\Slow_Clock|counter\(8) & (\Slow_Clock|Add0~15\ $ (GND)))
-- \Slow_Clock|Add0~17\ = CARRY((\Slow_Clock|counter\(8)) # (!\Slow_Clock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(8),
	datad => VCC,
	cin => \Slow_Clock|Add0~15\,
	combout => \Slow_Clock|Add0~16_combout\,
	cout => \Slow_Clock|Add0~17\);

-- Location: LCCOMB_X73_Y30_N6
\Slow_Clock|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~1_combout\ = (\Slow_Clock|Add0~16_combout\ & !\Slow_Clock|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Add0~16_combout\,
	datac => \Slow_Clock|Equal0~7_combout\,
	combout => \Slow_Clock|counter~1_combout\);

-- Location: FF_X73_Y30_N7
\Slow_Clock|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(8));

-- Location: LCCOMB_X73_Y30_N26
\Slow_Clock|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~18_combout\ = (\Slow_Clock|counter\(9) & (\Slow_Clock|Add0~17\ & VCC)) # (!\Slow_Clock|counter\(9) & (!\Slow_Clock|Add0~17\))
-- \Slow_Clock|Add0~19\ = CARRY((!\Slow_Clock|counter\(9) & !\Slow_Clock|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(9),
	datad => VCC,
	cin => \Slow_Clock|Add0~17\,
	combout => \Slow_Clock|Add0~18_combout\,
	cout => \Slow_Clock|Add0~19\);

-- Location: FF_X73_Y30_N27
\Slow_Clock|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(9));

-- Location: LCCOMB_X73_Y30_N28
\Slow_Clock|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~20_combout\ = (\Slow_Clock|counter\(10) & ((GND) # (!\Slow_Clock|Add0~19\))) # (!\Slow_Clock|counter\(10) & (\Slow_Clock|Add0~19\ $ (GND)))
-- \Slow_Clock|Add0~21\ = CARRY((\Slow_Clock|counter\(10)) # (!\Slow_Clock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(10),
	datad => VCC,
	cin => \Slow_Clock|Add0~19\,
	combout => \Slow_Clock|Add0~20_combout\,
	cout => \Slow_Clock|Add0~21\);

-- Location: FF_X73_Y30_N29
\Slow_Clock|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(10));

-- Location: LCCOMB_X73_Y30_N30
\Slow_Clock|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~22_combout\ = (\Slow_Clock|counter\(11) & (\Slow_Clock|Add0~21\ & VCC)) # (!\Slow_Clock|counter\(11) & (!\Slow_Clock|Add0~21\))
-- \Slow_Clock|Add0~23\ = CARRY((!\Slow_Clock|counter\(11) & !\Slow_Clock|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(11),
	datad => VCC,
	cin => \Slow_Clock|Add0~21\,
	combout => \Slow_Clock|Add0~22_combout\,
	cout => \Slow_Clock|Add0~23\);

-- Location: LCCOMB_X73_Y30_N4
\Slow_Clock|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~2_combout\ = (\Slow_Clock|Add0~22_combout\ & !\Slow_Clock|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|Add0~22_combout\,
	datad => \Slow_Clock|Equal0~7_combout\,
	combout => \Slow_Clock|counter~2_combout\);

-- Location: FF_X73_Y30_N5
\Slow_Clock|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(11));

-- Location: LCCOMB_X73_Y29_N0
\Slow_Clock|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~24_combout\ = (\Slow_Clock|counter\(12) & ((GND) # (!\Slow_Clock|Add0~23\))) # (!\Slow_Clock|counter\(12) & (\Slow_Clock|Add0~23\ $ (GND)))
-- \Slow_Clock|Add0~25\ = CARRY((\Slow_Clock|counter\(12)) # (!\Slow_Clock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(12),
	datad => VCC,
	cin => \Slow_Clock|Add0~23\,
	combout => \Slow_Clock|Add0~24_combout\,
	cout => \Slow_Clock|Add0~25\);

-- Location: FF_X73_Y29_N1
\Slow_Clock|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(12));

-- Location: LCCOMB_X73_Y29_N2
\Slow_Clock|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~26_combout\ = (\Slow_Clock|counter\(13) & (\Slow_Clock|Add0~25\ & VCC)) # (!\Slow_Clock|counter\(13) & (!\Slow_Clock|Add0~25\))
-- \Slow_Clock|Add0~27\ = CARRY((!\Slow_Clock|counter\(13) & !\Slow_Clock|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(13),
	datad => VCC,
	cin => \Slow_Clock|Add0~25\,
	combout => \Slow_Clock|Add0~26_combout\,
	cout => \Slow_Clock|Add0~27\);

-- Location: LCCOMB_X73_Y29_N30
\Slow_Clock|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~3_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~26_combout\,
	combout => \Slow_Clock|counter~3_combout\);

-- Location: FF_X73_Y29_N31
\Slow_Clock|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(13));

-- Location: LCCOMB_X73_Y29_N4
\Slow_Clock|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~28_combout\ = (\Slow_Clock|counter\(14) & ((GND) # (!\Slow_Clock|Add0~27\))) # (!\Slow_Clock|counter\(14) & (\Slow_Clock|Add0~27\ $ (GND)))
-- \Slow_Clock|Add0~29\ = CARRY((\Slow_Clock|counter\(14)) # (!\Slow_Clock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(14),
	datad => VCC,
	cin => \Slow_Clock|Add0~27\,
	combout => \Slow_Clock|Add0~28_combout\,
	cout => \Slow_Clock|Add0~29\);

-- Location: LCCOMB_X72_Y29_N8
\Slow_Clock|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~4_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~28_combout\,
	combout => \Slow_Clock|counter~4_combout\);

-- Location: FF_X72_Y29_N9
\Slow_Clock|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(14));

-- Location: LCCOMB_X73_Y29_N6
\Slow_Clock|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~30_combout\ = (\Slow_Clock|counter\(15) & (\Slow_Clock|Add0~29\ & VCC)) # (!\Slow_Clock|counter\(15) & (!\Slow_Clock|Add0~29\))
-- \Slow_Clock|Add0~31\ = CARRY((!\Slow_Clock|counter\(15) & !\Slow_Clock|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(15),
	datad => VCC,
	cin => \Slow_Clock|Add0~29\,
	combout => \Slow_Clock|Add0~30_combout\,
	cout => \Slow_Clock|Add0~31\);

-- Location: FF_X73_Y29_N7
\Slow_Clock|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(15));

-- Location: LCCOMB_X73_Y29_N8
\Slow_Clock|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~32_combout\ = (\Slow_Clock|counter\(16) & ((GND) # (!\Slow_Clock|Add0~31\))) # (!\Slow_Clock|counter\(16) & (\Slow_Clock|Add0~31\ $ (GND)))
-- \Slow_Clock|Add0~33\ = CARRY((\Slow_Clock|counter\(16)) # (!\Slow_Clock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(16),
	datad => VCC,
	cin => \Slow_Clock|Add0~31\,
	combout => \Slow_Clock|Add0~32_combout\,
	cout => \Slow_Clock|Add0~33\);

-- Location: LCCOMB_X73_Y29_N28
\Slow_Clock|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~5_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|Equal0~7_combout\,
	datac => \Slow_Clock|Add0~32_combout\,
	combout => \Slow_Clock|counter~5_combout\);

-- Location: FF_X73_Y29_N29
\Slow_Clock|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(16));

-- Location: LCCOMB_X73_Y29_N10
\Slow_Clock|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~34_combout\ = (\Slow_Clock|counter\(17) & (\Slow_Clock|Add0~33\ & VCC)) # (!\Slow_Clock|counter\(17) & (!\Slow_Clock|Add0~33\))
-- \Slow_Clock|Add0~35\ = CARRY((!\Slow_Clock|counter\(17) & !\Slow_Clock|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(17),
	datad => VCC,
	cin => \Slow_Clock|Add0~33\,
	combout => \Slow_Clock|Add0~34_combout\,
	cout => \Slow_Clock|Add0~35\);

-- Location: LCCOMB_X73_Y29_N26
\Slow_Clock|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~6_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~34_combout\,
	combout => \Slow_Clock|counter~6_combout\);

-- Location: FF_X73_Y29_N27
\Slow_Clock|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(17));

-- Location: LCCOMB_X73_Y29_N12
\Slow_Clock|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~36_combout\ = (\Slow_Clock|counter\(18) & ((GND) # (!\Slow_Clock|Add0~35\))) # (!\Slow_Clock|counter\(18) & (\Slow_Clock|Add0~35\ $ (GND)))
-- \Slow_Clock|Add0~37\ = CARRY((\Slow_Clock|counter\(18)) # (!\Slow_Clock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(18),
	datad => VCC,
	cin => \Slow_Clock|Add0~35\,
	combout => \Slow_Clock|Add0~36_combout\,
	cout => \Slow_Clock|Add0~37\);

-- Location: LCCOMB_X72_Y29_N26
\Slow_Clock|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~7_combout\ = (\Slow_Clock|Add0~36_combout\ & !\Slow_Clock|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|Add0~36_combout\,
	datad => \Slow_Clock|Equal0~7_combout\,
	combout => \Slow_Clock|counter~7_combout\);

-- Location: FF_X72_Y29_N27
\Slow_Clock|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(18));

-- Location: LCCOMB_X73_Y29_N14
\Slow_Clock|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~38_combout\ = (\Slow_Clock|counter\(19) & (\Slow_Clock|Add0~37\ & VCC)) # (!\Slow_Clock|counter\(19) & (!\Slow_Clock|Add0~37\))
-- \Slow_Clock|Add0~39\ = CARRY((!\Slow_Clock|counter\(19) & !\Slow_Clock|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(19),
	datad => VCC,
	cin => \Slow_Clock|Add0~37\,
	combout => \Slow_Clock|Add0~38_combout\,
	cout => \Slow_Clock|Add0~39\);

-- Location: FF_X73_Y29_N15
\Slow_Clock|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(19));

-- Location: LCCOMB_X73_Y29_N16
\Slow_Clock|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~40_combout\ = (\Slow_Clock|counter\(20) & ((GND) # (!\Slow_Clock|Add0~39\))) # (!\Slow_Clock|counter\(20) & (\Slow_Clock|Add0~39\ $ (GND)))
-- \Slow_Clock|Add0~41\ = CARRY((\Slow_Clock|counter\(20)) # (!\Slow_Clock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(20),
	datad => VCC,
	cin => \Slow_Clock|Add0~39\,
	combout => \Slow_Clock|Add0~40_combout\,
	cout => \Slow_Clock|Add0~41\);

-- Location: FF_X73_Y29_N17
\Slow_Clock|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(20));

-- Location: LCCOMB_X73_Y29_N18
\Slow_Clock|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~42_combout\ = (\Slow_Clock|counter\(21) & (\Slow_Clock|Add0~41\ & VCC)) # (!\Slow_Clock|counter\(21) & (!\Slow_Clock|Add0~41\))
-- \Slow_Clock|Add0~43\ = CARRY((!\Slow_Clock|counter\(21) & !\Slow_Clock|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(21),
	datad => VCC,
	cin => \Slow_Clock|Add0~41\,
	combout => \Slow_Clock|Add0~42_combout\,
	cout => \Slow_Clock|Add0~43\);

-- Location: LCCOMB_X72_Y29_N6
\Slow_Clock|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~8_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~42_combout\,
	combout => \Slow_Clock|counter~8_combout\);

-- Location: FF_X72_Y29_N7
\Slow_Clock|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(21));

-- Location: LCCOMB_X73_Y29_N20
\Slow_Clock|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~44_combout\ = (\Slow_Clock|counter\(22) & ((GND) # (!\Slow_Clock|Add0~43\))) # (!\Slow_Clock|counter\(22) & (\Slow_Clock|Add0~43\ $ (GND)))
-- \Slow_Clock|Add0~45\ = CARRY((\Slow_Clock|counter\(22)) # (!\Slow_Clock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|counter\(22),
	datad => VCC,
	cin => \Slow_Clock|Add0~43\,
	combout => \Slow_Clock|Add0~44_combout\,
	cout => \Slow_Clock|Add0~45\);

-- Location: LCCOMB_X72_Y29_N28
\Slow_Clock|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~9_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~44_combout\,
	combout => \Slow_Clock|counter~9_combout\);

-- Location: FF_X72_Y29_N29
\Slow_Clock|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(22));

-- Location: LCCOMB_X73_Y29_N22
\Slow_Clock|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~46_combout\ = (\Slow_Clock|counter\(23) & (\Slow_Clock|Add0~45\ & VCC)) # (!\Slow_Clock|counter\(23) & (!\Slow_Clock|Add0~45\))
-- \Slow_Clock|Add0~47\ = CARRY((!\Slow_Clock|counter\(23) & !\Slow_Clock|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(23),
	datad => VCC,
	cin => \Slow_Clock|Add0~45\,
	combout => \Slow_Clock|Add0~46_combout\,
	cout => \Slow_Clock|Add0~47\);

-- Location: FF_X73_Y29_N23
\Slow_Clock|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(23));

-- Location: LCCOMB_X73_Y29_N24
\Slow_Clock|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Add0~48_combout\ = \Slow_Clock|Add0~47\ $ (\Slow_Clock|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Slow_Clock|counter\(24),
	cin => \Slow_Clock|Add0~47\,
	combout => \Slow_Clock|Add0~48_combout\);

-- Location: LCCOMB_X72_Y29_N10
\Slow_Clock|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|counter~10_combout\ = (!\Slow_Clock|Equal0~7_combout\ & \Slow_Clock|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Slow_Clock|Equal0~7_combout\,
	datad => \Slow_Clock|Add0~48_combout\,
	combout => \Slow_Clock|counter~10_combout\);

-- Location: FF_X72_Y29_N11
\Slow_Clock|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|counter\(24));

-- Location: LCCOMB_X72_Y29_N18
\Slow_Clock|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~6_combout\ = (!\Slow_Clock|counter\(21) & (!\Slow_Clock|counter\(20) & (!\Slow_Clock|counter\(23) & !\Slow_Clock|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(21),
	datab => \Slow_Clock|counter\(20),
	datac => \Slow_Clock|counter\(23),
	datad => \Slow_Clock|counter\(22),
	combout => \Slow_Clock|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y29_N30
\Slow_Clock|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~5_combout\ = (!\Slow_Clock|counter\(18) & (!\Slow_Clock|counter\(19) & (!\Slow_Clock|counter\(17) & !\Slow_Clock|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(18),
	datab => \Slow_Clock|counter\(19),
	datac => \Slow_Clock|counter\(17),
	datad => \Slow_Clock|counter\(16),
	combout => \Slow_Clock|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y29_N12
\Slow_Clock|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~3_combout\ = (!\Slow_Clock|counter\(14) & (!\Slow_Clock|counter\(12) & (!\Slow_Clock|counter\(15) & !\Slow_Clock|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(14),
	datab => \Slow_Clock|counter\(12),
	datac => \Slow_Clock|counter\(15),
	datad => \Slow_Clock|counter\(13),
	combout => \Slow_Clock|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y29_N2
\Slow_Clock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~1_combout\ = (!\Slow_Clock|counter\(4) & (!\Slow_Clock|counter\(7) & (!\Slow_Clock|counter\(6) & !\Slow_Clock|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(4),
	datab => \Slow_Clock|counter\(7),
	datac => \Slow_Clock|counter\(6),
	datad => \Slow_Clock|counter\(5),
	combout => \Slow_Clock|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y30_N2
\Slow_Clock|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~2_combout\ = (!\Slow_Clock|counter\(9) & (!\Slow_Clock|counter\(10) & (!\Slow_Clock|counter\(11) & !\Slow_Clock|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(9),
	datab => \Slow_Clock|counter\(10),
	datac => \Slow_Clock|counter\(11),
	datad => \Slow_Clock|counter\(8),
	combout => \Slow_Clock|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y30_N0
\Slow_Clock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~0_combout\ = (!\Slow_Clock|counter\(1) & (!\Slow_Clock|counter\(3) & (!\Slow_Clock|counter\(0) & !\Slow_Clock|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(1),
	datab => \Slow_Clock|counter\(3),
	datac => \Slow_Clock|counter\(0),
	datad => \Slow_Clock|counter\(2),
	combout => \Slow_Clock|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y29_N20
\Slow_Clock|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~4_combout\ = (\Slow_Clock|Equal0~3_combout\ & (\Slow_Clock|Equal0~1_combout\ & (\Slow_Clock|Equal0~2_combout\ & \Slow_Clock|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|Equal0~3_combout\,
	datab => \Slow_Clock|Equal0~1_combout\,
	datac => \Slow_Clock|Equal0~2_combout\,
	datad => \Slow_Clock|Equal0~0_combout\,
	combout => \Slow_Clock|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y29_N16
\Slow_Clock|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|Equal0~7_combout\ = (!\Slow_Clock|counter\(24) & (\Slow_Clock|Equal0~6_combout\ & (\Slow_Clock|Equal0~5_combout\ & \Slow_Clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Slow_Clock|counter\(24),
	datab => \Slow_Clock|Equal0~6_combout\,
	datac => \Slow_Clock|Equal0~5_combout\,
	datad => \Slow_Clock|Equal0~4_combout\,
	combout => \Slow_Clock|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y29_N14
\Slow_Clock|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|clkout~0_combout\ = \Slow_Clock|clkout~q\ $ (\Slow_Clock|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|clkout~q\,
	datad => \Slow_Clock|Equal0~7_combout\,
	combout => \Slow_Clock|clkout~0_combout\);

-- Location: LCCOMB_X72_Y29_N22
\Slow_Clock|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Slow_Clock|clkout~feeder_combout\ = \Slow_Clock|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Slow_Clock|clkout~0_combout\,
	combout => \Slow_Clock|clkout~feeder_combout\);

-- Location: FF_X72_Y29_N23
\Slow_Clock|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Slow_Clock|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Slow_Clock|clkout~q\);

-- Location: CLKCTRL_G17
\Slow_Clock|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Slow_Clock|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Slow_Clock|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y52_N14
\Counter_8bit|counter_up[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[1]~8_combout\ = (\Counter_8bit|counter_up\(0) & (\Counter_8bit|counter_up\(1) $ (VCC))) # (!\Counter_8bit|counter_up\(0) & (\Counter_8bit|counter_up\(1) & VCC))
-- \Counter_8bit|counter_up[1]~9\ = CARRY((\Counter_8bit|counter_up\(0) & \Counter_8bit|counter_up\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(0),
	datab => \Counter_8bit|counter_up\(1),
	datad => VCC,
	combout => \Counter_8bit|counter_up[1]~8_combout\,
	cout => \Counter_8bit|counter_up[1]~9\);

-- Location: LCCOMB_X63_Y52_N2
\Counter_8bit|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|LessThan0~0_combout\ = (((!\Counter_8bit|counter_up\(3)) # (!\Counter_8bit|counter_up\(1))) # (!\Counter_8bit|counter_up\(2))) # (!\Counter_8bit|counter_up\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(0),
	datab => \Counter_8bit|counter_up\(2),
	datac => \Counter_8bit|counter_up\(1),
	datad => \Counter_8bit|counter_up\(3),
	combout => \Counter_8bit|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y52_N30
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

-- Location: FF_X63_Y52_N15
\Counter_8bit|counter_up[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[1]~8_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(1));

-- Location: LCCOMB_X63_Y52_N16
\Counter_8bit|counter_up[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[2]~10_combout\ = (\Counter_8bit|counter_up\(2) & (!\Counter_8bit|counter_up[1]~9\)) # (!\Counter_8bit|counter_up\(2) & ((\Counter_8bit|counter_up[1]~9\) # (GND)))
-- \Counter_8bit|counter_up[2]~11\ = CARRY((!\Counter_8bit|counter_up[1]~9\) # (!\Counter_8bit|counter_up\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|counter_up\(2),
	datad => VCC,
	cin => \Counter_8bit|counter_up[1]~9\,
	combout => \Counter_8bit|counter_up[2]~10_combout\,
	cout => \Counter_8bit|counter_up[2]~11\);

-- Location: FF_X63_Y52_N17
\Counter_8bit|counter_up[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[2]~10_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(2));

-- Location: LCCOMB_X63_Y52_N18
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

-- Location: FF_X63_Y52_N19
\Counter_8bit|counter_up[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[3]~12_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(3));

-- Location: LCCOMB_X63_Y52_N20
\Counter_8bit|counter_up[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[4]~14_combout\ = (\Counter_8bit|counter_up\(4) & (!\Counter_8bit|counter_up[3]~13\)) # (!\Counter_8bit|counter_up\(4) & ((\Counter_8bit|counter_up[3]~13\) # (GND)))
-- \Counter_8bit|counter_up[4]~15\ = CARRY((!\Counter_8bit|counter_up[3]~13\) # (!\Counter_8bit|counter_up\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|counter_up\(4),
	datad => VCC,
	cin => \Counter_8bit|counter_up[3]~13\,
	combout => \Counter_8bit|counter_up[4]~14_combout\,
	cout => \Counter_8bit|counter_up[4]~15\);

-- Location: FF_X63_Y52_N21
\Counter_8bit|counter_up[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[4]~14_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(4));

-- Location: LCCOMB_X63_Y52_N22
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

-- Location: FF_X63_Y52_N23
\Counter_8bit|counter_up[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[5]~16_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(5));

-- Location: LCCOMB_X63_Y52_N24
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

-- Location: FF_X63_Y52_N25
\Counter_8bit|counter_up[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[6]~18_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(6));

-- Location: LCCOMB_X63_Y52_N26
\Counter_8bit|counter_up[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[7]~20_combout\ = \Counter_8bit|counter_up\(7) $ (!\Counter_8bit|counter_up[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(7),
	cin => \Counter_8bit|counter_up[6]~19\,
	combout => \Counter_8bit|counter_up[7]~20_combout\);

-- Location: FF_X63_Y52_N27
\Counter_8bit|counter_up[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[7]~20_combout\,
	ena => \Counter_8bit|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(7));

-- Location: LCCOMB_X63_Y52_N8
\Counter_8bit|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|LessThan0~1_combout\ = (((!\Counter_8bit|counter_up\(6)) # (!\Counter_8bit|counter_up\(7))) # (!\Counter_8bit|counter_up\(4))) # (!\Counter_8bit|counter_up\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|counter_up\(5),
	datab => \Counter_8bit|counter_up\(4),
	datac => \Counter_8bit|counter_up\(7),
	datad => \Counter_8bit|counter_up\(6),
	combout => \Counter_8bit|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y52_N12
\Counter_8bit|counter_up[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|counter_up[0]~7_combout\ = \Counter_8bit|counter_up\(0) $ (((\Counter_8bit|LessThan0~1_combout\) # (\Counter_8bit|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|LessThan0~1_combout\,
	datac => \Counter_8bit|counter_up\(0),
	datad => \Counter_8bit|LessThan0~0_combout\,
	combout => \Counter_8bit|counter_up[0]~7_combout\);

-- Location: FF_X63_Y52_N13
\Counter_8bit|counter_up[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Counter_8bit|counter_up[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|counter_up\(0));

-- Location: LCCOMB_X62_Y48_N0
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

-- Location: LCCOMB_X65_Y48_N0
\Transmitter|test[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[0]~45_combout\ = !\Transmitter|test\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Transmitter|test\(0),
	combout => \Transmitter|test[0]~45_combout\);

-- Location: LCCOMB_X63_Y48_N2
\Counter_8bit|wren_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|wren_reg~0_combout\ = (\Counter_8bit|wren_reg~q\) # ((!\Counter_8bit|LessThan0~0_combout\ & !\Counter_8bit|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|LessThan0~0_combout\,
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|LessThan0~1_combout\,
	combout => \Counter_8bit|wren_reg~0_combout\);

-- Location: FF_X63_Y48_N3
\Counter_8bit|wren_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|wren_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|wren_reg~q\);

-- Location: FF_X65_Y48_N1
\Transmitter|test[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[0]~45_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(0));

-- Location: FF_X62_Y48_N1
\Counter_8bit|address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[0]~16_combout\,
	asdata => \Transmitter|test\(0),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(0));

-- Location: LCCOMB_X62_Y48_N2
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

-- Location: LCCOMB_X65_Y48_N2
\Transmitter|test[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[1]~15_combout\ = (\Transmitter|test\(1) & (\Transmitter|test\(0) $ (VCC))) # (!\Transmitter|test\(1) & (\Transmitter|test\(0) & VCC))
-- \Transmitter|test[1]~16\ = CARRY((\Transmitter|test\(1) & \Transmitter|test\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(1),
	datab => \Transmitter|test\(0),
	datad => VCC,
	combout => \Transmitter|test[1]~15_combout\,
	cout => \Transmitter|test[1]~16\);

-- Location: FF_X65_Y48_N3
\Transmitter|test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[1]~15_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(1));

-- Location: FF_X62_Y48_N3
\Counter_8bit|address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[1]~18_combout\,
	asdata => \Transmitter|test\(1),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(1));

-- Location: LCCOMB_X62_Y48_N4
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

-- Location: LCCOMB_X65_Y48_N4
\Transmitter|test[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[2]~17_combout\ = (\Transmitter|test\(2) & (!\Transmitter|test[1]~16\)) # (!\Transmitter|test\(2) & ((\Transmitter|test[1]~16\) # (GND)))
-- \Transmitter|test[2]~18\ = CARRY((!\Transmitter|test[1]~16\) # (!\Transmitter|test\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(2),
	datad => VCC,
	cin => \Transmitter|test[1]~16\,
	combout => \Transmitter|test[2]~17_combout\,
	cout => \Transmitter|test[2]~18\);

-- Location: FF_X65_Y48_N5
\Transmitter|test[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[2]~17_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(2));

-- Location: FF_X62_Y48_N5
\Counter_8bit|address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[2]~20_combout\,
	asdata => \Transmitter|test\(2),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(2));

-- Location: LCCOMB_X62_Y48_N6
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

-- Location: LCCOMB_X65_Y48_N6
\Transmitter|test[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[3]~19_combout\ = (\Transmitter|test\(3) & (\Transmitter|test[2]~18\ $ (GND))) # (!\Transmitter|test\(3) & (!\Transmitter|test[2]~18\ & VCC))
-- \Transmitter|test[3]~20\ = CARRY((\Transmitter|test\(3) & !\Transmitter|test[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(3),
	datad => VCC,
	cin => \Transmitter|test[2]~18\,
	combout => \Transmitter|test[3]~19_combout\,
	cout => \Transmitter|test[3]~20\);

-- Location: FF_X65_Y48_N7
\Transmitter|test[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[3]~19_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(3));

-- Location: FF_X62_Y48_N7
\Counter_8bit|address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[3]~22_combout\,
	asdata => \Transmitter|test\(3),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(3));

-- Location: LCCOMB_X62_Y48_N8
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

-- Location: LCCOMB_X65_Y48_N8
\Transmitter|test[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[4]~21_combout\ = (\Transmitter|test\(4) & (!\Transmitter|test[3]~20\)) # (!\Transmitter|test\(4) & ((\Transmitter|test[3]~20\) # (GND)))
-- \Transmitter|test[4]~22\ = CARRY((!\Transmitter|test[3]~20\) # (!\Transmitter|test\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(4),
	datad => VCC,
	cin => \Transmitter|test[3]~20\,
	combout => \Transmitter|test[4]~21_combout\,
	cout => \Transmitter|test[4]~22\);

-- Location: FF_X65_Y48_N9
\Transmitter|test[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[4]~21_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(4));

-- Location: FF_X62_Y48_N9
\Counter_8bit|address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[4]~24_combout\,
	asdata => \Transmitter|test\(4),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(4));

-- Location: LCCOMB_X62_Y48_N10
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

-- Location: LCCOMB_X65_Y48_N10
\Transmitter|test[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[5]~23_combout\ = (\Transmitter|test\(5) & (\Transmitter|test[4]~22\ $ (GND))) # (!\Transmitter|test\(5) & (!\Transmitter|test[4]~22\ & VCC))
-- \Transmitter|test[5]~24\ = CARRY((\Transmitter|test\(5) & !\Transmitter|test[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(5),
	datad => VCC,
	cin => \Transmitter|test[4]~22\,
	combout => \Transmitter|test[5]~23_combout\,
	cout => \Transmitter|test[5]~24\);

-- Location: FF_X65_Y48_N11
\Transmitter|test[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[5]~23_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(5));

-- Location: FF_X62_Y48_N11
\Counter_8bit|address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[5]~26_combout\,
	asdata => \Transmitter|test\(5),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(5));

-- Location: LCCOMB_X62_Y48_N12
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

-- Location: LCCOMB_X65_Y48_N12
\Transmitter|test[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[6]~25_combout\ = (\Transmitter|test\(6) & (!\Transmitter|test[5]~24\)) # (!\Transmitter|test\(6) & ((\Transmitter|test[5]~24\) # (GND)))
-- \Transmitter|test[6]~26\ = CARRY((!\Transmitter|test[5]~24\) # (!\Transmitter|test\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(6),
	datad => VCC,
	cin => \Transmitter|test[5]~24\,
	combout => \Transmitter|test[6]~25_combout\,
	cout => \Transmitter|test[6]~26\);

-- Location: FF_X65_Y48_N13
\Transmitter|test[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[6]~25_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(6));

-- Location: FF_X62_Y48_N13
\Counter_8bit|address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[6]~28_combout\,
	asdata => \Transmitter|test\(6),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(6));

-- Location: LCCOMB_X62_Y48_N14
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

-- Location: LCCOMB_X65_Y48_N14
\Transmitter|test[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[7]~27_combout\ = (\Transmitter|test\(7) & (\Transmitter|test[6]~26\ $ (GND))) # (!\Transmitter|test\(7) & (!\Transmitter|test[6]~26\ & VCC))
-- \Transmitter|test[7]~28\ = CARRY((\Transmitter|test\(7) & !\Transmitter|test[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(7),
	datad => VCC,
	cin => \Transmitter|test[6]~26\,
	combout => \Transmitter|test[7]~27_combout\,
	cout => \Transmitter|test[7]~28\);

-- Location: FF_X65_Y48_N15
\Transmitter|test[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[7]~27_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(7));

-- Location: FF_X62_Y48_N15
\Counter_8bit|address_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[7]~30_combout\,
	asdata => \Transmitter|test\(7),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(7));

-- Location: LCCOMB_X62_Y48_N16
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

-- Location: LCCOMB_X65_Y48_N16
\Transmitter|test[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[8]~29_combout\ = (\Transmitter|test\(8) & (!\Transmitter|test[7]~28\)) # (!\Transmitter|test\(8) & ((\Transmitter|test[7]~28\) # (GND)))
-- \Transmitter|test[8]~30\ = CARRY((!\Transmitter|test[7]~28\) # (!\Transmitter|test\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(8),
	datad => VCC,
	cin => \Transmitter|test[7]~28\,
	combout => \Transmitter|test[8]~29_combout\,
	cout => \Transmitter|test[8]~30\);

-- Location: FF_X65_Y48_N17
\Transmitter|test[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[8]~29_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(8));

-- Location: FF_X62_Y48_N17
\Counter_8bit|address_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[8]~32_combout\,
	asdata => \Transmitter|test\(8),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(8));

-- Location: LCCOMB_X62_Y48_N18
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

-- Location: LCCOMB_X65_Y48_N18
\Transmitter|test[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[9]~31_combout\ = (\Transmitter|test\(9) & (\Transmitter|test[8]~30\ $ (GND))) # (!\Transmitter|test\(9) & (!\Transmitter|test[8]~30\ & VCC))
-- \Transmitter|test[9]~32\ = CARRY((\Transmitter|test\(9) & !\Transmitter|test[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(9),
	datad => VCC,
	cin => \Transmitter|test[8]~30\,
	combout => \Transmitter|test[9]~31_combout\,
	cout => \Transmitter|test[9]~32\);

-- Location: FF_X65_Y48_N19
\Transmitter|test[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[9]~31_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(9));

-- Location: FF_X62_Y48_N19
\Counter_8bit|address_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[9]~34_combout\,
	asdata => \Transmitter|test\(9),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(9));

-- Location: LCCOMB_X62_Y48_N20
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

-- Location: LCCOMB_X65_Y48_N20
\Transmitter|test[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[10]~33_combout\ = (\Transmitter|test\(10) & (!\Transmitter|test[9]~32\)) # (!\Transmitter|test\(10) & ((\Transmitter|test[9]~32\) # (GND)))
-- \Transmitter|test[10]~34\ = CARRY((!\Transmitter|test[9]~32\) # (!\Transmitter|test\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(10),
	datad => VCC,
	cin => \Transmitter|test[9]~32\,
	combout => \Transmitter|test[10]~33_combout\,
	cout => \Transmitter|test[10]~34\);

-- Location: FF_X65_Y48_N21
\Transmitter|test[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[10]~33_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(10));

-- Location: FF_X62_Y48_N21
\Counter_8bit|address_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[10]~36_combout\,
	asdata => \Transmitter|test\(10),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(10));

-- Location: LCCOMB_X62_Y48_N22
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

-- Location: LCCOMB_X65_Y48_N22
\Transmitter|test[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[11]~35_combout\ = (\Transmitter|test\(11) & (\Transmitter|test[10]~34\ $ (GND))) # (!\Transmitter|test\(11) & (!\Transmitter|test[10]~34\ & VCC))
-- \Transmitter|test[11]~36\ = CARRY((\Transmitter|test\(11) & !\Transmitter|test[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(11),
	datad => VCC,
	cin => \Transmitter|test[10]~34\,
	combout => \Transmitter|test[11]~35_combout\,
	cout => \Transmitter|test[11]~36\);

-- Location: FF_X65_Y48_N23
\Transmitter|test[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[11]~35_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(11));

-- Location: FF_X62_Y48_N23
\Counter_8bit|address_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[11]~38_combout\,
	asdata => \Transmitter|test\(11),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(11));

-- Location: LCCOMB_X62_Y48_N24
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

-- Location: LCCOMB_X65_Y48_N24
\Transmitter|test[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[12]~37_combout\ = (\Transmitter|test\(12) & (!\Transmitter|test[11]~36\)) # (!\Transmitter|test\(12) & ((\Transmitter|test[11]~36\) # (GND)))
-- \Transmitter|test[12]~38\ = CARRY((!\Transmitter|test[11]~36\) # (!\Transmitter|test\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(12),
	datad => VCC,
	cin => \Transmitter|test[11]~36\,
	combout => \Transmitter|test[12]~37_combout\,
	cout => \Transmitter|test[12]~38\);

-- Location: FF_X65_Y48_N25
\Transmitter|test[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[12]~37_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(12));

-- Location: FF_X62_Y48_N25
\Counter_8bit|address_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[12]~40_combout\,
	asdata => \Transmitter|test\(12),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(12));

-- Location: LCCOMB_X62_Y48_N26
\Counter_8bit|address_reg[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter_8bit|address_reg[13]~42_combout\ = (\Counter_8bit|address_reg\(13) & (!\Counter_8bit|address_reg[12]~41\)) # (!\Counter_8bit|address_reg\(13) & ((\Counter_8bit|address_reg[12]~41\) # (GND)))
-- \Counter_8bit|address_reg[13]~43\ = CARRY((!\Counter_8bit|address_reg[12]~41\) # (!\Counter_8bit|address_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datad => VCC,
	cin => \Counter_8bit|address_reg[12]~41\,
	combout => \Counter_8bit|address_reg[13]~42_combout\,
	cout => \Counter_8bit|address_reg[13]~43\);

-- Location: LCCOMB_X65_Y48_N26
\Transmitter|test[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[13]~39_combout\ = (\Transmitter|test\(13) & (\Transmitter|test[12]~38\ $ (GND))) # (!\Transmitter|test\(13) & (!\Transmitter|test[12]~38\ & VCC))
-- \Transmitter|test[13]~40\ = CARRY((\Transmitter|test\(13) & !\Transmitter|test[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(13),
	datad => VCC,
	cin => \Transmitter|test[12]~38\,
	combout => \Transmitter|test[13]~39_combout\,
	cout => \Transmitter|test[13]~40\);

-- Location: FF_X65_Y48_N27
\Transmitter|test[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[13]~39_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(13));

-- Location: FF_X62_Y48_N27
\Counter_8bit|address_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[13]~42_combout\,
	asdata => \Transmitter|test\(13),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(13));

-- Location: LCCOMB_X62_Y48_N28
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

-- Location: LCCOMB_X65_Y48_N28
\Transmitter|test[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[14]~41_combout\ = (\Transmitter|test\(14) & (!\Transmitter|test[13]~40\)) # (!\Transmitter|test\(14) & ((\Transmitter|test[13]~40\) # (GND)))
-- \Transmitter|test[14]~42\ = CARRY((!\Transmitter|test[13]~40\) # (!\Transmitter|test\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Transmitter|test\(14),
	datad => VCC,
	cin => \Transmitter|test[13]~40\,
	combout => \Transmitter|test[14]~41_combout\,
	cout => \Transmitter|test[14]~42\);

-- Location: FF_X65_Y48_N29
\Transmitter|test[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[14]~41_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(14));

-- Location: FF_X62_Y48_N29
\Counter_8bit|address_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[14]~44_combout\,
	asdata => \Transmitter|test\(14),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(14));

-- Location: LCCOMB_X62_Y48_N30
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

-- Location: LCCOMB_X63_Y48_N4
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

-- Location: LCCOMB_X65_Y48_N30
\Transmitter|test[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|test[15]~43_combout\ = \Transmitter|test\(15) $ (!\Transmitter|test[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Transmitter|test\(15),
	cin => \Transmitter|test[14]~42\,
	combout => \Transmitter|test[15]~43_combout\);

-- Location: FF_X65_Y48_N31
\Transmitter|test[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Transmitter|test[15]~43_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|test\(15));

-- Location: FF_X63_Y48_N5
\Counter_8bit|address_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|ALT_INV_clkout~clkctrl_outclk\,
	d => \Counter_8bit|address_reg[15]~feeder_combout\,
	asdata => \Transmitter|test\(15),
	sload => \Counter_8bit|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_8bit|address_reg\(15));

-- Location: LCCOMB_X63_Y57_N6
\DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ = \Counter_8bit|address_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg\(15),
	combout => \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X63_Y57_N7
\DRAM|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X63_Y57_N4
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

-- Location: FF_X63_Y57_N5
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|out_address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: LCCOMB_X63_Y48_N8
\DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (!\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode431w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N30
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3) = (!\Counter_8bit|address_reg\(15) & (!\Counter_8bit|address_reg\(13) & !\Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3));

-- Location: M9K_X64_Y62_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X62_Y52_N16
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

-- Location: FF_X62_Y52_N17
\DRAM|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X63_Y52_N1
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	asdata => \DRAM|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X63_Y52_N4
\DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = \Counter_8bit|address_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X63_Y52_N5
\DRAM|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: FF_X63_Y52_N11
\DRAM|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	asdata => \DRAM|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X63_Y52_N28
\DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\ = (!\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & (!\Counter_8bit|address_reg\(13) & \Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(15),
	datab => \Counter_8bit|wren_reg~q\,
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~0_combout\);

-- Location: LCCOMB_X63_Y52_N6
\DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\ = (!\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(14) & !\Counter_8bit|address_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datac => \Counter_8bit|address_reg\(14),
	datad => \Counter_8bit|address_reg\(15),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\);

-- Location: M9K_X78_Y57_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N12
\DRAM|altsyncram_component|auto_generated|mux2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X63_Y48_N16
\DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (!\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & \Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode468w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N10
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\ = (!\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(13) & \Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\);

-- Location: M9K_X64_Y51_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N12
\DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (!\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode448w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N14
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\ = (!\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(13) & !\Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\);

-- Location: M9K_X51_Y54_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\) # 
-- ((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X63_Y48_N28
\DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & \Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N18
\DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\ = (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|address_reg\(13) & \Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\);

-- Location: M9K_X78_Y58_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N0
\DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\ = (!\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode478w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N22
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\ = (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|address_reg\(13) & !\Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\);

-- Location: M9K_X64_Y69_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N20
\DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & !\Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode488w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N6
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\ = (\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(13) & !\Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\);

-- Location: M9K_X78_Y51_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ & 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X63_Y48_N24
\DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\ = (\Counter_8bit|address_reg\(13) & (\Counter_8bit|address_reg\(15) & (!\Counter_8bit|wren_reg~q\ & \Counter_8bit|address_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_8bit|address_reg\(13),
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|wren_reg~q\,
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|decode3|w_anode508w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N26
\DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\ = (\Counter_8bit|address_reg\(15) & (\Counter_8bit|address_reg\(13) & \Counter_8bit|address_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter_8bit|address_reg\(15),
	datac => \Counter_8bit|address_reg\(13),
	datad => \Counter_8bit|address_reg\(14),
	combout => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\);

-- Location: M9K_X78_Y61_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N2
\DRAM|altsyncram_component|auto_generated|mux2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ & 
-- (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|mux2|_~0_combout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X63_Y57_N26
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

-- Location: M9K_X78_Y50_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y55_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y72_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y56_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: M9K_X78_Y56_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y56_N14
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

-- Location: M9K_X64_Y45_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y50_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y53_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y60_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N0
\DRAM|altsyncram_component|auto_generated|mux2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: LCCOMB_X63_Y53_N6
\DRAM|altsyncram_component|auto_generated|mux2|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~7_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: LCCOMB_X63_Y53_N12
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

-- Location: M9K_X51_Y48_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y46_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y63_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y55_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y55_N12
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

-- Location: LCCOMB_X63_Y53_N26
\DRAM|altsyncram_component|auto_generated|mux2|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~12_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: M9K_X64_Y47_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y48_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y48_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y55_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ & 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: M9K_X78_Y62_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y55_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~10_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: LCCOMB_X63_Y53_N16
\DRAM|altsyncram_component|auto_generated|mux2|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~13_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~11_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: M9K_X78_Y53_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y49_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y57_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N22
\DRAM|altsyncram_component|auto_generated|mux2|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: M9K_X51_Y53_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~17_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: M9K_X64_Y66_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y54_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y70_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y64_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y56_N24
\DRAM|altsyncram_component|auto_generated|mux2|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: LCCOMB_X63_Y54_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\) # 
-- ((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ & 
-- \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: LCCOMB_X63_Y53_N30
\DRAM|altsyncram_component|auto_generated|mux2|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~16_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X51_Y47_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y47_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y62_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y52_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y54_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: LCCOMB_X63_Y54_N4
\DRAM|altsyncram_component|auto_generated|mux2|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~22_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: M9K_X64_Y68_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y49_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y52_N0
\DRAM|altsyncram_component|auto_generated|mux2|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: M9K_X64_Y65_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y46_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N20
\DRAM|altsyncram_component|auto_generated|mux2|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|mux2|_~20_combout\,
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: LCCOMB_X63_Y53_N10
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

-- Location: M9K_X51_Y52_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y51_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y54_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y60_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: LCCOMB_X63_Y53_N4
\DRAM|altsyncram_component|auto_generated|mux2|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~27_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: M9K_X64_Y67_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y61_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y71_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N24
\DRAM|altsyncram_component|auto_generated|mux2|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: M9K_X78_Y52_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y53_N28
\DRAM|altsyncram_component|auto_generated|mux2|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~25_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: LCCOMB_X63_Y53_N14
\DRAM|altsyncram_component|auto_generated|mux2|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|altsyncram_component|auto_generated|mux2|_~28_combout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~26_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: M9K_X64_Y63_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y55_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N22
\DRAM|altsyncram_component|auto_generated|mux2|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M9K_X64_Y49_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y50_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N8
\DRAM|altsyncram_component|auto_generated|mux2|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ & (((\DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\ & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: M9K_X64_Y59_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y58_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y64_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y64_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N10
\DRAM|altsyncram_component|auto_generated|mux2|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\)) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: LCCOMB_X63_Y57_N16
\DRAM|altsyncram_component|auto_generated|mux2|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ & 
-- (\DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\)) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\ & ((\DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\))))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~30_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: LCCOMB_X63_Y57_N30
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

-- Location: M9K_X51_Y56_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y56_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode458w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y57_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y56_N30
\DRAM|altsyncram_component|auto_generated|mux2|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\) # 
-- ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M9K_X64_Y44_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y56_N0
\DRAM|altsyncram_component|auto_generated|mux2|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: M9K_X78_Y45_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|decode3|w_anode498w[3]~1_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y59_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y61_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y59_N0
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
	clk0 => \Slow_Clock|clkout~clkctrl_outclk\,
	ena0 => \DRAM|altsyncram_component|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DRAM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y57_N20
\DRAM|altsyncram_component|auto_generated|mux2|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \DRAM|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	datad => \DRAM|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: LCCOMB_X63_Y57_N18
\DRAM|altsyncram_component|auto_generated|mux2|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ & 
-- ((\DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\))) # (!\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\ & (\DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\)))) # 
-- (!\DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	datab => \DRAM|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datac => \DRAM|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \DRAM|altsyncram_component|auto_generated|mux2|_~35_combout\,
	combout => \DRAM|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: LCCOMB_X63_Y53_N24
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

-- Location: LCCOMB_X63_Y57_N0
\Transmitter|Tx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Transmitter|Tx[0]~0_combout\ = !\DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|altsyncram_component|auto_generated|mux2|_~4_combout\,
	combout => \Transmitter|Tx[0]~0_combout\);

-- Location: FF_X63_Y57_N1
\Transmitter|Tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \Transmitter|Tx[0]~0_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(0));

-- Location: FF_X63_Y53_N13
\Transmitter|Tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~9_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(1));

-- Location: FF_X63_Y53_N17
\Transmitter|Tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~14_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(2));

-- Location: FF_X63_Y53_N31
\Transmitter|Tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~19_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(3));

-- Location: FF_X63_Y53_N11
\Transmitter|Tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~24_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(4));

-- Location: FF_X63_Y53_N15
\Transmitter|Tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~29_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(5));

-- Location: FF_X63_Y57_N31
\Transmitter|Tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~34_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(6));

-- Location: FF_X63_Y53_N25
\Transmitter|Tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Slow_Clock|clkout~clkctrl_outclk\,
	d => \DRAM|altsyncram_component|auto_generated|mux2|_~39_combout\,
	ena => \Counter_8bit|wren_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transmitter|Tx\(7));

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

ww_Tx_bit(0) <= \Tx_bit[0]~output_o\;

ww_Tx_bit(1) <= \Tx_bit[1]~output_o\;

ww_Tx_bit(2) <= \Tx_bit[2]~output_o\;

ww_Tx_bit(3) <= \Tx_bit[3]~output_o\;

ww_Tx_bit(4) <= \Tx_bit[4]~output_o\;

ww_Tx_bit(5) <= \Tx_bit[5]~output_o\;

ww_Tx_bit(6) <= \Tx_bit[6]~output_o\;

ww_Tx_bit(7) <= \Tx_bit[7]~output_o\;

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


