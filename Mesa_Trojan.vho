-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/04/2026 09:18:25"

-- 
-- Device: Altera EP4CGX150DF31I7AD Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mesa_Trojan IS
    PORT (
	V0 : IN std_logic_vector(15 DOWNTO 0);
	V1_1 : IN std_logic_vector(15 DOWNTO 0);
	V2_1 : IN std_logic_vector(15 DOWNTO 0);
	V3_1 : IN std_logic_vector(15 DOWNTO 0);
	V3_2 : IN std_logic_vector(15 DOWNTO 0);
	V2_2 : IN std_logic_vector(15 DOWNTO 0);
	BM_S1 : IN std_logic_vector(1 DOWNTO 0);
	BD_S2 : IN std_logic_vector(1 DOWNTO 0);
	YM_S1 : IN std_logic_vector(1 DOWNTO 0);
	YD_S2 : IN std_logic_vector(1 DOWNTO 0);
	GM_S1 : IN std_logic_vector(1 DOWNTO 0);
	GD_S2 : IN std_logic_vector(1 DOWNTO 0);
	BDT_S1 : IN std_logic_vector(1 DOWNTO 0);
	BDT_S2 : IN std_logic_vector(1 DOWNTO 0);
	YMT_S2 : IN std_logic_vector(2 DOWNTO 0);
	YDT_S2 : IN std_logic_vector(2 DOWNTO 0);
	BMT_S1 : IN std_logic;
	BMT_S2 : IN std_logic;
	YMT_S1 : IN std_logic;
	YDT_S1 : IN std_logic;
	M1_S1 : IN std_logic;
	M1_S2 : IN std_logic;
	M1_S3 : IN std_logic;
	M2_S1 : IN std_logic;
	M2_S2 : IN std_logic;
	M2_S3 : IN std_logic;
	M3_S1 : IN std_logic;
	M3_S2 : IN std_logic;
	M4_S1 : IN std_logic;
	M4_S2 : IN std_logic;
	M2T_S1 : IN std_logic;
	A3T_S1 : IN std_logic;
	M3T_S1 : IN std_logic;
	RM_S1 : IN std_logic_vector(2 DOWNTO 0);
	RD_S2 : IN std_logic_vector(2 DOWNTO 0);
	O1_S30 : BUFFER std_logic_vector(15 DOWNTO 0);
	O2_S30 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Mesa_Trojan;

-- Design Ports Information
-- V1_1[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[4]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[5]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[7]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[9]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[10]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[12]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[13]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[14]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V1_1[15]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[0]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[1]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[6]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[9]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[10]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[11]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[12]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[14]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_2[15]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[3]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[4]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[5]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[7]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[8]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[9]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[11]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[12]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[13]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[14]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_2[15]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GM_S1[0]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GM_S1[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BDT_S1[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BDT_S1[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BDT_S2[0]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BDT_S2[1]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M3_S1	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2T_S1	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3T_S1	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M3T_S1	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[12]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[13]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1_S30[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[4]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[9]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[10]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[11]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[12]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[14]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2_S30[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMT_S2[2]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMT_S2[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMT_S2[0]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BMT_S1	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M3_S2	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GD_S2[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GD_S2[1]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_S2[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_S2[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM_S1[1]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM_S1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM_S1[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_S2[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[6]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[9]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[10]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[11]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[12]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[14]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V0[15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDT_S2[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDT_S2[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDT_S2[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_S2	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_S1	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_S3	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M4_S2	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BD_S2[1]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BD_S2[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_S3	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[0]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YM_S1[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YMT_S1	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YM_S1[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDT_S1	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[3]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[9]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[10]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[11]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[12]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[14]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V3_1[15]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[0]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BM_S1[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BM_S1[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BMT_S2	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[3]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[4]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[5]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[11]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[13]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V2_1[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M4_S1	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_S1	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_S2	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YD_S2[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YD_S2[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mesa_Trojan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_V1_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_V2_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_V3_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_V3_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_V2_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BM_S1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BD_S2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_YM_S1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_YD_S2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GM_S1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GD_S2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BDT_S1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BDT_S2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_YMT_S2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_YDT_S2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_BMT_S1 : std_logic;
SIGNAL ww_BMT_S2 : std_logic;
SIGNAL ww_YMT_S1 : std_logic;
SIGNAL ww_YDT_S1 : std_logic;
SIGNAL ww_M1_S1 : std_logic;
SIGNAL ww_M1_S2 : std_logic;
SIGNAL ww_M1_S3 : std_logic;
SIGNAL ww_M2_S1 : std_logic;
SIGNAL ww_M2_S2 : std_logic;
SIGNAL ww_M2_S3 : std_logic;
SIGNAL ww_M3_S1 : std_logic;
SIGNAL ww_M3_S2 : std_logic;
SIGNAL ww_M4_S1 : std_logic;
SIGNAL ww_M4_S2 : std_logic;
SIGNAL ww_M2T_S1 : std_logic;
SIGNAL ww_A3T_S1 : std_logic;
SIGNAL ww_M3T_S1 : std_logic;
SIGNAL ww_RM_S1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RD_S2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_O1_S30 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_O2_S30 : std_logic_vector(15 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V17|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V17|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \V17|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \V3|R4[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V6|P4[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V6|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1_S3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M4_S2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M2_S3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \YDT_S1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \V1_1[0]~input_o\ : std_logic;
SIGNAL \V1_1[1]~input_o\ : std_logic;
SIGNAL \V1_1[2]~input_o\ : std_logic;
SIGNAL \V1_1[3]~input_o\ : std_logic;
SIGNAL \V1_1[4]~input_o\ : std_logic;
SIGNAL \V1_1[5]~input_o\ : std_logic;
SIGNAL \V1_1[6]~input_o\ : std_logic;
SIGNAL \V1_1[7]~input_o\ : std_logic;
SIGNAL \V1_1[8]~input_o\ : std_logic;
SIGNAL \V1_1[9]~input_o\ : std_logic;
SIGNAL \V1_1[10]~input_o\ : std_logic;
SIGNAL \V1_1[11]~input_o\ : std_logic;
SIGNAL \V1_1[12]~input_o\ : std_logic;
SIGNAL \V1_1[13]~input_o\ : std_logic;
SIGNAL \V1_1[14]~input_o\ : std_logic;
SIGNAL \V1_1[15]~input_o\ : std_logic;
SIGNAL \V3_2[0]~input_o\ : std_logic;
SIGNAL \V3_2[1]~input_o\ : std_logic;
SIGNAL \V3_2[2]~input_o\ : std_logic;
SIGNAL \V3_2[3]~input_o\ : std_logic;
SIGNAL \V3_2[4]~input_o\ : std_logic;
SIGNAL \V3_2[5]~input_o\ : std_logic;
SIGNAL \V3_2[6]~input_o\ : std_logic;
SIGNAL \V3_2[7]~input_o\ : std_logic;
SIGNAL \V3_2[8]~input_o\ : std_logic;
SIGNAL \V3_2[9]~input_o\ : std_logic;
SIGNAL \V3_2[10]~input_o\ : std_logic;
SIGNAL \V3_2[11]~input_o\ : std_logic;
SIGNAL \V3_2[12]~input_o\ : std_logic;
SIGNAL \V3_2[13]~input_o\ : std_logic;
SIGNAL \V3_2[14]~input_o\ : std_logic;
SIGNAL \V3_2[15]~input_o\ : std_logic;
SIGNAL \V2_2[0]~input_o\ : std_logic;
SIGNAL \V2_2[1]~input_o\ : std_logic;
SIGNAL \V2_2[2]~input_o\ : std_logic;
SIGNAL \V2_2[3]~input_o\ : std_logic;
SIGNAL \V2_2[4]~input_o\ : std_logic;
SIGNAL \V2_2[5]~input_o\ : std_logic;
SIGNAL \V2_2[6]~input_o\ : std_logic;
SIGNAL \V2_2[7]~input_o\ : std_logic;
SIGNAL \V2_2[8]~input_o\ : std_logic;
SIGNAL \V2_2[9]~input_o\ : std_logic;
SIGNAL \V2_2[10]~input_o\ : std_logic;
SIGNAL \V2_2[11]~input_o\ : std_logic;
SIGNAL \V2_2[12]~input_o\ : std_logic;
SIGNAL \V2_2[13]~input_o\ : std_logic;
SIGNAL \V2_2[14]~input_o\ : std_logic;
SIGNAL \V2_2[15]~input_o\ : std_logic;
SIGNAL \GM_S1[0]~input_o\ : std_logic;
SIGNAL \GM_S1[1]~input_o\ : std_logic;
SIGNAL \BDT_S1[0]~input_o\ : std_logic;
SIGNAL \BDT_S1[1]~input_o\ : std_logic;
SIGNAL \BDT_S2[0]~input_o\ : std_logic;
SIGNAL \BDT_S2[1]~input_o\ : std_logic;
SIGNAL \M3_S1~input_o\ : std_logic;
SIGNAL \M2T_S1~input_o\ : std_logic;
SIGNAL \A3T_S1~input_o\ : std_logic;
SIGNAL \M3T_S1~input_o\ : std_logic;
SIGNAL \YMT_S2[2]~input_o\ : std_logic;
SIGNAL \YMT_S2[1]~input_o\ : std_logic;
SIGNAL \YMT_S2[0]~input_o\ : std_logic;
SIGNAL \BMT_S1~input_o\ : std_logic;
SIGNAL \M3_S2~input_o\ : std_logic;
SIGNAL \GD_S2[0]~input_o\ : std_logic;
SIGNAL \GD_S2[1]~input_o\ : std_logic;
SIGNAL \O1_S30[0]~output_o\ : std_logic;
SIGNAL \O1_S30[1]~output_o\ : std_logic;
SIGNAL \O1_S30[2]~output_o\ : std_logic;
SIGNAL \O1_S30[3]~output_o\ : std_logic;
SIGNAL \O1_S30[4]~output_o\ : std_logic;
SIGNAL \O1_S30[5]~output_o\ : std_logic;
SIGNAL \O1_S30[6]~output_o\ : std_logic;
SIGNAL \O1_S30[7]~output_o\ : std_logic;
SIGNAL \O1_S30[8]~output_o\ : std_logic;
SIGNAL \O1_S30[9]~output_o\ : std_logic;
SIGNAL \O1_S30[10]~output_o\ : std_logic;
SIGNAL \O1_S30[11]~output_o\ : std_logic;
SIGNAL \O1_S30[12]~output_o\ : std_logic;
SIGNAL \O1_S30[13]~output_o\ : std_logic;
SIGNAL \O1_S30[14]~output_o\ : std_logic;
SIGNAL \O1_S30[15]~output_o\ : std_logic;
SIGNAL \O2_S30[0]~output_o\ : std_logic;
SIGNAL \O2_S30[1]~output_o\ : std_logic;
SIGNAL \O2_S30[2]~output_o\ : std_logic;
SIGNAL \O2_S30[3]~output_o\ : std_logic;
SIGNAL \O2_S30[4]~output_o\ : std_logic;
SIGNAL \O2_S30[5]~output_o\ : std_logic;
SIGNAL \O2_S30[6]~output_o\ : std_logic;
SIGNAL \O2_S30[7]~output_o\ : std_logic;
SIGNAL \O2_S30[8]~output_o\ : std_logic;
SIGNAL \O2_S30[9]~output_o\ : std_logic;
SIGNAL \O2_S30[10]~output_o\ : std_logic;
SIGNAL \O2_S30[11]~output_o\ : std_logic;
SIGNAL \O2_S30[12]~output_o\ : std_logic;
SIGNAL \O2_S30[13]~output_o\ : std_logic;
SIGNAL \O2_S30[14]~output_o\ : std_logic;
SIGNAL \O2_S30[15]~output_o\ : std_logic;
SIGNAL \RD_S2[2]~input_o\ : std_logic;
SIGNAL \RM_S1[2]~input_o\ : std_logic;
SIGNAL \RM_S1[1]~input_o\ : std_logic;
SIGNAL \M1_S3~input_o\ : std_logic;
SIGNAL \M1_S3~inputclkctrl_outclk\ : std_logic;
SIGNAL \BM_S1[1]~input_o\ : std_logic;
SIGNAL \BMT_S2~input_o\ : std_logic;
SIGNAL \BM_S1[0]~input_o\ : std_logic;
SIGNAL \T2|MZ2[1]~0_combout\ : std_logic;
SIGNAL \V2_1[0]~input_o\ : std_logic;
SIGNAL \M4_S2~input_o\ : std_logic;
SIGNAL \M4_S2~inputclkctrl_outclk\ : std_logic;
SIGNAL \RD_S2[1]~input_o\ : std_logic;
SIGNAL \M4_S1~input_o\ : std_logic;
SIGNAL \RD_S2[0]~input_o\ : std_logic;
SIGNAL \V34|MZ2[0]~0_combout\ : std_logic;
SIGNAL \YDT_S1~input_o\ : std_logic;
SIGNAL \YDT_S1~inputclkctrl_outclk\ : std_logic;
SIGNAL \YM_S1[0]~input_o\ : std_logic;
SIGNAL \V3_1[0]~input_o\ : std_logic;
SIGNAL \YMT_S1~input_o\ : std_logic;
SIGNAL \YM_S1[1]~input_o\ : std_logic;
SIGNAL \T6|MZ2[1]~0_combout\ : std_logic;
SIGNAL \M2_S2~input_o\ : std_logic;
SIGNAL \YD_S2[1]~input_o\ : std_logic;
SIGNAL \YD_S2[0]~input_o\ : std_logic;
SIGNAL \V6|Equal0~0_combout\ : std_logic;
SIGNAL \V6|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \V50|MZ2[0]~0_combout\ : std_logic;
SIGNAL \M2_S1~input_o\ : std_logic;
SIGNAL \V48|MZ2[0]~0_combout\ : std_logic;
SIGNAL \V52|aZ[0]~0_combout\ : std_logic;
SIGNAL \M2_S3~input_o\ : std_logic;
SIGNAL \M2_S3~inputclkctrl_outclk\ : std_logic;
SIGNAL \T6|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V6|P4[15]~0_combout\ : std_logic;
SIGNAL \V6|P4[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \V34|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V7|Mux15~7_combout\ : std_logic;
SIGNAL \RM_S1[0]~input_o\ : std_logic;
SIGNAL \V7|Mux15~6_combout\ : std_logic;
SIGNAL \V3_1[2]~input_o\ : std_logic;
SIGNAL \V50|MZ2[2]~2_combout\ : std_logic;
SIGNAL \V48|MZ2[2]~2_combout\ : std_logic;
SIGNAL \V3_1[1]~input_o\ : std_logic;
SIGNAL \V50|MZ2[1]~1_combout\ : std_logic;
SIGNAL \V52|aZ[0]~1\ : std_logic;
SIGNAL \V52|aZ[1]~2_combout\ : std_logic;
SIGNAL \T6|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V48|MZ2[1]~1_combout\ : std_logic;
SIGNAL \V52|aZ[1]~3\ : std_logic;
SIGNAL \V52|aZ[2]~4_combout\ : std_logic;
SIGNAL \T6|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V7|Mux15~8_combout\ : std_logic;
SIGNAL \V7|Mux15~0_combout\ : std_logic;
SIGNAL \V41|MZ2[15]~0_combout\ : std_logic;
SIGNAL \V41|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V43|MZ2[15]~8_combout\ : std_logic;
SIGNAL \V43|MZ2[2]~11_combout\ : std_logic;
SIGNAL \V43|MZ2[1]~25_combout\ : std_logic;
SIGNAL \V7|Mux15~1_combout\ : std_logic;
SIGNAL \V41|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V43|MZ2[0]~9_combout\ : std_logic;
SIGNAL \V45|aZ[0]~0_combout\ : std_logic;
SIGNAL \V7|Mux15~2_combout\ : std_logic;
SIGNAL \M1_S1~input_o\ : std_logic;
SIGNAL \V13|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V13|MZ2[0]~17_combout\ : std_logic;
SIGNAL \V13|MZ2[1]~18_combout\ : std_logic;
SIGNAL \V13|MZ2[2]~19_combout\ : std_logic;
SIGNAL \V3_1[3]~input_o\ : std_logic;
SIGNAL \V48|MZ2[3]~3_combout\ : std_logic;
SIGNAL \V50|MZ2[3]~3_combout\ : std_logic;
SIGNAL \V52|aZ[2]~5\ : std_logic;
SIGNAL \V52|aZ[3]~6_combout\ : std_logic;
SIGNAL \T6|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V34|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V2_1[4]~input_o\ : std_logic;
SIGNAL \V13|MZ2[4]~21_combout\ : std_logic;
SIGNAL \V13|MZ2[5]~22_combout\ : std_logic;
SIGNAL \V13|MZ2[6]~23_combout\ : std_logic;
SIGNAL \V3_1[7]~input_o\ : std_logic;
SIGNAL \V50|MZ2[7]~7_combout\ : std_logic;
SIGNAL \V48|MZ2[7]~7_combout\ : std_logic;
SIGNAL \V3_1[6]~input_o\ : std_logic;
SIGNAL \V48|MZ2[6]~6_combout\ : std_logic;
SIGNAL \V3_1[5]~input_o\ : std_logic;
SIGNAL \V50|MZ2[5]~5_combout\ : std_logic;
SIGNAL \V3_1[4]~input_o\ : std_logic;
SIGNAL \V48|MZ2[4]~4_combout\ : std_logic;
SIGNAL \V52|aZ[3]~7\ : std_logic;
SIGNAL \V52|aZ[4]~8_combout\ : std_logic;
SIGNAL \T6|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V50|MZ2[4]~4_combout\ : std_logic;
SIGNAL \V52|aZ[4]~9\ : std_logic;
SIGNAL \V52|aZ[5]~10_combout\ : std_logic;
SIGNAL \T6|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V48|MZ2[5]~5_combout\ : std_logic;
SIGNAL \V52|aZ[5]~11\ : std_logic;
SIGNAL \V52|aZ[6]~12_combout\ : std_logic;
SIGNAL \T6|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V50|MZ2[6]~6_combout\ : std_logic;
SIGNAL \V52|aZ[6]~13\ : std_logic;
SIGNAL \V52|aZ[7]~14_combout\ : std_logic;
SIGNAL \T6|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V34|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V3_1[8]~input_o\ : std_logic;
SIGNAL \V48|MZ2[8]~8_combout\ : std_logic;
SIGNAL \V50|MZ2[8]~8_combout\ : std_logic;
SIGNAL \V52|aZ[7]~15\ : std_logic;
SIGNAL \V52|aZ[8]~16_combout\ : std_logic;
SIGNAL \T6|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V13|MZ2[8]~25_combout\ : std_logic;
SIGNAL \V3_1[9]~input_o\ : std_logic;
SIGNAL \V48|MZ2[9]~9_combout\ : std_logic;
SIGNAL \V50|MZ2[9]~9_combout\ : std_logic;
SIGNAL \V52|aZ[8]~17\ : std_logic;
SIGNAL \V52|aZ[9]~18_combout\ : std_logic;
SIGNAL \T6|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V34|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V2_1[10]~input_o\ : std_logic;
SIGNAL \V3_1[11]~input_o\ : std_logic;
SIGNAL \V50|MZ2[11]~11_combout\ : std_logic;
SIGNAL \V48|MZ2[11]~11_combout\ : std_logic;
SIGNAL \V3_1[10]~input_o\ : std_logic;
SIGNAL \V50|MZ2[10]~10_combout\ : std_logic;
SIGNAL \V52|aZ[9]~19\ : std_logic;
SIGNAL \V52|aZ[10]~20_combout\ : std_logic;
SIGNAL \T6|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V48|MZ2[10]~10_combout\ : std_logic;
SIGNAL \V52|aZ[10]~21\ : std_logic;
SIGNAL \V52|aZ[11]~22_combout\ : std_logic;
SIGNAL \T6|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V2_1[12]~input_o\ : std_logic;
SIGNAL \V2_1[14]~input_o\ : std_logic;
SIGNAL \V36|MZ2[0]~0_combout\ : std_logic;
SIGNAL \V36|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V36|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V36|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V36|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V36|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V36|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V36|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V36|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V36|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V36|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V36|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V36|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V3_1[12]~input_o\ : std_logic;
SIGNAL \V48|MZ2[12]~12_combout\ : std_logic;
SIGNAL \V50|MZ2[12]~12_combout\ : std_logic;
SIGNAL \V52|aZ[11]~23\ : std_logic;
SIGNAL \V52|aZ[12]~24_combout\ : std_logic;
SIGNAL \T6|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V36|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V3_1[13]~input_o\ : std_logic;
SIGNAL \V50|MZ2[13]~13_combout\ : std_logic;
SIGNAL \V48|MZ2[13]~13_combout\ : std_logic;
SIGNAL \V52|aZ[12]~25\ : std_logic;
SIGNAL \V52|aZ[13]~26_combout\ : std_logic;
SIGNAL \T6|MZ2[13]~14_combout\ : std_logic;
SIGNAL \V36|MZ2[13]~14_combout\ : std_logic;
SIGNAL \V3_1[14]~input_o\ : std_logic;
SIGNAL \V50|MZ2[14]~14_combout\ : std_logic;
SIGNAL \V48|MZ2[14]~14_combout\ : std_logic;
SIGNAL \V52|aZ[13]~27\ : std_logic;
SIGNAL \V52|aZ[14]~28_combout\ : std_logic;
SIGNAL \T6|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V36|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V3_1[15]~input_o\ : std_logic;
SIGNAL \V50|MZ2[15]~15_combout\ : std_logic;
SIGNAL \V48|MZ2[15]~15_combout\ : std_logic;
SIGNAL \V52|aZ[14]~29\ : std_logic;
SIGNAL \V52|aZ[15]~30_combout\ : std_logic;
SIGNAL \T6|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V36|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \V43|MZ2[15]~24_combout\ : std_logic;
SIGNAL \V41|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V43|MZ2[14]~23_combout\ : std_logic;
SIGNAL \V41|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V41|MZ2[13]~14_combout\ : std_logic;
SIGNAL \V43|MZ2[13]~22_combout\ : std_logic;
SIGNAL \V41|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V43|MZ2[12]~21_combout\ : std_logic;
SIGNAL \V43|MZ2[11]~20_combout\ : std_logic;
SIGNAL \V41|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V43|MZ2[10]~19_combout\ : std_logic;
SIGNAL \V41|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V41|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V43|MZ2[9]~18_combout\ : std_logic;
SIGNAL \V43|MZ2[8]~17_combout\ : std_logic;
SIGNAL \V41|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V41|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V43|MZ2[7]~16_combout\ : std_logic;
SIGNAL \V41|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V43|MZ2[6]~15_combout\ : std_logic;
SIGNAL \V43|MZ2[5]~14_combout\ : std_logic;
SIGNAL \V41|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V43|MZ2[4]~13_combout\ : std_logic;
SIGNAL \V41|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V41|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V43|MZ2[3]~12_combout\ : std_logic;
SIGNAL \V45|aZ[2]~5\ : std_logic;
SIGNAL \V45|aZ[3]~7\ : std_logic;
SIGNAL \V45|aZ[4]~9\ : std_logic;
SIGNAL \V45|aZ[5]~11\ : std_logic;
SIGNAL \V45|aZ[6]~13\ : std_logic;
SIGNAL \V45|aZ[7]~15\ : std_logic;
SIGNAL \V45|aZ[8]~17\ : std_logic;
SIGNAL \V45|aZ[9]~19\ : std_logic;
SIGNAL \V45|aZ[10]~21\ : std_logic;
SIGNAL \V45|aZ[11]~23\ : std_logic;
SIGNAL \V45|aZ[12]~25\ : std_logic;
SIGNAL \V45|aZ[13]~27\ : std_logic;
SIGNAL \V45|aZ[14]~29\ : std_logic;
SIGNAL \V45|aZ[15]~30_combout\ : std_logic;
SIGNAL \V13|MZ2[10]~27_combout\ : std_logic;
SIGNAL \V13|MZ2[11]~28_combout\ : std_logic;
SIGNAL \V13|MZ2[12]~29_combout\ : std_logic;
SIGNAL \V45|aZ[12]~24_combout\ : std_logic;
SIGNAL \V7|Mux3~0_combout\ : std_logic;
SIGNAL \V13|MZ2[12]~30_combout\ : std_logic;
SIGNAL \V45|aZ[13]~26_combout\ : std_logic;
SIGNAL \V0[13]~input_o\ : std_logic;
SIGNAL \V2_1[13]~input_o\ : std_logic;
SIGNAL \T2|MZ2[13]~14_combout\ : std_logic;
SIGNAL \BD_S2[1]~input_o\ : std_logic;
SIGNAL \BD_S2[0]~input_o\ : std_logic;
SIGNAL \V3|R4[15]~0_combout\ : std_logic;
SIGNAL \V3|R4[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \V7|Mux2~0_combout\ : std_logic;
SIGNAL \V13|MZ2[14]~32_combout\ : std_logic;
SIGNAL \V13|MZ2[15]~33_combout\ : std_logic;
SIGNAL \M1_S2~input_o\ : std_logic;
SIGNAL \V15|MZ2[15]~0_combout\ : std_logic;
SIGNAL \V15|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V15|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V15|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V15|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V15|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V15|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V15|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V15|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V15|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V15|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V15|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V15|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V15|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V15|MZ2[13]~14_combout\ : std_logic;
SIGNAL \V15|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V15|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \V7|Mux2~1_combout\ : std_logic;
SIGNAL \V7|Mux2~2_combout\ : std_logic;
SIGNAL \V13|MZ2[13]~31_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \V0[15]~input_o\ : std_logic;
SIGNAL \V2_1[15]~input_o\ : std_logic;
SIGNAL \T2|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V7|Mux0~0_combout\ : std_logic;
SIGNAL \V7|Mux0~1_combout\ : std_logic;
SIGNAL \V7|Mux0~2_combout\ : std_logic;
SIGNAL \V7|Mux0~3_combout\ : std_logic;
SIGNAL \V34|MZ2[15]~16_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \T2|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \V0[14]~input_o\ : std_logic;
SIGNAL \V7|Mux1~1_combout\ : std_logic;
SIGNAL \V7|Mux1~2_combout\ : std_logic;
SIGNAL \V45|aZ[14]~28_combout\ : std_logic;
SIGNAL \V7|Mux1~0_combout\ : std_logic;
SIGNAL \V7|Mux1~3_combout\ : std_logic;
SIGNAL \V34|MZ2[14]~15_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \V7|Mux2~3_combout\ : std_logic;
SIGNAL \V34|MZ2[13]~14_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \T2|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V0[12]~input_o\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \V7|Mux3~1_combout\ : std_logic;
SIGNAL \V7|Mux3~2_combout\ : std_logic;
SIGNAL \V7|Mux3~3_combout\ : std_logic;
SIGNAL \V34|MZ2[12]~13_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \V45|aZ[11]~22_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \V0[11]~input_o\ : std_logic;
SIGNAL \V2_1[11]~input_o\ : std_logic;
SIGNAL \T2|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V7|Mux4~0_combout\ : std_logic;
SIGNAL \V7|Mux4~1_combout\ : std_logic;
SIGNAL \V7|Mux4~2_combout\ : std_logic;
SIGNAL \V7|Mux4~3_combout\ : std_logic;
SIGNAL \V34|MZ2[11]~12_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \T2|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \V0[10]~input_o\ : std_logic;
SIGNAL \V7|Mux5~1_combout\ : std_logic;
SIGNAL \V7|Mux5~2_combout\ : std_logic;
SIGNAL \V45|aZ[10]~20_combout\ : std_logic;
SIGNAL \V7|Mux5~0_combout\ : std_logic;
SIGNAL \V7|Mux5~3_combout\ : std_logic;
SIGNAL \V34|MZ2[10]~11_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \V0[9]~input_o\ : std_logic;
SIGNAL \V2_1[9]~input_o\ : std_logic;
SIGNAL \T2|MZ2[9]~10_combout\ : std_logic;
SIGNAL \V7|Mux6~0_combout\ : std_logic;
SIGNAL \V7|Mux6~1_combout\ : std_logic;
SIGNAL \V45|aZ[9]~18_combout\ : std_logic;
SIGNAL \V7|Mux6~2_combout\ : std_logic;
SIGNAL \V7|Mux6~3_combout\ : std_logic;
SIGNAL \V13|MZ2[9]~26_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \V2_1[8]~input_o\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \T2|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V0[8]~input_o\ : std_logic;
SIGNAL \V7|Mux7~1_combout\ : std_logic;
SIGNAL \V7|Mux7~2_combout\ : std_logic;
SIGNAL \V45|aZ[8]~16_combout\ : std_logic;
SIGNAL \V7|Mux7~0_combout\ : std_logic;
SIGNAL \V7|Mux7~3_combout\ : std_logic;
SIGNAL \V34|MZ2[8]~9_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \V45|aZ[7]~14_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \V0[7]~input_o\ : std_logic;
SIGNAL \V2_1[7]~input_o\ : std_logic;
SIGNAL \T2|MZ2[7]~8_combout\ : std_logic;
SIGNAL \V7|Mux8~0_combout\ : std_logic;
SIGNAL \V7|Mux8~1_combout\ : std_logic;
SIGNAL \V7|Mux8~2_combout\ : std_logic;
SIGNAL \V7|Mux8~3_combout\ : std_logic;
SIGNAL \V13|MZ2[7]~24_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \V2_1[6]~input_o\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \T2|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V0[6]~input_o\ : std_logic;
SIGNAL \V7|Mux9~1_combout\ : std_logic;
SIGNAL \V7|Mux9~2_combout\ : std_logic;
SIGNAL \V45|aZ[6]~12_combout\ : std_logic;
SIGNAL \V7|Mux9~0_combout\ : std_logic;
SIGNAL \V7|Mux9~3_combout\ : std_logic;
SIGNAL \V34|MZ2[6]~7_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \V45|aZ[5]~10_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \V0[5]~input_o\ : std_logic;
SIGNAL \V2_1[5]~input_o\ : std_logic;
SIGNAL \T2|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V7|Mux10~0_combout\ : std_logic;
SIGNAL \V7|Mux10~1_combout\ : std_logic;
SIGNAL \V7|Mux10~2_combout\ : std_logic;
SIGNAL \V7|Mux10~3_combout\ : std_logic;
SIGNAL \V34|MZ2[5]~6_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \T2|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V0[4]~input_o\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \V7|Mux11~1_combout\ : std_logic;
SIGNAL \V7|Mux11~2_combout\ : std_logic;
SIGNAL \V45|aZ[4]~8_combout\ : std_logic;
SIGNAL \V7|Mux11~0_combout\ : std_logic;
SIGNAL \V7|Mux11~3_combout\ : std_logic;
SIGNAL \V34|MZ2[4]~5_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \V45|aZ[3]~6_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \V0[3]~input_o\ : std_logic;
SIGNAL \V2_1[3]~input_o\ : std_logic;
SIGNAL \T2|MZ2[3]~4_combout\ : std_logic;
SIGNAL \V7|Mux12~0_combout\ : std_logic;
SIGNAL \V7|Mux12~1_combout\ : std_logic;
SIGNAL \V7|Mux12~2_combout\ : std_logic;
SIGNAL \V7|Mux12~3_combout\ : std_logic;
SIGNAL \V13|MZ2[3]~20_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \V0[1]~input_o\ : std_logic;
SIGNAL \V2_1[1]~input_o\ : std_logic;
SIGNAL \T2|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V7|Mux14~0_combout\ : std_logic;
SIGNAL \V7|Mux14~1_combout\ : std_logic;
SIGNAL \V41|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V45|aZ[0]~1\ : std_logic;
SIGNAL \V45|aZ[1]~2_combout\ : std_logic;
SIGNAL \V7|Mux14~2_combout\ : std_logic;
SIGNAL \V43|MZ2[1]~10_combout\ : std_logic;
SIGNAL \V45|aZ[1]~3\ : std_logic;
SIGNAL \V45|aZ[2]~4_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \V7|Mux13~0_combout\ : std_logic;
SIGNAL \V2_1[2]~input_o\ : std_logic;
SIGNAL \T2|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \V0[2]~input_o\ : std_logic;
SIGNAL \V7|Mux13~1_combout\ : std_logic;
SIGNAL \V7|Mux13~2_combout\ : std_logic;
SIGNAL \V7|Mux13~3_combout\ : std_logic;
SIGNAL \V34|MZ2[2]~3_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \V7|Mux14~3_combout\ : std_logic;
SIGNAL \V34|MZ2[1]~2_combout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \V38|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \T2|MZ2[0]~1_combout\ : std_logic;
SIGNAL \V0[0]~input_o\ : std_logic;
SIGNAL \V17|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \V7|Mux15~3_combout\ : std_logic;
SIGNAL \V7|Mux15~4_combout\ : std_logic;
SIGNAL \V7|Mux15~5_combout\ : std_logic;
SIGNAL \V9|P6[0]~0_combout\ : std_logic;
SIGNAL \V9|P6[1]~1_combout\ : std_logic;
SIGNAL \V9|P6[2]~2_combout\ : std_logic;
SIGNAL \V9|P6[3]~3_combout\ : std_logic;
SIGNAL \V9|P6[4]~4_combout\ : std_logic;
SIGNAL \V9|P6[5]~5_combout\ : std_logic;
SIGNAL \V9|P6[6]~6_combout\ : std_logic;
SIGNAL \V9|P6[7]~7_combout\ : std_logic;
SIGNAL \V9|P6[8]~8_combout\ : std_logic;
SIGNAL \V9|P6[9]~9_combout\ : std_logic;
SIGNAL \V9|P6[10]~10_combout\ : std_logic;
SIGNAL \V9|P6[11]~11_combout\ : std_logic;
SIGNAL \V9|P6[12]~12_combout\ : std_logic;
SIGNAL \V9|P6[13]~13_combout\ : std_logic;
SIGNAL \V9|P6[14]~14_combout\ : std_logic;
SIGNAL \V9|P6[15]~15_combout\ : std_logic;
SIGNAL \YDT_S2[2]~input_o\ : std_logic;
SIGNAL \YDT_S2[0]~input_o\ : std_logic;
SIGNAL \YDT_S2[1]~input_o\ : std_logic;
SIGNAL \T8|P6[0]~0_combout\ : std_logic;
SIGNAL \T8|P6[1]~1_combout\ : std_logic;
SIGNAL \T8|P6[2]~2_combout\ : std_logic;
SIGNAL \T8|P6[3]~3_combout\ : std_logic;
SIGNAL \T8|P6[4]~4_combout\ : std_logic;
SIGNAL \T8|P6[5]~5_combout\ : std_logic;
SIGNAL \T8|P6[6]~6_combout\ : std_logic;
SIGNAL \T8|P6[7]~7_combout\ : std_logic;
SIGNAL \T8|P6[8]~8_combout\ : std_logic;
SIGNAL \T8|P6[9]~9_combout\ : std_logic;
SIGNAL \T8|P6[10]~10_combout\ : std_logic;
SIGNAL \T8|P6[11]~11_combout\ : std_logic;
SIGNAL \T8|P6[12]~12_combout\ : std_logic;
SIGNAL \T8|P6[13]~13_combout\ : std_logic;
SIGNAL \T8|P6[14]~14_combout\ : std_logic;
SIGNAL \T8|P6[15]~15_combout\ : std_logic;
SIGNAL \V40|B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V6|P4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V40|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T7|B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V3|R4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V6|R4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V19|B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V19|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T3|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V47|B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T7|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \V54|B\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_V0 <= V0;
ww_V1_1 <= V1_1;
ww_V2_1 <= V2_1;
ww_V3_1 <= V3_1;
ww_V3_2 <= V3_2;
ww_V2_2 <= V2_2;
ww_BM_S1 <= BM_S1;
ww_BD_S2 <= BD_S2;
ww_YM_S1 <= YM_S1;
ww_YD_S2 <= YD_S2;
ww_GM_S1 <= GM_S1;
ww_GD_S2 <= GD_S2;
ww_BDT_S1 <= BDT_S1;
ww_BDT_S2 <= BDT_S2;
ww_YMT_S2 <= YMT_S2;
ww_YDT_S2 <= YDT_S2;
ww_BMT_S1 <= BMT_S1;
ww_BMT_S2 <= BMT_S2;
ww_YMT_S1 <= YMT_S1;
ww_YDT_S1 <= YDT_S1;
ww_M1_S1 <= M1_S1;
ww_M1_S2 <= M1_S2;
ww_M1_S3 <= M1_S3;
ww_M2_S1 <= M2_S1;
ww_M2_S2 <= M2_S2;
ww_M2_S3 <= M2_S3;
ww_M3_S1 <= M3_S1;
ww_M3_S2 <= M3_S2;
ww_M4_S1 <= M4_S1;
ww_M4_S2 <= M4_S2;
ww_M2T_S1 <= M2T_S1;
ww_A3T_S1 <= A3T_S1;
ww_M3T_S1 <= M3T_S1;
ww_RM_S1 <= RM_S1;
ww_RD_S2 <= RD_S2;
O1_S30 <= ww_O1_S30;
O2_S30 <= ww_O2_S30;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\V38|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\V38|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\V38|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \V38|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \V38|Mult0|auto_generated|mac_mult1~dataout\ & \V38|Mult0|auto_generated|mac_mult1~3\ & \V38|Mult0|auto_generated|mac_mult1~2\ & 
\V38|Mult0|auto_generated|mac_mult1~1\ & \V38|Mult0|auto_generated|mac_mult1~0\);

\V38|Mult0|auto_generated|mac_out2~0\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\V38|Mult0|auto_generated|mac_out2~1\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\V38|Mult0|auto_generated|mac_out2~2\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\V38|Mult0|auto_generated|mac_out2~3\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\V38|Mult0|auto_generated|mac_out2~dataout\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\V38|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\V38|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\V38|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\V38|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\V38|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\V38|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\V38|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\V38|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\V38|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\V38|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\V38|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\V38|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\V38|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\V38|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\V38|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\V38|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\V38|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\V38|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\V38|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\V38|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\V38|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\V38|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\V38|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\V38|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\V38|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\V38|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\V38|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\V38|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\V38|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\V38|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\V38|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\V17|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\V17|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\V17|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \V17|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \V17|Mult0|auto_generated|mac_mult1~dataout\ & \V17|Mult0|auto_generated|mac_mult1~3\ & \V17|Mult0|auto_generated|mac_mult1~2\ & 
\V17|Mult0|auto_generated|mac_mult1~1\ & \V17|Mult0|auto_generated|mac_mult1~0\);

\V17|Mult0|auto_generated|mac_out2~0\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\V17|Mult0|auto_generated|mac_out2~1\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\V17|Mult0|auto_generated|mac_out2~2\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\V17|Mult0|auto_generated|mac_out2~3\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\V17|Mult0|auto_generated|mac_out2~dataout\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\V17|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\V17|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\V17|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\V17|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\V17|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\V17|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\V17|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\V17|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\V17|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\V17|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\V17|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\V17|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\V17|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\V17|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\V17|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\V17|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\V17|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\V17|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\V17|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\V17|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\V17|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\V17|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\V17|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\V17|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\V17|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\V17|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\V17|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\V17|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\V17|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\V17|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\V17|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\V38|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\V34|MZ2[15]~16_combout\ & \V34|MZ2[14]~15_combout\ & \V34|MZ2[13]~14_combout\ & \V34|MZ2[12]~13_combout\ & \V34|MZ2[11]~12_combout\ & \V34|MZ2[10]~11_combout\ & \V34|MZ2[9]~10_combout\ & 
\V34|MZ2[8]~9_combout\ & \V34|MZ2[7]~8_combout\ & \V34|MZ2[6]~7_combout\ & \V34|MZ2[5]~6_combout\ & \V34|MZ2[4]~5_combout\ & \V34|MZ2[3]~4_combout\ & \V34|MZ2[2]~3_combout\ & \V34|MZ2[1]~2_combout\ & \V34|MZ2[0]~1_combout\ & gnd & gnd);

\V38|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\V36|MZ2[15]~16_combout\ & \V36|MZ2[14]~15_combout\ & \V36|MZ2[13]~14_combout\ & \V36|MZ2[12]~13_combout\ & \V36|MZ2[11]~12_combout\ & \V36|MZ2[10]~11_combout\ & \V36|MZ2[9]~10_combout\ & 
\V36|MZ2[8]~9_combout\ & \V36|MZ2[7]~8_combout\ & \V36|MZ2[6]~7_combout\ & \V36|MZ2[5]~6_combout\ & \V36|MZ2[4]~5_combout\ & \V36|MZ2[3]~4_combout\ & \V36|MZ2[2]~3_combout\ & \V36|MZ2[1]~2_combout\ & \V36|MZ2[0]~1_combout\ & gnd & gnd);

\V38|Mult0|auto_generated|mac_mult1~0\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\V38|Mult0|auto_generated|mac_mult1~1\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\V38|Mult0|auto_generated|mac_mult1~2\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\V38|Mult0|auto_generated|mac_mult1~3\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\V38|Mult0|auto_generated|mac_mult1~dataout\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\V38|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\V17|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\V13|MZ2[15]~33_combout\ & \V13|MZ2[14]~32_combout\ & \V13|MZ2[13]~31_combout\ & \V13|MZ2[12]~30_combout\ & \V13|MZ2[11]~28_combout\ & \V13|MZ2[10]~27_combout\ & \V13|MZ2[9]~26_combout\ & 
\V13|MZ2[8]~25_combout\ & \V13|MZ2[7]~24_combout\ & \V13|MZ2[6]~23_combout\ & \V13|MZ2[5]~22_combout\ & \V13|MZ2[4]~21_combout\ & \V13|MZ2[3]~20_combout\ & \V13|MZ2[2]~19_combout\ & \V13|MZ2[1]~18_combout\ & \V13|MZ2[0]~17_combout\ & gnd & gnd);

\V17|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\V15|MZ2[15]~16_combout\ & \V15|MZ2[14]~15_combout\ & \V15|MZ2[13]~14_combout\ & \V15|MZ2[12]~13_combout\ & \V15|MZ2[11]~12_combout\ & \V15|MZ2[10]~11_combout\ & \V15|MZ2[9]~10_combout\ & 
\V15|MZ2[8]~9_combout\ & \V15|MZ2[7]~8_combout\ & \V15|MZ2[6]~7_combout\ & \V15|MZ2[5]~6_combout\ & \V15|MZ2[4]~5_combout\ & \V15|MZ2[3]~4_combout\ & \V15|MZ2[2]~3_combout\ & \V15|MZ2[1]~2_combout\ & \V15|MZ2[0]~1_combout\ & gnd & gnd);

\V17|Mult0|auto_generated|mac_mult1~0\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\V17|Mult0|auto_generated|mac_mult1~1\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\V17|Mult0|auto_generated|mac_mult1~2\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\V17|Mult0|auto_generated|mac_mult1~3\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\V17|Mult0|auto_generated|mac_mult1~dataout\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\V17|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\V3|R4[15]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \V3|R4[15]~0_combout\);

\V6|P4[15]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \V6|P4[15]~0_combout\);

\V6|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \V6|Equal0~0_combout\);

\M1_S3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M1_S3~input_o\);

\M4_S2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M4_S2~input_o\);

\M2_S3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M2_S3~input_o\);

\YDT_S1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \YDT_S1~input_o\);

-- Location: IOOBUF_X63_Y91_N2
\O1_S30[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[0]~0_combout\,
	devoe => ww_devoe,
	o => \O1_S30[0]~output_o\);

-- Location: IOOBUF_X39_Y91_N2
\O1_S30[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[1]~1_combout\,
	devoe => ww_devoe,
	o => \O1_S30[1]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\O1_S30[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[2]~2_combout\,
	devoe => ww_devoe,
	o => \O1_S30[2]~output_o\);

-- Location: IOOBUF_X70_Y91_N9
\O1_S30[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[3]~3_combout\,
	devoe => ww_devoe,
	o => \O1_S30[3]~output_o\);

-- Location: IOOBUF_X63_Y91_N9
\O1_S30[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[4]~4_combout\,
	devoe => ww_devoe,
	o => \O1_S30[4]~output_o\);

-- Location: IOOBUF_X44_Y91_N23
\O1_S30[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[5]~5_combout\,
	devoe => ww_devoe,
	o => \O1_S30[5]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\O1_S30[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[6]~6_combout\,
	devoe => ww_devoe,
	o => \O1_S30[6]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\O1_S30[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[7]~7_combout\,
	devoe => ww_devoe,
	o => \O1_S30[7]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\O1_S30[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[8]~8_combout\,
	devoe => ww_devoe,
	o => \O1_S30[8]~output_o\);

-- Location: IOOBUF_X41_Y91_N9
\O1_S30[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[9]~9_combout\,
	devoe => ww_devoe,
	o => \O1_S30[9]~output_o\);

-- Location: IOOBUF_X37_Y91_N9
\O1_S30[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[10]~10_combout\,
	devoe => ww_devoe,
	o => \O1_S30[10]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\O1_S30[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[11]~11_combout\,
	devoe => ww_devoe,
	o => \O1_S30[11]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\O1_S30[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[12]~12_combout\,
	devoe => ww_devoe,
	o => \O1_S30[12]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\O1_S30[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[13]~13_combout\,
	devoe => ww_devoe,
	o => \O1_S30[13]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\O1_S30[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[14]~14_combout\,
	devoe => ww_devoe,
	o => \O1_S30[14]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\O1_S30[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|P6[15]~15_combout\,
	devoe => ww_devoe,
	o => \O1_S30[15]~output_o\);

-- Location: IOOBUF_X92_Y91_N23
\O2_S30[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[0]~0_combout\,
	devoe => ww_devoe,
	o => \O2_S30[0]~output_o\);

-- Location: IOOBUF_X106_Y91_N16
\O2_S30[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[1]~1_combout\,
	devoe => ww_devoe,
	o => \O2_S30[1]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\O2_S30[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[2]~2_combout\,
	devoe => ww_devoe,
	o => \O2_S30[2]~output_o\);

-- Location: IOOBUF_X92_Y91_N9
\O2_S30[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[3]~3_combout\,
	devoe => ww_devoe,
	o => \O2_S30[3]~output_o\);

-- Location: IOOBUF_X90_Y91_N16
\O2_S30[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[4]~4_combout\,
	devoe => ww_devoe,
	o => \O2_S30[4]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\O2_S30[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[5]~5_combout\,
	devoe => ww_devoe,
	o => \O2_S30[5]~output_o\);

-- Location: IOOBUF_X37_Y91_N2
\O2_S30[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[6]~6_combout\,
	devoe => ww_devoe,
	o => \O2_S30[6]~output_o\);

-- Location: IOOBUF_X99_Y91_N2
\O2_S30[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[7]~7_combout\,
	devoe => ww_devoe,
	o => \O2_S30[7]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\O2_S30[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[8]~8_combout\,
	devoe => ww_devoe,
	o => \O2_S30[8]~output_o\);

-- Location: IOOBUF_X92_Y91_N16
\O2_S30[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[9]~9_combout\,
	devoe => ww_devoe,
	o => \O2_S30[9]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\O2_S30[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[10]~10_combout\,
	devoe => ww_devoe,
	o => \O2_S30[10]~output_o\);

-- Location: IOOBUF_X108_Y91_N2
\O2_S30[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[11]~11_combout\,
	devoe => ww_devoe,
	o => \O2_S30[11]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\O2_S30[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[12]~12_combout\,
	devoe => ww_devoe,
	o => \O2_S30[12]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\O2_S30[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[13]~13_combout\,
	devoe => ww_devoe,
	o => \O2_S30[13]~output_o\);

-- Location: IOOBUF_X90_Y91_N23
\O2_S30[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[14]~14_combout\,
	devoe => ww_devoe,
	o => \O2_S30[14]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\O2_S30[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T8|P6[15]~15_combout\,
	devoe => ww_devoe,
	o => \O2_S30[15]~output_o\);

-- Location: IOIBUF_X53_Y91_N8
\RD_S2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_S2(2),
	o => \RD_S2[2]~input_o\);

-- Location: IOIBUF_X77_Y91_N15
\RM_S1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RM_S1(2),
	o => \RM_S1[2]~input_o\);

-- Location: IOIBUF_X77_Y91_N8
\RM_S1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RM_S1(1),
	o => \RM_S1[1]~input_o\);

-- Location: IOIBUF_X57_Y0_N15
\M1_S3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1_S3,
	o => \M1_S3~input_o\);

-- Location: CLKCTRL_G29
\M1_S3~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M1_S3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M1_S3~inputclkctrl_outclk\);

-- Location: IOIBUF_X77_Y91_N1
\BM_S1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BM_S1(1),
	o => \BM_S1[1]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\BMT_S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BMT_S2,
	o => \BMT_S2~input_o\);

-- Location: IOIBUF_X41_Y91_N22
\BM_S1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BM_S1(0),
	o => \BM_S1[0]~input_o\);

-- Location: LCCOMB_X72_Y85_N14
\T2|MZ2[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[1]~0_combout\ = ((\BM_S1[1]~input_o\ & \BM_S1[0]~input_o\)) # (!\BMT_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BMT_S2~input_o\,
	datab => \BM_S1[1]~input_o\,
	datad => \BM_S1[0]~input_o\,
	combout => \T2|MZ2[1]~0_combout\);

-- Location: IOIBUF_X99_Y91_N15
\V2_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(0),
	o => \V2_1[0]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\M4_S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M4_S2,
	o => \M4_S2~input_o\);

-- Location: CLKCTRL_G27
\M4_S2~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M4_S2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M4_S2~inputclkctrl_outclk\);

-- Location: IOIBUF_X61_Y91_N15
\RD_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_S2(1),
	o => \RD_S2[1]~input_o\);

-- Location: IOIBUF_X75_Y91_N8
\M4_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M4_S1,
	o => \M4_S1~input_o\);

-- Location: IOIBUF_X72_Y91_N1
\RD_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_S2(0),
	o => \RD_S2[0]~input_o\);

-- Location: LCCOMB_X73_Y87_N10
\V34|MZ2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[0]~0_combout\ = (!\RD_S2[1]~input_o\ & (!\M4_S1~input_o\ & (\RD_S2[2]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \M4_S1~input_o\,
	datac => \RD_S2[2]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V34|MZ2[0]~0_combout\);

-- Location: IOIBUF_X57_Y0_N8
\YDT_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YDT_S1,
	o => \YDT_S1~input_o\);

-- Location: CLKCTRL_G25
\YDT_S1~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \YDT_S1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \YDT_S1~inputclkctrl_outclk\);

-- Location: IOIBUF_X79_Y91_N15
\YM_S1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YM_S1(0),
	o => \YM_S1[0]~input_o\);

-- Location: IOIBUF_X111_Y91_N1
\V3_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(0),
	o => \V3_1[0]~input_o\);

-- Location: IOIBUF_X48_Y91_N15
\YMT_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMT_S1,
	o => \YMT_S1~input_o\);

-- Location: IOIBUF_X95_Y91_N8
\YM_S1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YM_S1(1),
	o => \YM_S1[1]~input_o\);

-- Location: LCCOMB_X72_Y88_N10
\T6|MZ2[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[1]~0_combout\ = (\YM_S1[1]~input_o\) # (!\YMT_S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \YMT_S1~input_o\,
	datad => \YM_S1[1]~input_o\,
	combout => \T6|MZ2[1]~0_combout\);

-- Location: IOIBUF_X79_Y91_N22
\M2_S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M2_S2,
	o => \M2_S2~input_o\);

-- Location: IOIBUF_X3_Y91_N8
\YD_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YD_S2(1),
	o => \YD_S2[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\YD_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YD_S2(0),
	o => \YD_S2[0]~input_o\);

-- Location: LCCOMB_X1_Y46_N14
\V6|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|Equal0~0_combout\ = (!\YD_S2[1]~input_o\ & \YD_S2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \YD_S2[1]~input_o\,
	datad => \YD_S2[0]~input_o\,
	combout => \V6|Equal0~0_combout\);

-- Location: CLKCTRL_G7
\V6|Equal0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \V6|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \V6|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X78_Y88_N18
\V6|R4[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(0) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(0)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(0),
	datac => \V6|Equal0~0clkctrl_outclk\,
	datad => \T7|A\(0),
	combout => \V6|R4\(0));

-- Location: LCCOMB_X78_Y88_N20
\V50|MZ2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[0]~0_combout\ = (!\M2_S2~input_o\ & \V6|R4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datad => \V6|R4\(0),
	combout => \V50|MZ2[0]~0_combout\);

-- Location: IOIBUF_X82_Y91_N1
\M2_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M2_S1,
	o => \M2_S1~input_o\);

-- Location: LCCOMB_X78_Y88_N14
\V48|MZ2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[0]~0_combout\ = (!\M2_S1~input_o\ & \V6|R4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(0),
	combout => \V48|MZ2[0]~0_combout\);

-- Location: LCCOMB_X77_Y88_N0
\V52|aZ[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[0]~0_combout\ = (\V50|MZ2[0]~0_combout\ & (\V48|MZ2[0]~0_combout\ $ (VCC))) # (!\V50|MZ2[0]~0_combout\ & (\V48|MZ2[0]~0_combout\ & VCC))
-- \V52|aZ[0]~1\ = CARRY((\V50|MZ2[0]~0_combout\ & \V48|MZ2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[0]~0_combout\,
	datab => \V48|MZ2[0]~0_combout\,
	datad => VCC,
	combout => \V52|aZ[0]~0_combout\,
	cout => \V52|aZ[0]~1\);

-- Location: IOIBUF_X57_Y0_N22
\M2_S3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M2_S3,
	o => \M2_S3~input_o\);

-- Location: CLKCTRL_G28
\M2_S3~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M2_S3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M2_S3~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y89_N28
\V54|B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(0) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V54|B\(0)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V52|aZ[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V52|aZ[0]~0_combout\,
	datac => \V54|B\(0),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(0));

-- Location: LCCOMB_X77_Y89_N24
\T6|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[0]~1_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[0]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \V3_1[0]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(0),
	combout => \T6|MZ2[0]~1_combout\);

-- Location: LCCOMB_X77_Y89_N22
\T7|A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(0) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[0]~1_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(0),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[0]~1_combout\,
	combout => \T7|A\(0));

-- Location: LCCOMB_X1_Y46_N4
\V6|P4[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4[15]~0_combout\ = (!\YD_S2[0]~input_o\) # (!\YD_S2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \YD_S2[1]~input_o\,
	datad => \YD_S2[0]~input_o\,
	combout => \V6|P4[15]~0_combout\);

-- Location: CLKCTRL_G10
\V6|P4[15]~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \V6|P4[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \V6|P4[15]~0clkctrl_outclk\);

-- Location: LCCOMB_X75_Y86_N28
\V6|P4[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(0) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(0)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(0),
	datac => \V6|P4\(0),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(0));

-- Location: LCCOMB_X75_Y86_N2
\V34|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[0]~1_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux15~5_combout\) # ((\M4_S1~input_o\ & \V6|P4\(0))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux15~5_combout\,
	datad => \V6|P4\(0),
	combout => \V34|MZ2[0]~1_combout\);

-- Location: LCCOMB_X75_Y88_N12
\V7|Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~7_combout\ = (\RM_S1[1]~input_o\ & \RM_S1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RM_S1[1]~input_o\,
	datad => \RM_S1[2]~input_o\,
	combout => \V7|Mux15~7_combout\);

-- Location: IOIBUF_X77_Y91_N22
\RM_S1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RM_S1(0),
	o => \RM_S1[0]~input_o\);

-- Location: LCCOMB_X77_Y83_N16
\V7|Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~6_combout\ = (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\ & \RM_S1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datac => \RM_S1[2]~input_o\,
	datad => \RM_S1[0]~input_o\,
	combout => \V7|Mux15~6_combout\);

-- Location: IOIBUF_X90_Y91_N8
\V3_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(2),
	o => \V3_1[2]~input_o\);

-- Location: LCCOMB_X76_Y88_N10
\V6|R4[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(2) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(2)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|R4\(2),
	datac => \T7|A\(2),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(2));

-- Location: LCCOMB_X76_Y88_N8
\V50|MZ2[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[2]~2_combout\ = (!\M2_S2~input_o\ & \V6|R4\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(2),
	combout => \V50|MZ2[2]~2_combout\);

-- Location: LCCOMB_X76_Y88_N30
\V48|MZ2[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[2]~2_combout\ = (!\M2_S1~input_o\ & \V6|R4\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(2),
	combout => \V48|MZ2[2]~2_combout\);

-- Location: IOIBUF_X48_Y91_N1
\V3_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(1),
	o => \V3_1[1]~input_o\);

-- Location: LCCOMB_X76_Y88_N20
\V50|MZ2[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[1]~1_combout\ = (!\M2_S2~input_o\ & \V6|R4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(1),
	combout => \V50|MZ2[1]~1_combout\);

-- Location: LCCOMB_X77_Y88_N2
\V52|aZ[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[1]~2_combout\ = (\V48|MZ2[1]~1_combout\ & ((\V50|MZ2[1]~1_combout\ & (\V52|aZ[0]~1\ & VCC)) # (!\V50|MZ2[1]~1_combout\ & (!\V52|aZ[0]~1\)))) # (!\V48|MZ2[1]~1_combout\ & ((\V50|MZ2[1]~1_combout\ & (!\V52|aZ[0]~1\)) # (!\V50|MZ2[1]~1_combout\ & 
-- ((\V52|aZ[0]~1\) # (GND)))))
-- \V52|aZ[1]~3\ = CARRY((\V48|MZ2[1]~1_combout\ & (!\V50|MZ2[1]~1_combout\ & !\V52|aZ[0]~1\)) # (!\V48|MZ2[1]~1_combout\ & ((!\V52|aZ[0]~1\) # (!\V50|MZ2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[1]~1_combout\,
	datab => \V50|MZ2[1]~1_combout\,
	datad => VCC,
	cin => \V52|aZ[0]~1\,
	combout => \V52|aZ[1]~2_combout\,
	cout => \V52|aZ[1]~3\);

-- Location: LCCOMB_X76_Y88_N28
\V54|B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(1) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V54|B\(1)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V52|aZ[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V52|aZ[1]~2_combout\,
	datac => \V54|B\(1),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(1));

-- Location: LCCOMB_X76_Y88_N24
\T6|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[1]~2_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[1]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \T6|MZ2[1]~0_combout\,
	datac => \V3_1[1]~input_o\,
	datad => \V54|B\(1),
	combout => \T6|MZ2[1]~2_combout\);

-- Location: LCCOMB_X76_Y88_N12
\T7|A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(1) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[1]~2_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(1),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[1]~2_combout\,
	combout => \T7|A\(1));

-- Location: LCCOMB_X76_Y88_N16
\V6|R4[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(1) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(1)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(1),
	datac => \T7|A\(1),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(1));

-- Location: LCCOMB_X76_Y88_N14
\V48|MZ2[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[1]~1_combout\ = (!\M2_S1~input_o\ & \V6|R4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(1),
	combout => \V48|MZ2[1]~1_combout\);

-- Location: LCCOMB_X77_Y88_N4
\V52|aZ[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[2]~4_combout\ = ((\V50|MZ2[2]~2_combout\ $ (\V48|MZ2[2]~2_combout\ $ (!\V52|aZ[1]~3\)))) # (GND)
-- \V52|aZ[2]~5\ = CARRY((\V50|MZ2[2]~2_combout\ & ((\V48|MZ2[2]~2_combout\) # (!\V52|aZ[1]~3\))) # (!\V50|MZ2[2]~2_combout\ & (\V48|MZ2[2]~2_combout\ & !\V52|aZ[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[2]~2_combout\,
	datab => \V48|MZ2[2]~2_combout\,
	datad => VCC,
	cin => \V52|aZ[1]~3\,
	combout => \V52|aZ[2]~4_combout\,
	cout => \V52|aZ[2]~5\);

-- Location: LCCOMB_X76_Y88_N6
\V54|B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(2) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V54|B\(2)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V52|aZ[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V52|aZ[2]~4_combout\,
	datac => \V54|B\(2),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(2));

-- Location: LCCOMB_X76_Y88_N18
\T6|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[2]~3_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[2]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \T6|MZ2[1]~0_combout\,
	datac => \V3_1[2]~input_o\,
	datad => \V54|B\(2),
	combout => \T6|MZ2[2]~3_combout\);

-- Location: LCCOMB_X76_Y88_N2
\T7|A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(2) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[2]~3_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(2),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[2]~3_combout\,
	combout => \T7|A\(2));

-- Location: LCCOMB_X73_Y87_N4
\V6|P4[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(2) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(2))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(2),
	datac => \T7|A\(2),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(2));

-- Location: LCCOMB_X77_Y84_N10
\V7|Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~8_combout\ = (\RM_S1[2]~input_o\ & ((\RM_S1[1]~input_o\) # (\RM_S1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RM_S1[2]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \RM_S1[0]~input_o\,
	combout => \V7|Mux15~8_combout\);

-- Location: LCCOMB_X77_Y84_N24
\V7|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~0_combout\ = (\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RM_S1[2]~input_o\,
	datac => \RM_S1[1]~input_o\,
	combout => \V7|Mux15~0_combout\);

-- Location: LCCOMB_X73_Y87_N0
\V41|MZ2[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[15]~0_combout\ = (\RD_S2[0]~input_o\ & (!\RD_S2[2]~input_o\ & (\RD_S2[1]~input_o\ $ (\M2_S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \RD_S2[0]~input_o\,
	datac => \RD_S2[2]~input_o\,
	datad => \M2_S1~input_o\,
	combout => \V41|MZ2[15]~0_combout\);

-- Location: LCCOMB_X73_Y83_N16
\V41|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[2]~3_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux13~3_combout\,
	combout => \V41|MZ2[2]~3_combout\);

-- Location: LCCOMB_X73_Y87_N2
\V43|MZ2[15]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[15]~8_combout\ = (!\RD_S2[2]~input_o\ & (\RD_S2[0]~input_o\ & (\RD_S2[1]~input_o\ $ (\M2_S2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \RD_S2[2]~input_o\,
	datac => \M2_S2~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V43|MZ2[15]~8_combout\);

-- Location: LCCOMB_X73_Y83_N30
\V43|MZ2[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[2]~11_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux13~3_combout\,
	combout => \V43|MZ2[2]~11_combout\);

-- Location: LCCOMB_X76_Y84_N10
\V43|MZ2[1]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[1]~25_combout\ = ((!\RM_S1[1]~input_o\ & !\RM_S1[0]~input_o\)) # (!\RM_S1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RM_S1[1]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \RM_S1[2]~input_o\,
	combout => \V43|MZ2[1]~25_combout\);

-- Location: LCCOMB_X75_Y81_N16
\V7|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~1_combout\ = ((!\RM_S1[1]~input_o\ & !\RM_S1[0]~input_o\)) # (!\RM_S1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datad => \RM_S1[0]~input_o\,
	combout => \V7|Mux15~1_combout\);

-- Location: LCCOMB_X75_Y82_N30
\V40|B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(0) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(0))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~dataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|B\(0),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~dataout\,
	combout => \V40|B\(0));

-- Location: LCCOMB_X75_Y82_N10
\V41|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[0]~1_combout\ = (\V41|MZ2[15]~0_combout\ & ((\V7|Mux15~2_combout\) # ((!\RM_S1[2]~input_o\ & \V7|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \V7|Mux15~4_combout\,
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux15~2_combout\,
	combout => \V41|MZ2[0]~1_combout\);

-- Location: LCCOMB_X75_Y82_N0
\V43|MZ2[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[0]~9_combout\ = (\V43|MZ2[15]~8_combout\ & ((\V7|Mux15~2_combout\) # ((!\RM_S1[2]~input_o\ & \V7|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \V7|Mux15~2_combout\,
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux15~4_combout\,
	combout => \V43|MZ2[0]~9_combout\);

-- Location: LCCOMB_X76_Y83_N0
\V45|aZ[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[0]~0_combout\ = (\V41|MZ2[0]~1_combout\ & (\V43|MZ2[0]~9_combout\ $ (VCC))) # (!\V41|MZ2[0]~1_combout\ & (\V43|MZ2[0]~9_combout\ & VCC))
-- \V45|aZ[0]~1\ = CARRY((\V41|MZ2[0]~1_combout\ & \V43|MZ2[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[0]~1_combout\,
	datab => \V43|MZ2[0]~9_combout\,
	datad => VCC,
	combout => \V45|aZ[0]~0_combout\,
	cout => \V45|aZ[0]~1\);

-- Location: LCCOMB_X76_Y82_N22
\V47|B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(0) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V47|B\(0)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V45|aZ[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V45|aZ[0]~0_combout\,
	datac => \V47|B\(0),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(0));

-- Location: LCCOMB_X75_Y82_N16
\V7|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~2_combout\ = (!\V7|Mux15~0_combout\ & ((\V7|Mux15~1_combout\ & ((\V47|B\(0)))) # (!\V7|Mux15~1_combout\ & (\V40|B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~1_combout\,
	datac => \V40|B\(0),
	datad => \V47|B\(0),
	combout => \V7|Mux15~2_combout\);

-- Location: IOIBUF_X63_Y91_N15
\M1_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1_S1,
	o => \M1_S1~input_o\);

-- Location: LCCOMB_X72_Y87_N8
\V13|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[15]~16_combout\ = (!\RD_S2[2]~input_o\ & (!\RD_S2[0]~input_o\ & (\M1_S1~input_o\ $ (\RD_S2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \M1_S1~input_o\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V13|MZ2[15]~16_combout\);

-- Location: LCCOMB_X75_Y82_N8
\V13|MZ2[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[0]~17_combout\ = (\V13|MZ2[15]~16_combout\ & ((\V7|Mux15~2_combout\) # ((!\RM_S1[2]~input_o\ & \V7|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \V7|Mux15~2_combout\,
	datac => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux15~4_combout\,
	combout => \V13|MZ2[0]~17_combout\);

-- Location: LCCOMB_X73_Y83_N2
\V13|MZ2[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[1]~18_combout\ = (\V13|MZ2[15]~16_combout\ & ((\V43|MZ2[1]~25_combout\ & ((\V7|Mux14~2_combout\))) # (!\V43|MZ2[1]~25_combout\ & (\V40|B\(1) & !\V7|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datab => \V43|MZ2[1]~25_combout\,
	datac => \V40|B\(1),
	datad => \V7|Mux14~2_combout\,
	combout => \V13|MZ2[1]~18_combout\);

-- Location: LCCOMB_X73_Y83_N0
\V13|MZ2[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[2]~19_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux13~3_combout\,
	combout => \V13|MZ2[2]~19_combout\);

-- Location: IOIBUF_X108_Y91_N8
\V3_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(3),
	o => \V3_1[3]~input_o\);

-- Location: LCCOMB_X78_Y88_N8
\V6|R4[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(3) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(3))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(3),
	datac => \V6|R4\(3),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(3));

-- Location: LCCOMB_X78_Y88_N30
\V48|MZ2[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[3]~3_combout\ = (!\M2_S1~input_o\ & \V6|R4\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datac => \V6|R4\(3),
	combout => \V48|MZ2[3]~3_combout\);

-- Location: LCCOMB_X78_Y88_N28
\V50|MZ2[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[3]~3_combout\ = (\V6|R4\(3) & !\M2_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V6|R4\(3),
	datad => \M2_S2~input_o\,
	combout => \V50|MZ2[3]~3_combout\);

-- Location: LCCOMB_X77_Y88_N6
\V52|aZ[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[3]~6_combout\ = (\V48|MZ2[3]~3_combout\ & ((\V50|MZ2[3]~3_combout\ & (\V52|aZ[2]~5\ & VCC)) # (!\V50|MZ2[3]~3_combout\ & (!\V52|aZ[2]~5\)))) # (!\V48|MZ2[3]~3_combout\ & ((\V50|MZ2[3]~3_combout\ & (!\V52|aZ[2]~5\)) # (!\V50|MZ2[3]~3_combout\ & 
-- ((\V52|aZ[2]~5\) # (GND)))))
-- \V52|aZ[3]~7\ = CARRY((\V48|MZ2[3]~3_combout\ & (!\V50|MZ2[3]~3_combout\ & !\V52|aZ[2]~5\)) # (!\V48|MZ2[3]~3_combout\ & ((!\V52|aZ[2]~5\) # (!\V50|MZ2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[3]~3_combout\,
	datab => \V50|MZ2[3]~3_combout\,
	datad => VCC,
	cin => \V52|aZ[2]~5\,
	combout => \V52|aZ[3]~6_combout\,
	cout => \V52|aZ[3]~7\);

-- Location: LCCOMB_X79_Y88_N12
\V54|B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(3) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(3))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V54|B\(3),
	datac => \V52|aZ[3]~6_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(3));

-- Location: LCCOMB_X79_Y88_N6
\T6|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[3]~4_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[3]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \V3_1[3]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(3),
	combout => \T6|MZ2[3]~4_combout\);

-- Location: LCCOMB_X79_Y88_N4
\T7|A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(3) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[3]~4_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(3),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[3]~4_combout\,
	combout => \T7|A\(3));

-- Location: LCCOMB_X75_Y86_N18
\V6|P4[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(3) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(3))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(3),
	datac => \T7|A\(3),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(3));

-- Location: LCCOMB_X75_Y86_N24
\V34|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[3]~4_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux12~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(3))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux12~3_combout\,
	datad => \V6|P4\(3),
	combout => \V34|MZ2[3]~4_combout\);

-- Location: IOIBUF_X101_Y91_N8
\V2_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(4),
	o => \V2_1[4]~input_o\);

-- Location: LCCOMB_X75_Y81_N18
\V13|MZ2[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[4]~21_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux11~3_combout\,
	combout => \V13|MZ2[4]~21_combout\);

-- Location: LCCOMB_X77_Y85_N8
\V13|MZ2[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[5]~22_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux10~3_combout\,
	combout => \V13|MZ2[5]~22_combout\);

-- Location: LCCOMB_X75_Y83_N14
\V13|MZ2[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[6]~23_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux9~3_combout\,
	combout => \V13|MZ2[6]~23_combout\);

-- Location: IOIBUF_X63_Y91_N22
\V3_1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(7),
	o => \V3_1[7]~input_o\);

-- Location: LCCOMB_X75_Y88_N8
\V6|R4[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(7) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(7)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(7),
	datac => \T7|A\(7),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(7));

-- Location: LCCOMB_X76_Y88_N0
\V50|MZ2[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[7]~7_combout\ = (!\M2_S2~input_o\ & \V6|R4\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(7),
	combout => \V50|MZ2[7]~7_combout\);

-- Location: LCCOMB_X76_Y88_N22
\V48|MZ2[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[7]~7_combout\ = (!\M2_S1~input_o\ & \V6|R4\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(7),
	combout => \V48|MZ2[7]~7_combout\);

-- Location: IOIBUF_X44_Y91_N1
\V3_1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(6),
	o => \V3_1[6]~input_o\);

-- Location: LCCOMB_X78_Y88_N24
\V48|MZ2[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[6]~6_combout\ = (!\M2_S1~input_o\ & \V6|R4\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(6),
	combout => \V48|MZ2[6]~6_combout\);

-- Location: IOIBUF_X41_Y91_N1
\V3_1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(5),
	o => \V3_1[5]~input_o\);

-- Location: LCCOMB_X78_Y88_N10
\V50|MZ2[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[5]~5_combout\ = (\V6|R4\(5) & !\M2_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V6|R4\(5),
	datad => \M2_S2~input_o\,
	combout => \V50|MZ2[5]~5_combout\);

-- Location: IOIBUF_X92_Y91_N1
\V3_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(4),
	o => \V3_1[4]~input_o\);

-- Location: LCCOMB_X78_Y88_N16
\V48|MZ2[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[4]~4_combout\ = (!\M2_S1~input_o\ & \V6|R4\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(4),
	combout => \V48|MZ2[4]~4_combout\);

-- Location: LCCOMB_X77_Y88_N8
\V52|aZ[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[4]~8_combout\ = ((\V50|MZ2[4]~4_combout\ $ (\V48|MZ2[4]~4_combout\ $ (!\V52|aZ[3]~7\)))) # (GND)
-- \V52|aZ[4]~9\ = CARRY((\V50|MZ2[4]~4_combout\ & ((\V48|MZ2[4]~4_combout\) # (!\V52|aZ[3]~7\))) # (!\V50|MZ2[4]~4_combout\ & (\V48|MZ2[4]~4_combout\ & !\V52|aZ[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[4]~4_combout\,
	datab => \V48|MZ2[4]~4_combout\,
	datad => VCC,
	cin => \V52|aZ[3]~7\,
	combout => \V52|aZ[4]~8_combout\,
	cout => \V52|aZ[4]~9\);

-- Location: LCCOMB_X79_Y88_N10
\V54|B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(4) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V54|B\(4)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V52|aZ[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V52|aZ[4]~8_combout\,
	datac => \V54|B\(4),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(4));

-- Location: LCCOMB_X79_Y88_N28
\T6|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[4]~5_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[4]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \V3_1[4]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(4),
	combout => \T6|MZ2[4]~5_combout\);

-- Location: LCCOMB_X79_Y88_N2
\T7|A[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(4) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[4]~5_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(4),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[4]~5_combout\,
	combout => \T7|A\(4));

-- Location: LCCOMB_X79_Y88_N24
\V6|R4[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(4) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(4))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(4),
	datac => \V6|Equal0~0clkctrl_outclk\,
	datad => \V6|R4\(4),
	combout => \V6|R4\(4));

-- Location: LCCOMB_X79_Y88_N14
\V50|MZ2[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[4]~4_combout\ = (!\M2_S2~input_o\ & \V6|R4\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S2~input_o\,
	datad => \V6|R4\(4),
	combout => \V50|MZ2[4]~4_combout\);

-- Location: LCCOMB_X77_Y88_N10
\V52|aZ[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[5]~10_combout\ = (\V48|MZ2[5]~5_combout\ & ((\V50|MZ2[5]~5_combout\ & (\V52|aZ[4]~9\ & VCC)) # (!\V50|MZ2[5]~5_combout\ & (!\V52|aZ[4]~9\)))) # (!\V48|MZ2[5]~5_combout\ & ((\V50|MZ2[5]~5_combout\ & (!\V52|aZ[4]~9\)) # (!\V50|MZ2[5]~5_combout\ & 
-- ((\V52|aZ[4]~9\) # (GND)))))
-- \V52|aZ[5]~11\ = CARRY((\V48|MZ2[5]~5_combout\ & (!\V50|MZ2[5]~5_combout\ & !\V52|aZ[4]~9\)) # (!\V48|MZ2[5]~5_combout\ & ((!\V52|aZ[4]~9\) # (!\V50|MZ2[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[5]~5_combout\,
	datab => \V50|MZ2[5]~5_combout\,
	datad => VCC,
	cin => \V52|aZ[4]~9\,
	combout => \V52|aZ[5]~10_combout\,
	cout => \V52|aZ[5]~11\);

-- Location: LCCOMB_X72_Y88_N0
\V54|B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(5) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(5))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(5),
	datac => \V52|aZ[5]~10_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(5));

-- Location: LCCOMB_X72_Y88_N20
\T6|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[5]~6_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[5]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \YM_S1[0]~input_o\,
	datac => \V3_1[5]~input_o\,
	datad => \V54|B\(5),
	combout => \T6|MZ2[5]~6_combout\);

-- Location: LCCOMB_X72_Y88_N14
\T7|A[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(5) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[5]~6_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(5),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[5]~6_combout\,
	combout => \T7|A\(5));

-- Location: LCCOMB_X78_Y88_N26
\V6|R4[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(5) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(5)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|R4\(5),
	datac => \T7|A\(5),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(5));

-- Location: LCCOMB_X78_Y88_N4
\V48|MZ2[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[5]~5_combout\ = (!\M2_S1~input_o\ & \V6|R4\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datac => \V6|R4\(5),
	combout => \V48|MZ2[5]~5_combout\);

-- Location: LCCOMB_X77_Y88_N12
\V52|aZ[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[6]~12_combout\ = ((\V50|MZ2[6]~6_combout\ $ (\V48|MZ2[6]~6_combout\ $ (!\V52|aZ[5]~11\)))) # (GND)
-- \V52|aZ[6]~13\ = CARRY((\V50|MZ2[6]~6_combout\ & ((\V48|MZ2[6]~6_combout\) # (!\V52|aZ[5]~11\))) # (!\V50|MZ2[6]~6_combout\ & (\V48|MZ2[6]~6_combout\ & !\V52|aZ[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[6]~6_combout\,
	datab => \V48|MZ2[6]~6_combout\,
	datad => VCC,
	cin => \V52|aZ[5]~11\,
	combout => \V52|aZ[6]~12_combout\,
	cout => \V52|aZ[6]~13\);

-- Location: LCCOMB_X72_Y88_N6
\V54|B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(6) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(6))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V54|B\(6),
	datac => \V52|aZ[6]~12_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(6));

-- Location: LCCOMB_X72_Y88_N18
\T6|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[6]~7_combout\ = (\T6|MZ2[1]~0_combout\ & (\V3_1[6]~input_o\)) # (!\T6|MZ2[1]~0_combout\ & (((!\YM_S1[0]~input_o\ & \V54|B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \V3_1[6]~input_o\,
	datac => \YM_S1[0]~input_o\,
	datad => \V54|B\(6),
	combout => \T6|MZ2[6]~7_combout\);

-- Location: LCCOMB_X72_Y88_N8
\T7|A[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(6) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[6]~7_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(6),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[6]~7_combout\,
	combout => \T7|A\(6));

-- Location: LCCOMB_X78_Y88_N0
\V6|R4[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(6) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(6)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(6),
	datac => \T7|A\(6),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(6));

-- Location: LCCOMB_X78_Y88_N6
\V50|MZ2[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[6]~6_combout\ = (!\M2_S2~input_o\ & \V6|R4\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datad => \V6|R4\(6),
	combout => \V50|MZ2[6]~6_combout\);

-- Location: LCCOMB_X77_Y88_N14
\V52|aZ[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[7]~14_combout\ = (\V50|MZ2[7]~7_combout\ & ((\V48|MZ2[7]~7_combout\ & (\V52|aZ[6]~13\ & VCC)) # (!\V48|MZ2[7]~7_combout\ & (!\V52|aZ[6]~13\)))) # (!\V50|MZ2[7]~7_combout\ & ((\V48|MZ2[7]~7_combout\ & (!\V52|aZ[6]~13\)) # (!\V48|MZ2[7]~7_combout\ & 
-- ((\V52|aZ[6]~13\) # (GND)))))
-- \V52|aZ[7]~15\ = CARRY((\V50|MZ2[7]~7_combout\ & (!\V48|MZ2[7]~7_combout\ & !\V52|aZ[6]~13\)) # (!\V50|MZ2[7]~7_combout\ & ((!\V52|aZ[6]~13\) # (!\V48|MZ2[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[7]~7_combout\,
	datab => \V48|MZ2[7]~7_combout\,
	datad => VCC,
	cin => \V52|aZ[6]~13\,
	combout => \V52|aZ[7]~14_combout\,
	cout => \V52|aZ[7]~15\);

-- Location: LCCOMB_X72_Y88_N24
\V54|B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(7) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(7))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(7),
	datac => \V52|aZ[7]~14_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(7));

-- Location: LCCOMB_X72_Y88_N12
\T6|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[7]~8_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[7]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \YM_S1[0]~input_o\,
	datac => \V3_1[7]~input_o\,
	datad => \V54|B\(7),
	combout => \T6|MZ2[7]~8_combout\);

-- Location: LCCOMB_X72_Y88_N30
\T7|A[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(7) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[7]~8_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(7),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[7]~8_combout\,
	combout => \T7|A\(7));

-- Location: LCCOMB_X73_Y86_N16
\V6|P4[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(7) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(7))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(7),
	datac => \T7|A\(7),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(7));

-- Location: LCCOMB_X73_Y86_N20
\V34|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[7]~8_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux8~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(7))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux8~3_combout\,
	datad => \V6|P4\(7),
	combout => \V34|MZ2[7]~8_combout\);

-- Location: IOIBUF_X50_Y91_N1
\V3_1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(8),
	o => \V3_1[8]~input_o\);

-- Location: LCCOMB_X73_Y88_N28
\V6|R4[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(8) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(8))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(8),
	datab => \V6|R4\(8),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(8));

-- Location: LCCOMB_X73_Y88_N14
\V48|MZ2[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[8]~8_combout\ = (!\M2_S1~input_o\ & \V6|R4\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(8),
	combout => \V48|MZ2[8]~8_combout\);

-- Location: LCCOMB_X73_Y88_N0
\V50|MZ2[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[8]~8_combout\ = (!\M2_S2~input_o\ & \V6|R4\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(8),
	combout => \V50|MZ2[8]~8_combout\);

-- Location: LCCOMB_X77_Y88_N16
\V52|aZ[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[8]~16_combout\ = ((\V48|MZ2[8]~8_combout\ $ (\V50|MZ2[8]~8_combout\ $ (!\V52|aZ[7]~15\)))) # (GND)
-- \V52|aZ[8]~17\ = CARRY((\V48|MZ2[8]~8_combout\ & ((\V50|MZ2[8]~8_combout\) # (!\V52|aZ[7]~15\))) # (!\V48|MZ2[8]~8_combout\ & (\V50|MZ2[8]~8_combout\ & !\V52|aZ[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[8]~8_combout\,
	datab => \V50|MZ2[8]~8_combout\,
	datad => VCC,
	cin => \V52|aZ[7]~15\,
	combout => \V52|aZ[8]~16_combout\,
	cout => \V52|aZ[8]~17\);

-- Location: LCCOMB_X73_Y88_N16
\V54|B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(8) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(8))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(8),
	datac => \V52|aZ[8]~16_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(8));

-- Location: LCCOMB_X73_Y88_N12
\T6|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[8]~9_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[8]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \T6|MZ2[1]~0_combout\,
	datac => \V3_1[8]~input_o\,
	datad => \V54|B\(8),
	combout => \T6|MZ2[8]~9_combout\);

-- Location: LCCOMB_X73_Y88_N4
\T7|A[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(8) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[8]~9_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(8),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[8]~9_combout\,
	combout => \T7|A\(8));

-- Location: LCCOMB_X73_Y86_N30
\V6|P4[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(8) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(8))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|P4\(8),
	datac => \T7|A\(8),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(8));

-- Location: LCCOMB_X73_Y84_N10
\V13|MZ2[8]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[8]~25_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux7~3_combout\,
	combout => \V13|MZ2[8]~25_combout\);

-- Location: IOIBUF_X88_Y91_N8
\V3_1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(9),
	o => \V3_1[9]~input_o\);

-- Location: LCCOMB_X80_Y88_N28
\V6|R4[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(9) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(9)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(9),
	datac => \T7|A\(9),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(9));

-- Location: LCCOMB_X80_Y88_N30
\V48|MZ2[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[9]~9_combout\ = (!\M2_S1~input_o\ & \V6|R4\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(9),
	combout => \V48|MZ2[9]~9_combout\);

-- Location: LCCOMB_X80_Y88_N4
\V50|MZ2[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[9]~9_combout\ = (!\M2_S2~input_o\ & \V6|R4\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(9),
	combout => \V50|MZ2[9]~9_combout\);

-- Location: LCCOMB_X77_Y88_N18
\V52|aZ[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[9]~18_combout\ = (\V48|MZ2[9]~9_combout\ & ((\V50|MZ2[9]~9_combout\ & (\V52|aZ[8]~17\ & VCC)) # (!\V50|MZ2[9]~9_combout\ & (!\V52|aZ[8]~17\)))) # (!\V48|MZ2[9]~9_combout\ & ((\V50|MZ2[9]~9_combout\ & (!\V52|aZ[8]~17\)) # (!\V50|MZ2[9]~9_combout\ & 
-- ((\V52|aZ[8]~17\) # (GND)))))
-- \V52|aZ[9]~19\ = CARRY((\V48|MZ2[9]~9_combout\ & (!\V50|MZ2[9]~9_combout\ & !\V52|aZ[8]~17\)) # (!\V48|MZ2[9]~9_combout\ & ((!\V52|aZ[8]~17\) # (!\V50|MZ2[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[9]~9_combout\,
	datab => \V50|MZ2[9]~9_combout\,
	datad => VCC,
	cin => \V52|aZ[8]~17\,
	combout => \V52|aZ[9]~18_combout\,
	cout => \V52|aZ[9]~19\);

-- Location: LCCOMB_X80_Y88_N0
\V54|B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(9) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(9))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(9),
	datac => \V52|aZ[9]~18_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(9));

-- Location: LCCOMB_X80_Y88_N16
\T6|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[9]~10_combout\ = (\T6|MZ2[1]~0_combout\ & (\V3_1[9]~input_o\)) # (!\T6|MZ2[1]~0_combout\ & (((!\YM_S1[0]~input_o\ & \V54|B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3_1[9]~input_o\,
	datab => \YM_S1[0]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(9),
	combout => \T6|MZ2[9]~10_combout\);

-- Location: LCCOMB_X80_Y88_N12
\T7|A[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(9) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[9]~10_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(9),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[9]~10_combout\,
	combout => \T7|A\(9));

-- Location: LCCOMB_X73_Y87_N22
\V6|P4[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(9) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(9))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|P4\(9),
	datac => \T7|A\(9),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(9));

-- Location: LCCOMB_X73_Y87_N30
\V34|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[9]~10_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux6~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(9))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & (\V6|P4\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V6|P4\(9),
	datad => \V7|Mux6~3_combout\,
	combout => \V34|MZ2[9]~10_combout\);

-- Location: IOIBUF_X72_Y91_N8
\V2_1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(10),
	o => \V2_1[10]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\V3_1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(11),
	o => \V3_1[11]~input_o\);

-- Location: LCCOMB_X75_Y88_N26
\V6|R4[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(11) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(11)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|R4\(11),
	datac => \T7|A\(11),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(11));

-- Location: LCCOMB_X75_Y88_N28
\V50|MZ2[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[11]~11_combout\ = (\V6|R4\(11) & !\M2_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V6|R4\(11),
	datad => \M2_S2~input_o\,
	combout => \V50|MZ2[11]~11_combout\);

-- Location: LCCOMB_X75_Y88_N14
\V48|MZ2[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[11]~11_combout\ = (!\M2_S1~input_o\ & \V6|R4\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S1~input_o\,
	datac => \V6|R4\(11),
	combout => \V48|MZ2[11]~11_combout\);

-- Location: IOIBUF_X88_Y91_N1
\V3_1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(10),
	o => \V3_1[10]~input_o\);

-- Location: LCCOMB_X80_Y88_N24
\V50|MZ2[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[10]~10_combout\ = (!\M2_S2~input_o\ & \V6|R4\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datad => \V6|R4\(10),
	combout => \V50|MZ2[10]~10_combout\);

-- Location: LCCOMB_X77_Y88_N20
\V52|aZ[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[10]~20_combout\ = ((\V48|MZ2[10]~10_combout\ $ (\V50|MZ2[10]~10_combout\ $ (!\V52|aZ[9]~19\)))) # (GND)
-- \V52|aZ[10]~21\ = CARRY((\V48|MZ2[10]~10_combout\ & ((\V50|MZ2[10]~10_combout\) # (!\V52|aZ[9]~19\))) # (!\V48|MZ2[10]~10_combout\ & (\V50|MZ2[10]~10_combout\ & !\V52|aZ[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[10]~10_combout\,
	datab => \V50|MZ2[10]~10_combout\,
	datad => VCC,
	cin => \V52|aZ[9]~19\,
	combout => \V52|aZ[10]~20_combout\,
	cout => \V52|aZ[10]~21\);

-- Location: LCCOMB_X80_Y88_N18
\V54|B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(10) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(10))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(10),
	datac => \V52|aZ[10]~20_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(10));

-- Location: LCCOMB_X80_Y88_N6
\T6|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[10]~11_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[10]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \YM_S1[0]~input_o\,
	datac => \V3_1[10]~input_o\,
	datad => \V54|B\(10),
	combout => \T6|MZ2[10]~11_combout\);

-- Location: LCCOMB_X80_Y88_N2
\T7|A[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(10) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[10]~11_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(10),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[10]~11_combout\,
	combout => \T7|A\(10));

-- Location: LCCOMB_X80_Y88_N10
\V6|R4[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(10) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(10)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|R4\(10),
	datab => \T7|A\(10),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(10));

-- Location: LCCOMB_X80_Y88_N14
\V48|MZ2[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[10]~10_combout\ = (!\M2_S1~input_o\ & \V6|R4\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(10),
	combout => \V48|MZ2[10]~10_combout\);

-- Location: LCCOMB_X77_Y88_N22
\V52|aZ[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[11]~22_combout\ = (\V50|MZ2[11]~11_combout\ & ((\V48|MZ2[11]~11_combout\ & (\V52|aZ[10]~21\ & VCC)) # (!\V48|MZ2[11]~11_combout\ & (!\V52|aZ[10]~21\)))) # (!\V50|MZ2[11]~11_combout\ & ((\V48|MZ2[11]~11_combout\ & (!\V52|aZ[10]~21\)) # 
-- (!\V48|MZ2[11]~11_combout\ & ((\V52|aZ[10]~21\) # (GND)))))
-- \V52|aZ[11]~23\ = CARRY((\V50|MZ2[11]~11_combout\ & (!\V48|MZ2[11]~11_combout\ & !\V52|aZ[10]~21\)) # (!\V50|MZ2[11]~11_combout\ & ((!\V52|aZ[10]~21\) # (!\V48|MZ2[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[11]~11_combout\,
	datab => \V48|MZ2[11]~11_combout\,
	datad => VCC,
	cin => \V52|aZ[10]~21\,
	combout => \V52|aZ[11]~22_combout\,
	cout => \V52|aZ[11]~23\);

-- Location: LCCOMB_X77_Y89_N18
\V54|B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(11) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(11))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(11),
	datac => \V52|aZ[11]~22_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(11));

-- Location: LCCOMB_X77_Y89_N10
\T6|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[11]~12_combout\ = (\T6|MZ2[1]~0_combout\ & (\V3_1[11]~input_o\)) # (!\T6|MZ2[1]~0_combout\ & (((!\YM_S1[0]~input_o\ & \V54|B\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3_1[11]~input_o\,
	datab => \YM_S1[0]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(11),
	combout => \T6|MZ2[11]~12_combout\);

-- Location: LCCOMB_X77_Y89_N4
\T7|A[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(11) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[11]~12_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(11),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[11]~12_combout\,
	combout => \T7|A\(11));

-- Location: LCCOMB_X75_Y88_N22
\V6|P4[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(11) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(11))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|P4\(11),
	datac => \T7|A\(11),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(11));

-- Location: IOIBUF_X84_Y91_N8
\V2_1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(12),
	o => \V2_1[12]~input_o\);

-- Location: IOIBUF_X46_Y91_N15
\V2_1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(14),
	o => \V2_1[14]~input_o\);

-- Location: LCCOMB_X73_Y87_N20
\V36|MZ2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[0]~0_combout\ = (!\RD_S2[1]~input_o\ & (\RD_S2[2]~input_o\ & (!\M2_S2~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \RD_S2[2]~input_o\,
	datac => \M2_S2~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V36|MZ2[0]~0_combout\);

-- Location: LCCOMB_X75_Y86_N30
\V36|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[0]~1_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(0)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux15~5_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & (\V7|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V7|Mux15~5_combout\,
	datad => \V6|P4\(0),
	combout => \V36|MZ2[0]~1_combout\);

-- Location: LCCOMB_X75_Y83_N12
\V6|P4[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(1) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(1)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(1),
	datac => \V6|P4\(1),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(1));

-- Location: LCCOMB_X75_Y83_N22
\V36|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[1]~2_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux14~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(1))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux14~3_combout\,
	datad => \V6|P4\(1),
	combout => \V36|MZ2[1]~2_combout\);

-- Location: LCCOMB_X73_Y87_N14
\V36|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[2]~3_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(2)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux13~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & ((\V7|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V6|P4\(2),
	datad => \V7|Mux13~3_combout\,
	combout => \V36|MZ2[2]~3_combout\);

-- Location: LCCOMB_X75_Y86_N16
\V36|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[3]~4_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(3)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux12~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & (\V7|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V7|Mux12~3_combout\,
	datad => \V6|P4\(3),
	combout => \V36|MZ2[3]~4_combout\);

-- Location: LCCOMB_X75_Y81_N0
\V6|P4[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(4) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(4)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(4),
	datac => \V6|P4[15]~0clkctrl_outclk\,
	datad => \V6|P4\(4),
	combout => \V6|P4\(4));

-- Location: LCCOMB_X75_Y81_N12
\V36|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[4]~5_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux11~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(4))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux11~3_combout\,
	datad => \V6|P4\(4),
	combout => \V36|MZ2[4]~5_combout\);

-- Location: LCCOMB_X77_Y85_N18
\V6|P4[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(5) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(5)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(5),
	datac => \V6|P4[15]~0clkctrl_outclk\,
	datad => \V6|P4\(5),
	combout => \V6|P4\(5));

-- Location: LCCOMB_X77_Y85_N22
\V36|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[5]~6_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux10~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(5))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux10~3_combout\,
	datad => \V6|P4\(5),
	combout => \V36|MZ2[5]~6_combout\);

-- Location: LCCOMB_X75_Y83_N10
\V6|P4[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(6) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(6))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V6|P4\(6),
	datac => \T7|A\(6),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(6));

-- Location: LCCOMB_X75_Y83_N20
\V36|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[6]~7_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux9~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(6))))) # (!\V36|MZ2[0]~0_combout\ & (((\M2_S2~input_o\ & \V6|P4\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \V7|Mux9~3_combout\,
	datac => \M2_S2~input_o\,
	datad => \V6|P4\(6),
	combout => \V36|MZ2[6]~7_combout\);

-- Location: LCCOMB_X73_Y86_N6
\V36|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[7]~8_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(7)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux8~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & (\V7|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V7|Mux8~3_combout\,
	datad => \V6|P4\(7),
	combout => \V36|MZ2[7]~8_combout\);

-- Location: LCCOMB_X73_Y86_N8
\V36|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[8]~9_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(8)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux7~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & ((\V7|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V6|P4\(8),
	datad => \V7|Mux7~3_combout\,
	combout => \V36|MZ2[8]~9_combout\);

-- Location: LCCOMB_X73_Y87_N12
\V36|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[9]~10_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(9)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux6~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & ((\V7|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V6|P4\(9),
	datad => \V7|Mux6~3_combout\,
	combout => \V36|MZ2[9]~10_combout\);

-- Location: LCCOMB_X77_Y84_N6
\V6|P4[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(10) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(10)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(10),
	datac => \V6|P4\(10),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(10));

-- Location: LCCOMB_X77_Y84_N26
\V36|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[10]~11_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux5~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(10))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux5~3_combout\,
	datad => \V6|P4\(10),
	combout => \V36|MZ2[10]~11_combout\);

-- Location: LCCOMB_X75_Y88_N18
\V36|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[11]~12_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(11)) # ((\V36|MZ2[0]~0_combout\ & \V7|Mux4~3_combout\)))) # (!\M2_S2~input_o\ & (\V36|MZ2[0]~0_combout\ & ((\V7|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V36|MZ2[0]~0_combout\,
	datac => \V6|P4\(11),
	datad => \V7|Mux4~3_combout\,
	combout => \V36|MZ2[11]~12_combout\);

-- Location: IOIBUF_X104_Y91_N8
\V3_1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(12),
	o => \V3_1[12]~input_o\);

-- Location: LCCOMB_X75_Y88_N16
\V6|R4[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(12) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\T7|A\(12)))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\V6|R4\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|R4\(12),
	datac => \V6|Equal0~0clkctrl_outclk\,
	datad => \T7|A\(12),
	combout => \V6|R4\(12));

-- Location: LCCOMB_X75_Y88_N6
\V48|MZ2[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[12]~12_combout\ = (!\M2_S1~input_o\ & \V6|R4\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S1~input_o\,
	datad => \V6|R4\(12),
	combout => \V48|MZ2[12]~12_combout\);

-- Location: LCCOMB_X75_Y88_N24
\V50|MZ2[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[12]~12_combout\ = (!\M2_S2~input_o\ & \V6|R4\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datad => \V6|R4\(12),
	combout => \V50|MZ2[12]~12_combout\);

-- Location: LCCOMB_X77_Y88_N24
\V52|aZ[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[12]~24_combout\ = ((\V48|MZ2[12]~12_combout\ $ (\V50|MZ2[12]~12_combout\ $ (!\V52|aZ[11]~23\)))) # (GND)
-- \V52|aZ[12]~25\ = CARRY((\V48|MZ2[12]~12_combout\ & ((\V50|MZ2[12]~12_combout\) # (!\V52|aZ[11]~23\))) # (!\V48|MZ2[12]~12_combout\ & (\V50|MZ2[12]~12_combout\ & !\V52|aZ[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V48|MZ2[12]~12_combout\,
	datab => \V50|MZ2[12]~12_combout\,
	datad => VCC,
	cin => \V52|aZ[11]~23\,
	combout => \V52|aZ[12]~24_combout\,
	cout => \V52|aZ[12]~25\);

-- Location: LCCOMB_X76_Y89_N28
\V54|B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(12) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(12))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(12),
	datac => \V52|aZ[12]~24_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(12));

-- Location: LCCOMB_X76_Y89_N24
\T6|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[12]~13_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[12]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \YM_S1[0]~input_o\,
	datac => \V3_1[12]~input_o\,
	datad => \V54|B\(12),
	combout => \T6|MZ2[12]~13_combout\);

-- Location: LCCOMB_X76_Y89_N30
\T7|A[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(12) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[12]~13_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(12),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[12]~13_combout\,
	combout => \T7|A\(12));

-- Location: LCCOMB_X75_Y87_N24
\V6|P4[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(12) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(12))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(12),
	datac => \V6|P4[15]~0clkctrl_outclk\,
	datad => \T7|A\(12),
	combout => \V6|P4\(12));

-- Location: LCCOMB_X75_Y87_N18
\V36|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[12]~13_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux3~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(12))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux3~3_combout\,
	datad => \V6|P4\(12),
	combout => \V36|MZ2[12]~13_combout\);

-- Location: IOIBUF_X106_Y91_N8
\V3_1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(13),
	o => \V3_1[13]~input_o\);

-- Location: LCCOMB_X78_Y88_N22
\V6|R4[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(13) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(13))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(13),
	datac => \V6|R4\(13),
	datad => \V6|Equal0~0clkctrl_outclk\,
	combout => \V6|R4\(13));

-- Location: LCCOMB_X78_Y88_N2
\V50|MZ2[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[13]~13_combout\ = (\V6|R4\(13) & !\M2_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V6|R4\(13),
	datad => \M2_S2~input_o\,
	combout => \V50|MZ2[13]~13_combout\);

-- Location: LCCOMB_X78_Y88_N12
\V48|MZ2[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[13]~13_combout\ = (!\M2_S1~input_o\ & \V6|R4\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datac => \V6|R4\(13),
	combout => \V48|MZ2[13]~13_combout\);

-- Location: LCCOMB_X77_Y88_N26
\V52|aZ[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[13]~26_combout\ = (\V50|MZ2[13]~13_combout\ & ((\V48|MZ2[13]~13_combout\ & (\V52|aZ[12]~25\ & VCC)) # (!\V48|MZ2[13]~13_combout\ & (!\V52|aZ[12]~25\)))) # (!\V50|MZ2[13]~13_combout\ & ((\V48|MZ2[13]~13_combout\ & (!\V52|aZ[12]~25\)) # 
-- (!\V48|MZ2[13]~13_combout\ & ((\V52|aZ[12]~25\) # (GND)))))
-- \V52|aZ[13]~27\ = CARRY((\V50|MZ2[13]~13_combout\ & (!\V48|MZ2[13]~13_combout\ & !\V52|aZ[12]~25\)) # (!\V50|MZ2[13]~13_combout\ & ((!\V52|aZ[12]~25\) # (!\V48|MZ2[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[13]~13_combout\,
	datab => \V48|MZ2[13]~13_combout\,
	datad => VCC,
	cin => \V52|aZ[12]~25\,
	combout => \V52|aZ[13]~26_combout\,
	cout => \V52|aZ[13]~27\);

-- Location: LCCOMB_X77_Y89_N0
\V54|B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(13) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(13))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(13),
	datac => \M2_S3~inputclkctrl_outclk\,
	datad => \V52|aZ[13]~26_combout\,
	combout => \V54|B\(13));

-- Location: LCCOMB_X77_Y89_N12
\T6|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[13]~14_combout\ = (\T6|MZ2[1]~0_combout\ & (\V3_1[13]~input_o\)) # (!\T6|MZ2[1]~0_combout\ & (((!\YM_S1[0]~input_o\ & \V54|B\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3_1[13]~input_o\,
	datab => \YM_S1[0]~input_o\,
	datac => \T6|MZ2[1]~0_combout\,
	datad => \V54|B\(13),
	combout => \T6|MZ2[13]~14_combout\);

-- Location: LCCOMB_X77_Y89_N14
\T7|A[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(13) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[13]~14_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(13),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[13]~14_combout\,
	combout => \T7|A\(13));

-- Location: LCCOMB_X76_Y85_N28
\V6|P4[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(13) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(13))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(13),
	datac => \T7|A\(13),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(13));

-- Location: LCCOMB_X76_Y85_N22
\V36|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[13]~14_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux2~3_combout\) # ((\V6|P4\(13) & \M2_S2~input_o\)))) # (!\V36|MZ2[0]~0_combout\ & (\V6|P4\(13) & (\M2_S2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \V6|P4\(13),
	datac => \M2_S2~input_o\,
	datad => \V7|Mux2~3_combout\,
	combout => \V36|MZ2[13]~14_combout\);

-- Location: IOIBUF_X97_Y91_N1
\V3_1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(14),
	o => \V3_1[14]~input_o\);

-- Location: LCCOMB_X73_Y88_N18
\V6|R4[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(14) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(14))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(14),
	datac => \V6|Equal0~0clkctrl_outclk\,
	datad => \V6|R4\(14),
	combout => \V6|R4\(14));

-- Location: LCCOMB_X73_Y88_N24
\V50|MZ2[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[14]~14_combout\ = (!\M2_S2~input_o\ & \V6|R4\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M2_S2~input_o\,
	datad => \V6|R4\(14),
	combout => \V50|MZ2[14]~14_combout\);

-- Location: LCCOMB_X73_Y88_N22
\V48|MZ2[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[14]~14_combout\ = (!\M2_S1~input_o\ & \V6|R4\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(14),
	combout => \V48|MZ2[14]~14_combout\);

-- Location: LCCOMB_X77_Y88_N28
\V52|aZ[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[14]~28_combout\ = ((\V50|MZ2[14]~14_combout\ $ (\V48|MZ2[14]~14_combout\ $ (!\V52|aZ[13]~27\)))) # (GND)
-- \V52|aZ[14]~29\ = CARRY((\V50|MZ2[14]~14_combout\ & ((\V48|MZ2[14]~14_combout\) # (!\V52|aZ[13]~27\))) # (!\V50|MZ2[14]~14_combout\ & (\V48|MZ2[14]~14_combout\ & !\V52|aZ[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[14]~14_combout\,
	datab => \V48|MZ2[14]~14_combout\,
	datad => VCC,
	cin => \V52|aZ[13]~27\,
	combout => \V52|aZ[14]~28_combout\,
	cout => \V52|aZ[14]~29\);

-- Location: LCCOMB_X73_Y88_N6
\V54|B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(14) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(14))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V54|B\(14),
	datac => \V52|aZ[14]~28_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(14));

-- Location: LCCOMB_X73_Y88_N2
\T6|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[14]~15_combout\ = (\T6|MZ2[1]~0_combout\ & (((\V3_1[14]~input_o\)))) # (!\T6|MZ2[1]~0_combout\ & (!\YM_S1[0]~input_o\ & ((\V54|B\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YM_S1[0]~input_o\,
	datab => \T6|MZ2[1]~0_combout\,
	datac => \V3_1[14]~input_o\,
	datad => \V54|B\(14),
	combout => \T6|MZ2[14]~15_combout\);

-- Location: LCCOMB_X73_Y88_N10
\T7|A[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(14) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[14]~15_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(14),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[14]~15_combout\,
	combout => \T7|A\(14));

-- Location: LCCOMB_X76_Y85_N18
\V6|P4[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(14) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\V6|P4\(14))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\T7|A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V6|P4\(14),
	datac => \T7|A\(14),
	datad => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(14));

-- Location: LCCOMB_X75_Y85_N4
\V36|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[14]~15_combout\ = (\M2_S2~input_o\ & ((\V6|P4\(14)) # ((\V7|Mux1~3_combout\ & \V36|MZ2[0]~0_combout\)))) # (!\M2_S2~input_o\ & (\V7|Mux1~3_combout\ & (\V36|MZ2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_S2~input_o\,
	datab => \V7|Mux1~3_combout\,
	datac => \V36|MZ2[0]~0_combout\,
	datad => \V6|P4\(14),
	combout => \V36|MZ2[14]~15_combout\);

-- Location: IOIBUF_X86_Y91_N1
\V3_1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_1(15),
	o => \V3_1[15]~input_o\);

-- Location: LCCOMB_X79_Y88_N18
\V6|R4[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|R4\(15) = (GLOBAL(\V6|Equal0~0clkctrl_outclk\) & (\T7|A\(15))) # (!GLOBAL(\V6|Equal0~0clkctrl_outclk\) & ((\V6|R4\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|A\(15),
	datac => \V6|Equal0~0clkctrl_outclk\,
	datad => \V6|R4\(15),
	combout => \V6|R4\(15));

-- Location: LCCOMB_X79_Y88_N16
\V50|MZ2[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V50|MZ2[15]~15_combout\ = (!\M2_S2~input_o\ & \V6|R4\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S2~input_o\,
	datad => \V6|R4\(15),
	combout => \V50|MZ2[15]~15_combout\);

-- Location: LCCOMB_X79_Y88_N30
\V48|MZ2[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V48|MZ2[15]~15_combout\ = (!\M2_S1~input_o\ & \V6|R4\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_S1~input_o\,
	datad => \V6|R4\(15),
	combout => \V48|MZ2[15]~15_combout\);

-- Location: LCCOMB_X77_Y88_N30
\V52|aZ[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V52|aZ[15]~30_combout\ = \V50|MZ2[15]~15_combout\ $ (\V52|aZ[14]~29\ $ (\V48|MZ2[15]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V50|MZ2[15]~15_combout\,
	datad => \V48|MZ2[15]~15_combout\,
	cin => \V52|aZ[14]~29\,
	combout => \V52|aZ[15]~30_combout\);

-- Location: LCCOMB_X78_Y87_N28
\V54|B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V54|B\(15) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V54|B\(15))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V52|aZ[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V54|B\(15),
	datac => \V52|aZ[15]~30_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V54|B\(15));

-- Location: LCCOMB_X78_Y87_N24
\T6|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T6|MZ2[15]~16_combout\ = (\T6|MZ2[1]~0_combout\ & (\V3_1[15]~input_o\)) # (!\T6|MZ2[1]~0_combout\ & (((!\YM_S1[0]~input_o\ & \V54|B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T6|MZ2[1]~0_combout\,
	datab => \V3_1[15]~input_o\,
	datac => \YM_S1[0]~input_o\,
	datad => \V54|B\(15),
	combout => \T6|MZ2[15]~16_combout\);

-- Location: LCCOMB_X78_Y87_N22
\T7|A[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|A\(15) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[15]~16_combout\))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(15),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[15]~16_combout\,
	combout => \T7|A\(15));

-- Location: LCCOMB_X75_Y87_N2
\V6|P4[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V6|P4\(15) = (GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & ((\V6|P4\(15)))) # (!GLOBAL(\V6|P4[15]~0clkctrl_outclk\) & (\T7|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|A\(15),
	datab => \V6|P4\(15),
	datac => \V6|P4[15]~0clkctrl_outclk\,
	combout => \V6|P4\(15));

-- Location: LCCOMB_X75_Y87_N0
\V36|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V36|MZ2[15]~16_combout\ = (\V36|MZ2[0]~0_combout\ & ((\V7|Mux0~3_combout\) # ((\M2_S2~input_o\ & \V6|P4\(15))))) # (!\V36|MZ2[0]~0_combout\ & (\M2_S2~input_o\ & ((\V6|P4\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V36|MZ2[0]~0_combout\,
	datab => \M2_S2~input_o\,
	datac => \V7|Mux0~3_combout\,
	datad => \V6|P4\(15),
	combout => \V36|MZ2[15]~16_combout\);

-- Location: DSPMULT_X74_Y85_N0
\V38|Mult0|auto_generated|mac_mult1\ : cycloneiv_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \V38|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \V38|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \V38|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X74_Y85_N2
\V38|Mult0|auto_generated|mac_out2\ : cycloneiv_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \V38|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \V38|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X75_Y85_N2
\V40|B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(15) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(15))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(15),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(15));

-- Location: LCCOMB_X75_Y87_N4
\V43|MZ2[15]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[15]~24_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux0~3_combout\,
	combout => \V43|MZ2[15]~24_combout\);

-- Location: LCCOMB_X76_Y87_N28
\V41|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[15]~16_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux0~3_combout\,
	combout => \V41|MZ2[15]~16_combout\);

-- Location: LCCOMB_X76_Y85_N14
\V43|MZ2[14]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[14]~23_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux1~3_combout\,
	combout => \V43|MZ2[14]~23_combout\);

-- Location: LCCOMB_X75_Y85_N26
\V41|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[14]~15_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux1~3_combout\,
	combout => \V41|MZ2[14]~15_combout\);

-- Location: LCCOMB_X76_Y85_N24
\V41|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[13]~14_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux2~3_combout\,
	combout => \V41|MZ2[13]~14_combout\);

-- Location: LCCOMB_X77_Y83_N12
\V43|MZ2[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[13]~22_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux2~3_combout\,
	combout => \V43|MZ2[13]~22_combout\);

-- Location: LCCOMB_X76_Y84_N30
\V41|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[12]~13_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[15]~0_combout\,
	datac => \V7|Mux3~3_combout\,
	combout => \V41|MZ2[12]~13_combout\);

-- Location: LCCOMB_X76_Y84_N24
\V43|MZ2[12]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[12]~21_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datac => \V7|Mux3~3_combout\,
	combout => \V43|MZ2[12]~21_combout\);

-- Location: LCCOMB_X76_Y84_N14
\V43|MZ2[11]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[11]~20_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux4~3_combout\,
	combout => \V43|MZ2[11]~20_combout\);

-- Location: LCCOMB_X75_Y84_N12
\V41|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[11]~12_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux4~3_combout\,
	combout => \V41|MZ2[11]~12_combout\);

-- Location: LCCOMB_X77_Y84_N20
\V43|MZ2[10]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[10]~19_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[15]~8_combout\,
	datac => \V7|Mux5~3_combout\,
	combout => \V43|MZ2[10]~19_combout\);

-- Location: LCCOMB_X77_Y84_N14
\V41|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[10]~11_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[15]~0_combout\,
	datac => \V7|Mux5~3_combout\,
	combout => \V41|MZ2[10]~11_combout\);

-- Location: LCCOMB_X73_Y84_N24
\V41|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[9]~10_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux6~3_combout\,
	combout => \V41|MZ2[9]~10_combout\);

-- Location: LCCOMB_X73_Y84_N6
\V43|MZ2[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[9]~18_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux6~3_combout\,
	combout => \V43|MZ2[9]~18_combout\);

-- Location: LCCOMB_X73_Y84_N30
\V43|MZ2[8]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[8]~17_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux7~3_combout\,
	combout => \V43|MZ2[8]~17_combout\);

-- Location: LCCOMB_X73_Y84_N20
\V41|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[8]~9_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux7~3_combout\,
	combout => \V41|MZ2[8]~9_combout\);

-- Location: LCCOMB_X73_Y86_N10
\V41|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[7]~8_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux8~3_combout\,
	combout => \V41|MZ2[7]~8_combout\);

-- Location: LCCOMB_X73_Y86_N0
\V43|MZ2[7]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[7]~16_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux8~3_combout\,
	combout => \V43|MZ2[7]~16_combout\);

-- Location: LCCOMB_X77_Y83_N30
\V41|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[6]~7_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux9~3_combout\,
	combout => \V41|MZ2[6]~7_combout\);

-- Location: LCCOMB_X75_Y83_N24
\V43|MZ2[6]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[6]~15_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux9~3_combout\,
	combout => \V43|MZ2[6]~15_combout\);

-- Location: LCCOMB_X77_Y85_N12
\V43|MZ2[5]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[5]~14_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux10~3_combout\,
	combout => \V43|MZ2[5]~14_combout\);

-- Location: LCCOMB_X77_Y85_N6
\V41|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[5]~6_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux10~3_combout\,
	combout => \V41|MZ2[5]~6_combout\);

-- Location: LCCOMB_X75_Y81_N22
\V43|MZ2[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[4]~13_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux11~3_combout\,
	combout => \V43|MZ2[4]~13_combout\);

-- Location: LCCOMB_X75_Y81_N28
\V41|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[4]~5_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux11~3_combout\,
	combout => \V41|MZ2[4]~5_combout\);

-- Location: LCCOMB_X75_Y86_N20
\V41|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[3]~4_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V41|MZ2[15]~0_combout\,
	datac => \V7|Mux12~3_combout\,
	combout => \V41|MZ2[3]~4_combout\);

-- Location: LCCOMB_X75_Y86_N10
\V43|MZ2[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[3]~12_combout\ = (\V43|MZ2[15]~8_combout\ & \V7|Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V43|MZ2[15]~8_combout\,
	datad => \V7|Mux12~3_combout\,
	combout => \V43|MZ2[3]~12_combout\);

-- Location: LCCOMB_X76_Y83_N4
\V45|aZ[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[2]~4_combout\ = ((\V41|MZ2[2]~3_combout\ $ (\V43|MZ2[2]~11_combout\ $ (!\V45|aZ[1]~3\)))) # (GND)
-- \V45|aZ[2]~5\ = CARRY((\V41|MZ2[2]~3_combout\ & ((\V43|MZ2[2]~11_combout\) # (!\V45|aZ[1]~3\))) # (!\V41|MZ2[2]~3_combout\ & (\V43|MZ2[2]~11_combout\ & !\V45|aZ[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[2]~3_combout\,
	datab => \V43|MZ2[2]~11_combout\,
	datad => VCC,
	cin => \V45|aZ[1]~3\,
	combout => \V45|aZ[2]~4_combout\,
	cout => \V45|aZ[2]~5\);

-- Location: LCCOMB_X76_Y83_N6
\V45|aZ[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[3]~6_combout\ = (\V41|MZ2[3]~4_combout\ & ((\V43|MZ2[3]~12_combout\ & (\V45|aZ[2]~5\ & VCC)) # (!\V43|MZ2[3]~12_combout\ & (!\V45|aZ[2]~5\)))) # (!\V41|MZ2[3]~4_combout\ & ((\V43|MZ2[3]~12_combout\ & (!\V45|aZ[2]~5\)) # (!\V43|MZ2[3]~12_combout\ & 
-- ((\V45|aZ[2]~5\) # (GND)))))
-- \V45|aZ[3]~7\ = CARRY((\V41|MZ2[3]~4_combout\ & (!\V43|MZ2[3]~12_combout\ & !\V45|aZ[2]~5\)) # (!\V41|MZ2[3]~4_combout\ & ((!\V45|aZ[2]~5\) # (!\V43|MZ2[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[3]~4_combout\,
	datab => \V43|MZ2[3]~12_combout\,
	datad => VCC,
	cin => \V45|aZ[2]~5\,
	combout => \V45|aZ[3]~6_combout\,
	cout => \V45|aZ[3]~7\);

-- Location: LCCOMB_X76_Y83_N8
\V45|aZ[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[4]~8_combout\ = ((\V43|MZ2[4]~13_combout\ $ (\V41|MZ2[4]~5_combout\ $ (!\V45|aZ[3]~7\)))) # (GND)
-- \V45|aZ[4]~9\ = CARRY((\V43|MZ2[4]~13_combout\ & ((\V41|MZ2[4]~5_combout\) # (!\V45|aZ[3]~7\))) # (!\V43|MZ2[4]~13_combout\ & (\V41|MZ2[4]~5_combout\ & !\V45|aZ[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[4]~13_combout\,
	datab => \V41|MZ2[4]~5_combout\,
	datad => VCC,
	cin => \V45|aZ[3]~7\,
	combout => \V45|aZ[4]~8_combout\,
	cout => \V45|aZ[4]~9\);

-- Location: LCCOMB_X76_Y83_N10
\V45|aZ[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[5]~10_combout\ = (\V43|MZ2[5]~14_combout\ & ((\V41|MZ2[5]~6_combout\ & (\V45|aZ[4]~9\ & VCC)) # (!\V41|MZ2[5]~6_combout\ & (!\V45|aZ[4]~9\)))) # (!\V43|MZ2[5]~14_combout\ & ((\V41|MZ2[5]~6_combout\ & (!\V45|aZ[4]~9\)) # (!\V41|MZ2[5]~6_combout\ & 
-- ((\V45|aZ[4]~9\) # (GND)))))
-- \V45|aZ[5]~11\ = CARRY((\V43|MZ2[5]~14_combout\ & (!\V41|MZ2[5]~6_combout\ & !\V45|aZ[4]~9\)) # (!\V43|MZ2[5]~14_combout\ & ((!\V45|aZ[4]~9\) # (!\V41|MZ2[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[5]~14_combout\,
	datab => \V41|MZ2[5]~6_combout\,
	datad => VCC,
	cin => \V45|aZ[4]~9\,
	combout => \V45|aZ[5]~10_combout\,
	cout => \V45|aZ[5]~11\);

-- Location: LCCOMB_X76_Y83_N12
\V45|aZ[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[6]~12_combout\ = ((\V41|MZ2[6]~7_combout\ $ (\V43|MZ2[6]~15_combout\ $ (!\V45|aZ[5]~11\)))) # (GND)
-- \V45|aZ[6]~13\ = CARRY((\V41|MZ2[6]~7_combout\ & ((\V43|MZ2[6]~15_combout\) # (!\V45|aZ[5]~11\))) # (!\V41|MZ2[6]~7_combout\ & (\V43|MZ2[6]~15_combout\ & !\V45|aZ[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[6]~7_combout\,
	datab => \V43|MZ2[6]~15_combout\,
	datad => VCC,
	cin => \V45|aZ[5]~11\,
	combout => \V45|aZ[6]~12_combout\,
	cout => \V45|aZ[6]~13\);

-- Location: LCCOMB_X76_Y83_N14
\V45|aZ[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[7]~14_combout\ = (\V41|MZ2[7]~8_combout\ & ((\V43|MZ2[7]~16_combout\ & (\V45|aZ[6]~13\ & VCC)) # (!\V43|MZ2[7]~16_combout\ & (!\V45|aZ[6]~13\)))) # (!\V41|MZ2[7]~8_combout\ & ((\V43|MZ2[7]~16_combout\ & (!\V45|aZ[6]~13\)) # 
-- (!\V43|MZ2[7]~16_combout\ & ((\V45|aZ[6]~13\) # (GND)))))
-- \V45|aZ[7]~15\ = CARRY((\V41|MZ2[7]~8_combout\ & (!\V43|MZ2[7]~16_combout\ & !\V45|aZ[6]~13\)) # (!\V41|MZ2[7]~8_combout\ & ((!\V45|aZ[6]~13\) # (!\V43|MZ2[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[7]~8_combout\,
	datab => \V43|MZ2[7]~16_combout\,
	datad => VCC,
	cin => \V45|aZ[6]~13\,
	combout => \V45|aZ[7]~14_combout\,
	cout => \V45|aZ[7]~15\);

-- Location: LCCOMB_X76_Y83_N16
\V45|aZ[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[8]~16_combout\ = ((\V43|MZ2[8]~17_combout\ $ (\V41|MZ2[8]~9_combout\ $ (!\V45|aZ[7]~15\)))) # (GND)
-- \V45|aZ[8]~17\ = CARRY((\V43|MZ2[8]~17_combout\ & ((\V41|MZ2[8]~9_combout\) # (!\V45|aZ[7]~15\))) # (!\V43|MZ2[8]~17_combout\ & (\V41|MZ2[8]~9_combout\ & !\V45|aZ[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[8]~17_combout\,
	datab => \V41|MZ2[8]~9_combout\,
	datad => VCC,
	cin => \V45|aZ[7]~15\,
	combout => \V45|aZ[8]~16_combout\,
	cout => \V45|aZ[8]~17\);

-- Location: LCCOMB_X76_Y83_N18
\V45|aZ[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[9]~18_combout\ = (\V41|MZ2[9]~10_combout\ & ((\V43|MZ2[9]~18_combout\ & (\V45|aZ[8]~17\ & VCC)) # (!\V43|MZ2[9]~18_combout\ & (!\V45|aZ[8]~17\)))) # (!\V41|MZ2[9]~10_combout\ & ((\V43|MZ2[9]~18_combout\ & (!\V45|aZ[8]~17\)) # 
-- (!\V43|MZ2[9]~18_combout\ & ((\V45|aZ[8]~17\) # (GND)))))
-- \V45|aZ[9]~19\ = CARRY((\V41|MZ2[9]~10_combout\ & (!\V43|MZ2[9]~18_combout\ & !\V45|aZ[8]~17\)) # (!\V41|MZ2[9]~10_combout\ & ((!\V45|aZ[8]~17\) # (!\V43|MZ2[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[9]~10_combout\,
	datab => \V43|MZ2[9]~18_combout\,
	datad => VCC,
	cin => \V45|aZ[8]~17\,
	combout => \V45|aZ[9]~18_combout\,
	cout => \V45|aZ[9]~19\);

-- Location: LCCOMB_X76_Y83_N20
\V45|aZ[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[10]~20_combout\ = ((\V43|MZ2[10]~19_combout\ $ (\V41|MZ2[10]~11_combout\ $ (!\V45|aZ[9]~19\)))) # (GND)
-- \V45|aZ[10]~21\ = CARRY((\V43|MZ2[10]~19_combout\ & ((\V41|MZ2[10]~11_combout\) # (!\V45|aZ[9]~19\))) # (!\V43|MZ2[10]~19_combout\ & (\V41|MZ2[10]~11_combout\ & !\V45|aZ[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[10]~19_combout\,
	datab => \V41|MZ2[10]~11_combout\,
	datad => VCC,
	cin => \V45|aZ[9]~19\,
	combout => \V45|aZ[10]~20_combout\,
	cout => \V45|aZ[10]~21\);

-- Location: LCCOMB_X76_Y83_N22
\V45|aZ[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[11]~22_combout\ = (\V43|MZ2[11]~20_combout\ & ((\V41|MZ2[11]~12_combout\ & (\V45|aZ[10]~21\ & VCC)) # (!\V41|MZ2[11]~12_combout\ & (!\V45|aZ[10]~21\)))) # (!\V43|MZ2[11]~20_combout\ & ((\V41|MZ2[11]~12_combout\ & (!\V45|aZ[10]~21\)) # 
-- (!\V41|MZ2[11]~12_combout\ & ((\V45|aZ[10]~21\) # (GND)))))
-- \V45|aZ[11]~23\ = CARRY((\V43|MZ2[11]~20_combout\ & (!\V41|MZ2[11]~12_combout\ & !\V45|aZ[10]~21\)) # (!\V43|MZ2[11]~20_combout\ & ((!\V45|aZ[10]~21\) # (!\V41|MZ2[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[11]~20_combout\,
	datab => \V41|MZ2[11]~12_combout\,
	datad => VCC,
	cin => \V45|aZ[10]~21\,
	combout => \V45|aZ[11]~22_combout\,
	cout => \V45|aZ[11]~23\);

-- Location: LCCOMB_X76_Y83_N24
\V45|aZ[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[12]~24_combout\ = ((\V41|MZ2[12]~13_combout\ $ (\V43|MZ2[12]~21_combout\ $ (!\V45|aZ[11]~23\)))) # (GND)
-- \V45|aZ[12]~25\ = CARRY((\V41|MZ2[12]~13_combout\ & ((\V43|MZ2[12]~21_combout\) # (!\V45|aZ[11]~23\))) # (!\V41|MZ2[12]~13_combout\ & (\V43|MZ2[12]~21_combout\ & !\V45|aZ[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[12]~13_combout\,
	datab => \V43|MZ2[12]~21_combout\,
	datad => VCC,
	cin => \V45|aZ[11]~23\,
	combout => \V45|aZ[12]~24_combout\,
	cout => \V45|aZ[12]~25\);

-- Location: LCCOMB_X76_Y83_N26
\V45|aZ[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[13]~26_combout\ = (\V41|MZ2[13]~14_combout\ & ((\V43|MZ2[13]~22_combout\ & (\V45|aZ[12]~25\ & VCC)) # (!\V43|MZ2[13]~22_combout\ & (!\V45|aZ[12]~25\)))) # (!\V41|MZ2[13]~14_combout\ & ((\V43|MZ2[13]~22_combout\ & (!\V45|aZ[12]~25\)) # 
-- (!\V43|MZ2[13]~22_combout\ & ((\V45|aZ[12]~25\) # (GND)))))
-- \V45|aZ[13]~27\ = CARRY((\V41|MZ2[13]~14_combout\ & (!\V43|MZ2[13]~22_combout\ & !\V45|aZ[12]~25\)) # (!\V41|MZ2[13]~14_combout\ & ((!\V45|aZ[12]~25\) # (!\V43|MZ2[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[13]~14_combout\,
	datab => \V43|MZ2[13]~22_combout\,
	datad => VCC,
	cin => \V45|aZ[12]~25\,
	combout => \V45|aZ[13]~26_combout\,
	cout => \V45|aZ[13]~27\);

-- Location: LCCOMB_X76_Y83_N28
\V45|aZ[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[14]~28_combout\ = ((\V43|MZ2[14]~23_combout\ $ (\V41|MZ2[14]~15_combout\ $ (!\V45|aZ[13]~27\)))) # (GND)
-- \V45|aZ[14]~29\ = CARRY((\V43|MZ2[14]~23_combout\ & ((\V41|MZ2[14]~15_combout\) # (!\V45|aZ[13]~27\))) # (!\V43|MZ2[14]~23_combout\ & (\V41|MZ2[14]~15_combout\ & !\V45|aZ[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[14]~23_combout\,
	datab => \V41|MZ2[14]~15_combout\,
	datad => VCC,
	cin => \V45|aZ[13]~27\,
	combout => \V45|aZ[14]~28_combout\,
	cout => \V45|aZ[14]~29\);

-- Location: LCCOMB_X76_Y83_N30
\V45|aZ[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[15]~30_combout\ = \V43|MZ2[15]~24_combout\ $ (\V45|aZ[14]~29\ $ (\V41|MZ2[15]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[15]~24_combout\,
	datad => \V41|MZ2[15]~16_combout\,
	cin => \V45|aZ[14]~29\,
	combout => \V45|aZ[15]~30_combout\);

-- Location: LCCOMB_X75_Y87_N26
\V47|B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(15) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(15))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(15),
	datac => \V45|aZ[15]~30_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(15));

-- Location: LCCOMB_X77_Y84_N28
\V13|MZ2[10]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[10]~27_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datac => \V7|Mux5~3_combout\,
	combout => \V13|MZ2[10]~27_combout\);

-- Location: LCCOMB_X75_Y84_N6
\V13|MZ2[11]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[11]~28_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux4~3_combout\,
	combout => \V13|MZ2[11]~28_combout\);

-- Location: LCCOMB_X77_Y87_N4
\V13|MZ2[12]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[12]~29_combout\ = (!\RM_S1[1]~input_o\ & \RM_S1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RM_S1[1]~input_o\,
	datad => \RM_S1[2]~input_o\,
	combout => \V13|MZ2[12]~29_combout\);

-- Location: LCCOMB_X75_Y85_N30
\V40|B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(12) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(12))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|B\(12),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(12));

-- Location: LCCOMB_X76_Y84_N18
\V47|B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(12) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(12))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(12),
	datac => \V45|aZ[12]~24_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(12));

-- Location: LCCOMB_X75_Y84_N28
\V7|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux3~0_combout\ = (\V7|Mux15~0_combout\ & (\V7|Mux15~8_combout\)) # (!\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\ & (\V40|B\(12))) # (!\V7|Mux15~8_combout\ & ((\V47|B\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V40|B\(12),
	datad => \V47|B\(12),
	combout => \V7|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y84_N0
\V13|MZ2[12]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[12]~30_combout\ = (\V13|MZ2[15]~16_combout\ & ((\V13|MZ2[12]~29_combout\ & ((\V7|Mux3~0_combout\))) # (!\V13|MZ2[12]~29_combout\ & (\V7|Mux3~2_combout\ & !\V7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datab => \V13|MZ2[12]~29_combout\,
	datac => \V7|Mux3~2_combout\,
	datad => \V7|Mux3~0_combout\,
	combout => \V13|MZ2[12]~30_combout\);

-- Location: LCCOMB_X75_Y85_N8
\V47|B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(13) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(13))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(13),
	datac => \M2_S3~inputclkctrl_outclk\,
	datad => \V45|aZ[13]~26_combout\,
	combout => \V47|B\(13));

-- Location: IOIBUF_X66_Y91_N22
\V0[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(13),
	o => \V0[13]~input_o\);

-- Location: IOIBUF_X50_Y91_N8
\V2_1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(13),
	o => \V2_1[13]~input_o\);

-- Location: LCCOMB_X73_Y85_N22
\V40|A[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(13) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(13),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(13));

-- Location: LCCOMB_X73_Y85_N10
\T2|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[13]~14_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[13]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\V40|A\(13) & \BM_S1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[13]~input_o\,
	datac => \V40|A\(13),
	datad => \BM_S1[1]~input_o\,
	combout => \T2|MZ2[13]~14_combout\);

-- Location: LCCOMB_X73_Y85_N12
\T3|A[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(13) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[13]~14_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(13),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[13]~14_combout\,
	combout => \T3|A\(13));

-- Location: IOIBUF_X53_Y0_N1
\BD_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BD_S2(1),
	o => \BD_S2[1]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\BD_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BD_S2(0),
	o => \BD_S2[0]~input_o\);

-- Location: LCCOMB_X53_Y1_N28
\V3|R4[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4[15]~0_combout\ = (\BD_S2[1]~input_o\) # (!\BD_S2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BD_S2[1]~input_o\,
	datad => \BD_S2[0]~input_o\,
	combout => \V3|R4[15]~0_combout\);

-- Location: CLKCTRL_G24
\V3|R4[15]~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \V3|R4[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \V3|R4[15]~0clkctrl_outclk\);

-- Location: LCCOMB_X73_Y85_N20
\V3|R4[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(13) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(13)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(13),
	datac => \V3|R4\(13),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(13));

-- Location: LCCOMB_X73_Y85_N6
\V7|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux2~0_combout\ = (\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\) # ((\V3|R4\(13))))) # (!\RM_S1[1]~input_o\ & (!\RM_S1[0]~input_o\ & (\V0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \V0[13]~input_o\,
	datad => \V3|R4\(13),
	combout => \V7|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y85_N0
\V13|MZ2[14]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[14]~32_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux1~3_combout\,
	combout => \V13|MZ2[14]~32_combout\);

-- Location: LCCOMB_X75_Y87_N14
\V13|MZ2[15]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[15]~33_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux0~3_combout\,
	combout => \V13|MZ2[15]~33_combout\);

-- Location: IOIBUF_X50_Y91_N22
\M1_S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1_S2,
	o => \M1_S2~input_o\);

-- Location: LCCOMB_X73_Y87_N26
\V15|MZ2[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[15]~0_combout\ = (!\RD_S2[2]~input_o\ & (!\RD_S2[0]~input_o\ & (\M1_S2~input_o\ $ (\RD_S2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_S2~input_o\,
	datab => \RD_S2[2]~input_o\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V15|MZ2[15]~0_combout\);

-- Location: LCCOMB_X76_Y82_N4
\V15|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[0]~1_combout\ = (\V15|MZ2[15]~0_combout\ & ((\V7|Mux15~2_combout\) # ((!\RM_S1[2]~input_o\ & \V7|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V15|MZ2[15]~0_combout\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux15~2_combout\,
	datad => \V7|Mux15~4_combout\,
	combout => \V15|MZ2[0]~1_combout\);

-- Location: LCCOMB_X73_Y83_N22
\V15|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[1]~2_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux14~3_combout\,
	combout => \V15|MZ2[1]~2_combout\);

-- Location: LCCOMB_X73_Y83_N12
\V15|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[2]~3_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux13~3_combout\,
	combout => \V15|MZ2[2]~3_combout\);

-- Location: LCCOMB_X75_Y86_N8
\V15|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[3]~4_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V15|MZ2[15]~0_combout\,
	datac => \V7|Mux12~3_combout\,
	combout => \V15|MZ2[3]~4_combout\);

-- Location: LCCOMB_X75_Y81_N4
\V15|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[4]~5_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux11~3_combout\,
	combout => \V15|MZ2[4]~5_combout\);

-- Location: LCCOMB_X77_Y85_N30
\V15|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[5]~6_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux10~3_combout\,
	combout => \V15|MZ2[5]~6_combout\);

-- Location: LCCOMB_X75_Y83_N0
\V15|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[6]~7_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux9~3_combout\,
	combout => \V15|MZ2[6]~7_combout\);

-- Location: LCCOMB_X73_Y86_N12
\V15|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[7]~8_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux8~3_combout\,
	combout => \V15|MZ2[7]~8_combout\);

-- Location: LCCOMB_X73_Y84_N26
\V15|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[8]~9_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux7~3_combout\,
	combout => \V15|MZ2[8]~9_combout\);

-- Location: LCCOMB_X73_Y84_N4
\V15|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[9]~10_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux6~3_combout\,
	combout => \V15|MZ2[9]~10_combout\);

-- Location: LCCOMB_X77_Y84_N22
\V15|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[10]~11_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V15|MZ2[15]~0_combout\,
	datac => \V7|Mux5~3_combout\,
	combout => \V15|MZ2[10]~11_combout\);

-- Location: LCCOMB_X75_Y84_N22
\V15|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[11]~12_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux4~3_combout\,
	combout => \V15|MZ2[11]~12_combout\);

-- Location: LCCOMB_X75_Y84_N24
\V15|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[12]~13_combout\ = (\V7|Mux3~3_combout\ & \V15|MZ2[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V7|Mux3~3_combout\,
	datad => \V15|MZ2[15]~0_combout\,
	combout => \V15|MZ2[12]~13_combout\);

-- Location: LCCOMB_X75_Y85_N14
\V15|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[13]~14_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux2~3_combout\,
	combout => \V15|MZ2[13]~14_combout\);

-- Location: LCCOMB_X75_Y85_N24
\V15|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[14]~15_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux1~3_combout\,
	combout => \V15|MZ2[14]~15_combout\);

-- Location: LCCOMB_X75_Y87_N12
\V15|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V15|MZ2[15]~16_combout\ = (\V15|MZ2[15]~0_combout\ & \V7|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V15|MZ2[15]~0_combout\,
	datad => \V7|Mux0~3_combout\,
	combout => \V15|MZ2[15]~16_combout\);

-- Location: DSPMULT_X74_Y84_N0
\V17|Mult0|auto_generated|mac_mult1\ : cycloneiv_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \V17|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \V17|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \V17|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X74_Y84_N2
\V17|Mult0|auto_generated|mac_out2\ : cycloneiv_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \V17|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \V17|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X73_Y85_N30
\V19|A[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(13) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(13),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \V19|A\(13));

-- Location: LCCOMB_X73_Y85_N2
\V19|B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(13) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(13))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(13),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \V19|B\(13));

-- Location: LCCOMB_X73_Y85_N4
\V7|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux2~1_combout\ = (\V7|Mux2~0_combout\ & (((\V19|B\(13))) # (!\RM_S1[0]~input_o\))) # (!\V7|Mux2~0_combout\ & (\RM_S1[0]~input_o\ & (\V19|A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux2~0_combout\,
	datab => \RM_S1[0]~input_o\,
	datac => \V19|A\(13),
	datad => \V19|B\(13),
	combout => \V7|Mux2~1_combout\);

-- Location: LCCOMB_X75_Y85_N16
\V7|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux2~2_combout\ = (\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\) # ((\V7|Mux2~1_combout\)))) # (!\V7|Mux15~0_combout\ & (!\V7|Mux15~8_combout\ & (\V47|B\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V47|B\(13),
	datad => \V7|Mux2~1_combout\,
	combout => \V7|Mux2~2_combout\);

-- Location: LCCOMB_X75_Y85_N10
\V13|MZ2[13]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[13]~31_combout\ = (\V13|MZ2[15]~16_combout\ & ((\V43|MZ2[1]~25_combout\ & ((\V7|Mux2~2_combout\))) # (!\V43|MZ2[1]~25_combout\ & (\V40|B\(13) & !\V7|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datab => \V43|MZ2[1]~25_combout\,
	datac => \V40|B\(13),
	datad => \V7|Mux2~2_combout\,
	combout => \V13|MZ2[13]~31_combout\);

-- Location: LCCOMB_X75_Y87_N16
\V19|B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(15) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(15))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(15),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|B\(15));

-- Location: LCCOMB_X75_Y87_N30
\V19|A[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(15) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(15),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|A\(15));

-- Location: IOIBUF_X75_Y91_N1
\V0[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(15),
	o => \V0[15]~input_o\);

-- Location: IOIBUF_X50_Y91_N15
\V2_1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(15),
	o => \V2_1[15]~input_o\);

-- Location: LCCOMB_X76_Y85_N6
\V40|A[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(15) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(15),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(15));

-- Location: LCCOMB_X76_Y85_N20
\T2|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[15]~16_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[15]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[15]~input_o\,
	datad => \V40|A\(15),
	combout => \T2|MZ2[15]~16_combout\);

-- Location: LCCOMB_X76_Y85_N8
\T3|A[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(15) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[15]~16_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(15),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[15]~16_combout\,
	combout => \T3|A\(15));

-- Location: LCCOMB_X76_Y87_N22
\V3|R4[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(15) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(15)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(15),
	datac => \V3|R4\(15),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(15));

-- Location: LCCOMB_X75_Y87_N28
\V7|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux0~0_combout\ = (\RM_S1[1]~input_o\ & (((\RM_S1[0]~input_o\) # (\V3|R4\(15))))) # (!\RM_S1[1]~input_o\ & (\V0[15]~input_o\ & (!\RM_S1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \V0[15]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \V3|R4\(15),
	combout => \V7|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y87_N6
\V7|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux0~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux0~0_combout\ & (\V19|B\(15))) # (!\V7|Mux0~0_combout\ & ((\V19|A\(15)))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[0]~input_o\,
	datab => \V19|B\(15),
	datac => \V19|A\(15),
	datad => \V7|Mux0~0_combout\,
	combout => \V7|Mux0~1_combout\);

-- Location: LCCOMB_X75_Y87_N20
\V7|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux0~2_combout\ = (\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\) # ((\V7|Mux0~1_combout\)))) # (!\V7|Mux15~0_combout\ & (!\V7|Mux15~8_combout\ & (\V47|B\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V47|B\(15),
	datad => \V7|Mux0~1_combout\,
	combout => \V7|Mux0~2_combout\);

-- Location: LCCOMB_X75_Y87_N10
\V7|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux0~3_combout\ = (\V7|Mux0~2_combout\ & (!\V7|Mux15~6_combout\ & (!\V7|Mux15~7_combout\))) # (!\V7|Mux0~2_combout\ & (\V40|B\(15) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V7|Mux15~7_combout\,
	datac => \V40|B\(15),
	datad => \V7|Mux0~2_combout\,
	combout => \V7|Mux0~3_combout\);

-- Location: LCCOMB_X75_Y87_N8
\V34|MZ2[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[15]~16_combout\ = (\V7|Mux0~3_combout\ & ((\V34|MZ2[0]~0_combout\) # ((\M4_S1~input_o\ & \V6|P4\(15))))) # (!\V7|Mux0~3_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux0~3_combout\,
	datab => \M4_S1~input_o\,
	datac => \V34|MZ2[0]~0_combout\,
	datad => \V6|P4\(15),
	combout => \V34|MZ2[15]~16_combout\);

-- Location: LCCOMB_X73_Y82_N20
\V40|A[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(14) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(14),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \V40|A\(14));

-- Location: LCCOMB_X73_Y82_N18
\T2|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[14]~15_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[14]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[14]~input_o\,
	datac => \BM_S1[1]~input_o\,
	datad => \V40|A\(14),
	combout => \T2|MZ2[14]~15_combout\);

-- Location: LCCOMB_X73_Y82_N8
\T3|A[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(14) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[14]~15_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(14),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[14]~15_combout\,
	combout => \T3|A\(14));

-- Location: LCCOMB_X73_Y85_N26
\V3|R4[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(14) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(14)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(14),
	datac => \V3|R4\(14),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(14));

-- Location: LCCOMB_X76_Y84_N28
\V19|B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(14) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(14))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(14),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \V19|B\(14));

-- Location: IOIBUF_X84_Y91_N1
\V0[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(14),
	o => \V0[14]~input_o\);

-- Location: LCCOMB_X76_Y84_N6
\V19|A[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(14) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(14),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \V19|A\(14));

-- Location: LCCOMB_X76_Y84_N0
\V7|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux1~1_combout\ = (\RM_S1[1]~input_o\ & (((\RM_S1[0]~input_o\)))) # (!\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\ & ((\V19|A\(14)))) # (!\RM_S1[0]~input_o\ & (\V0[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \V0[14]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \V19|A\(14),
	combout => \V7|Mux1~1_combout\);

-- Location: LCCOMB_X75_Y85_N22
\V7|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux1~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux1~1_combout\ & ((\V19|B\(14)))) # (!\V7|Mux1~1_combout\ & (\V3|R4\(14))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(14),
	datab => \RM_S1[1]~input_o\,
	datac => \V19|B\(14),
	datad => \V7|Mux1~1_combout\,
	combout => \V7|Mux1~2_combout\);

-- Location: LCCOMB_X77_Y85_N24
\V47|B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(14) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(14))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(14),
	datac => \V45|aZ[14]~28_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(14));

-- Location: LCCOMB_X73_Y82_N28
\V40|B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(14) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(14))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(14),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \V40|B\(14));

-- Location: LCCOMB_X75_Y85_N28
\V7|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux1~0_combout\ = (\V7|Mux15~0_combout\ & (\V7|Mux15~8_combout\)) # (!\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\ & ((\V40|B\(14)))) # (!\V7|Mux15~8_combout\ & (\V47|B\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V47|B\(14),
	datad => \V40|B\(14),
	combout => \V7|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y85_N20
\V7|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux1~3_combout\ = (\V7|Mux1~0_combout\ & (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\))) # (!\V7|Mux1~0_combout\ & (\V7|Mux1~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux1~2_combout\,
	datad => \V7|Mux1~0_combout\,
	combout => \V7|Mux1~3_combout\);

-- Location: LCCOMB_X75_Y85_N6
\V34|MZ2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[14]~15_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux1~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(14))))) # (!\V34|MZ2[0]~0_combout\ & (((\M4_S1~input_o\ & \V6|P4\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \V7|Mux1~3_combout\,
	datac => \M4_S1~input_o\,
	datad => \V6|P4\(14),
	combout => \V34|MZ2[14]~15_combout\);

-- Location: LCCOMB_X73_Y85_N24
\V40|B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(13) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(13))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(13),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(13));

-- Location: LCCOMB_X75_Y85_N18
\V7|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux2~3_combout\ = (\V7|Mux2~2_combout\ & (!\V7|Mux15~6_combout\ & (!\V7|Mux15~7_combout\))) # (!\V7|Mux2~2_combout\ & (\V40|B\(13) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V7|Mux15~7_combout\,
	datac => \V40|B\(13),
	datad => \V7|Mux2~2_combout\,
	combout => \V7|Mux2~3_combout\);

-- Location: LCCOMB_X75_Y85_N12
\V34|MZ2[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[13]~14_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux2~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(13))))) # (!\V34|MZ2[0]~0_combout\ & (((\M4_S1~input_o\ & \V6|P4\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \V7|Mux2~3_combout\,
	datac => \M4_S1~input_o\,
	datad => \V6|P4\(13),
	combout => \V34|MZ2[13]~14_combout\);

-- Location: LCCOMB_X76_Y85_N16
\V40|A[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(12) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(12),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(12));

-- Location: LCCOMB_X76_Y85_N2
\T2|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[12]~13_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[12]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[12]~input_o\,
	datad => \V40|A\(12),
	combout => \T2|MZ2[12]~13_combout\);

-- Location: LCCOMB_X76_Y85_N26
\T3|A[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(12) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[12]~13_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(12),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[12]~13_combout\,
	combout => \T3|A\(12));

-- Location: LCCOMB_X76_Y84_N20
\V3|R4[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(12) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(12))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V3|R4\(12),
	datac => \T3|A\(12),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(12));

-- Location: IOIBUF_X99_Y91_N22
\V0[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(12),
	o => \V0[12]~input_o\);

-- Location: LCCOMB_X75_Y84_N14
\V19|A[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(12) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(12),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \V19|A\(12));

-- Location: LCCOMB_X75_Y84_N30
\V7|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux3~1_combout\ = (\RM_S1[0]~input_o\ & (((\V19|A\(12)) # (\RM_S1[1]~input_o\)))) # (!\RM_S1[0]~input_o\ & (\V0[12]~input_o\ & ((!\RM_S1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[0]~input_o\,
	datab => \V0[12]~input_o\,
	datac => \V19|A\(12),
	datad => \RM_S1[1]~input_o\,
	combout => \V7|Mux3~1_combout\);

-- Location: LCCOMB_X75_Y84_N20
\V19|B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(12) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(12))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(12),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \V19|B\(12));

-- Location: LCCOMB_X75_Y84_N8
\V7|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux3~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux3~1_combout\ & ((\V19|B\(12)))) # (!\V7|Mux3~1_combout\ & (\V3|R4\(12))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(12),
	datab => \RM_S1[1]~input_o\,
	datac => \V7|Mux3~1_combout\,
	datad => \V19|B\(12),
	combout => \V7|Mux3~2_combout\);

-- Location: LCCOMB_X75_Y84_N26
\V7|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux3~3_combout\ = (\V7|Mux3~0_combout\ & (\RM_S1[2]~input_o\ & (!\RM_S1[1]~input_o\))) # (!\V7|Mux3~0_combout\ & (\V7|Mux3~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \RM_S1[1]~input_o\,
	datac => \V7|Mux3~2_combout\,
	datad => \V7|Mux3~0_combout\,
	combout => \V7|Mux3~3_combout\);

-- Location: LCCOMB_X75_Y87_N22
\V34|MZ2[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[12]~13_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux3~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(12))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux3~3_combout\,
	datad => \V6|P4\(12),
	combout => \V34|MZ2[12]~13_combout\);

-- Location: LCCOMB_X75_Y84_N4
\V40|B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(11) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(11))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(11),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(11));

-- Location: LCCOMB_X76_Y84_N8
\V47|B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(11) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(11))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(11),
	datac => \V45|aZ[11]~22_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(11));

-- Location: LCCOMB_X72_Y84_N14
\V19|A[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(11) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(11),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \V19|A\(11));

-- Location: IOIBUF_X117_Y84_N1
\V0[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(11),
	o => \V0[11]~input_o\);

-- Location: IOIBUF_X104_Y91_N1
\V2_1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(11),
	o => \V2_1[11]~input_o\);

-- Location: LCCOMB_X75_Y84_N10
\V40|A[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(11) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(11),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(11));

-- Location: LCCOMB_X76_Y84_N16
\T2|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[11]~12_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[11]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[11]~input_o\,
	datad => \V40|A\(11),
	combout => \T2|MZ2[11]~12_combout\);

-- Location: LCCOMB_X76_Y84_N22
\T3|A[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(11) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[11]~12_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(11),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[11]~12_combout\,
	combout => \T3|A\(11));

-- Location: LCCOMB_X72_Y84_N12
\V3|R4[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(11) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(11))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(11),
	datac => \T3|A\(11),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(11));

-- Location: LCCOMB_X72_Y84_N8
\V7|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux4~0_combout\ = (\RM_S1[0]~input_o\ & (((\RM_S1[1]~input_o\)))) # (!\RM_S1[0]~input_o\ & ((\RM_S1[1]~input_o\ & ((\V3|R4\(11)))) # (!\RM_S1[1]~input_o\ & (\V0[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[11]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \V3|R4\(11),
	combout => \V7|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y84_N10
\V19|B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(11) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(11))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(11),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \V19|B\(11));

-- Location: LCCOMB_X72_Y84_N2
\V7|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux4~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux4~0_combout\ & ((\V19|B\(11)))) # (!\V7|Mux4~0_combout\ & (\V19|A\(11))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[0]~input_o\,
	datab => \V19|A\(11),
	datac => \V7|Mux4~0_combout\,
	datad => \V19|B\(11),
	combout => \V7|Mux4~1_combout\);

-- Location: LCCOMB_X75_Y84_N16
\V7|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux4~2_combout\ = (\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\) # ((\V7|Mux4~1_combout\)))) # (!\V7|Mux15~0_combout\ & (!\V7|Mux15~8_combout\ & (\V47|B\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V47|B\(11),
	datad => \V7|Mux4~1_combout\,
	combout => \V7|Mux4~2_combout\);

-- Location: LCCOMB_X75_Y84_N2
\V7|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux4~3_combout\ = (\V7|Mux4~2_combout\ & (!\V7|Mux15~6_combout\ & (!\V7|Mux15~7_combout\))) # (!\V7|Mux4~2_combout\ & (\V40|B\(11) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V7|Mux15~7_combout\,
	datac => \V40|B\(11),
	datad => \V7|Mux4~2_combout\,
	combout => \V7|Mux4~3_combout\);

-- Location: LCCOMB_X75_Y88_N20
\V34|MZ2[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[11]~12_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux4~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(11))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & (\V6|P4\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V6|P4\(11),
	datad => \V7|Mux4~3_combout\,
	combout => \V34|MZ2[11]~12_combout\);

-- Location: LCCOMB_X72_Y85_N30
\V40|A[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(10) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(10),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(10));

-- Location: LCCOMB_X72_Y85_N18
\T2|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[10]~11_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[10]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2_1[10]~input_o\,
	datab => \BM_S1[1]~input_o\,
	datac => \V40|A\(10),
	datad => \T2|MZ2[1]~0_combout\,
	combout => \T2|MZ2[10]~11_combout\);

-- Location: LCCOMB_X72_Y85_N26
\T3|A[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(10) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[10]~11_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(10),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[10]~11_combout\,
	combout => \T3|A\(10));

-- Location: LCCOMB_X76_Y84_N26
\V3|R4[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(10) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(10))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(10),
	datac => \T3|A\(10),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(10));

-- Location: LCCOMB_X77_Y84_N8
\V19|B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(10) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(10))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(10),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \V19|B\(10));

-- Location: IOIBUF_X117_Y46_N1
\V0[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(10),
	o => \V0[10]~input_o\);

-- Location: LCCOMB_X77_Y84_N2
\V19|A[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(10) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(10),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \V19|A\(10));

-- Location: LCCOMB_X77_Y84_N18
\V7|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux5~1_combout\ = (\RM_S1[0]~input_o\ & (((\RM_S1[1]~input_o\) # (\V19|A\(10))))) # (!\RM_S1[0]~input_o\ & (\V0[10]~input_o\ & (!\RM_S1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[10]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \V19|A\(10),
	combout => \V7|Mux5~1_combout\);

-- Location: LCCOMB_X77_Y84_N4
\V7|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux5~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux5~1_combout\ & ((\V19|B\(10)))) # (!\V7|Mux5~1_combout\ & (\V3|R4\(10))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(10),
	datab => \RM_S1[1]~input_o\,
	datac => \V19|B\(10),
	datad => \V7|Mux5~1_combout\,
	combout => \V7|Mux5~2_combout\);

-- Location: LCCOMB_X76_Y85_N30
\V40|B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(10) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(10))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|B\(10),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \V40|B\(10));

-- Location: LCCOMB_X77_Y84_N12
\V47|B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(10) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(10))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(10),
	datac => \V45|aZ[10]~20_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(10));

-- Location: LCCOMB_X77_Y84_N16
\V7|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux5~0_combout\ = (\V7|Mux15~8_combout\ & ((\V7|Mux15~0_combout\) # ((\V40|B\(10))))) # (!\V7|Mux15~8_combout\ & (!\V7|Mux15~0_combout\ & ((\V47|B\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~8_combout\,
	datab => \V7|Mux15~0_combout\,
	datac => \V40|B\(10),
	datad => \V47|B\(10),
	combout => \V7|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y84_N30
\V7|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux5~3_combout\ = (\V7|Mux5~0_combout\ & (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\))) # (!\V7|Mux5~0_combout\ & (\V7|Mux5~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux5~2_combout\,
	datad => \V7|Mux5~0_combout\,
	combout => \V7|Mux5~3_combout\);

-- Location: LCCOMB_X77_Y84_N0
\V34|MZ2[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[10]~11_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux5~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(10))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux5~3_combout\,
	datad => \V6|P4\(10),
	combout => \V34|MZ2[10]~11_combout\);

-- Location: LCCOMB_X73_Y84_N2
\V40|B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(9) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(9))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(9),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \V40|B\(9));

-- Location: LCCOMB_X73_Y84_N22
\V19|A[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(9) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT9\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(9),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \V19|A\(9));

-- Location: IOIBUF_X117_Y46_N8
\V0[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(9),
	o => \V0[9]~input_o\);

-- Location: IOIBUF_X39_Y91_N15
\V2_1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(9),
	o => \V2_1[9]~input_o\);

-- Location: LCCOMB_X72_Y85_N20
\V40|A[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(9) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT9\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(9),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(9));

-- Location: LCCOMB_X72_Y85_N12
\T2|MZ2[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[9]~10_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[9]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2_1[9]~input_o\,
	datab => \BM_S1[1]~input_o\,
	datac => \T2|MZ2[1]~0_combout\,
	datad => \V40|A\(9),
	combout => \T2|MZ2[9]~10_combout\);

-- Location: LCCOMB_X72_Y85_N0
\T3|A[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(9) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[9]~10_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(9),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[9]~10_combout\,
	combout => \T3|A\(9));

-- Location: LCCOMB_X73_Y84_N12
\V3|R4[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(9) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(9))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(9),
	datac => \T3|A\(9),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(9));

-- Location: LCCOMB_X73_Y84_N14
\V7|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux6~0_combout\ = (\RM_S1[0]~input_o\ & (((\RM_S1[1]~input_o\)))) # (!\RM_S1[0]~input_o\ & ((\RM_S1[1]~input_o\ & ((\V3|R4\(9)))) # (!\RM_S1[1]~input_o\ & (\V0[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[9]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \V3|R4\(9),
	combout => \V7|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y84_N20
\V19|B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(9) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(9))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(9),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|B\(9));

-- Location: LCCOMB_X73_Y84_N8
\V7|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux6~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux6~0_combout\ & ((\V19|B\(9)))) # (!\V7|Mux6~0_combout\ & (\V19|A\(9))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(9),
	datab => \RM_S1[0]~input_o\,
	datac => \V7|Mux6~0_combout\,
	datad => \V19|B\(9),
	combout => \V7|Mux6~1_combout\);

-- Location: LCCOMB_X76_Y84_N12
\V47|B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(9) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(9))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(9),
	datab => \V45|aZ[9]~18_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(9));

-- Location: LCCOMB_X73_Y84_N18
\V7|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux6~2_combout\ = (\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\) # ((\V7|Mux6~1_combout\)))) # (!\V7|Mux15~0_combout\ & (!\V7|Mux15~8_combout\ & ((\V47|B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V7|Mux6~1_combout\,
	datad => \V47|B\(9),
	combout => \V7|Mux6~2_combout\);

-- Location: LCCOMB_X73_Y84_N16
\V7|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux6~3_combout\ = (\V7|Mux6~2_combout\ & (!\V7|Mux15~6_combout\ & ((!\V7|Mux15~7_combout\)))) # (!\V7|Mux6~2_combout\ & (\V40|B\(9) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V40|B\(9),
	datac => \V7|Mux15~7_combout\,
	datad => \V7|Mux6~2_combout\,
	combout => \V7|Mux6~3_combout\);

-- Location: LCCOMB_X73_Y84_N28
\V13|MZ2[9]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[9]~26_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux6~3_combout\,
	combout => \V13|MZ2[9]~26_combout\);

-- Location: LCCOMB_X72_Y84_N26
\V19|B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(8) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(8))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(8),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \V19|B\(8));

-- Location: IOIBUF_X44_Y91_N15
\V2_1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(8),
	o => \V2_1[8]~input_o\);

-- Location: LCCOMB_X72_Y85_N6
\V40|A[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(8) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(8),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(8));

-- Location: LCCOMB_X72_Y85_N2
\T2|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[8]~9_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[8]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2_1[8]~input_o\,
	datab => \BM_S1[1]~input_o\,
	datac => \T2|MZ2[1]~0_combout\,
	datad => \V40|A\(8),
	combout => \T2|MZ2[8]~9_combout\);

-- Location: LCCOMB_X72_Y85_N22
\T3|A[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(8) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[8]~9_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(8),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[8]~9_combout\,
	combout => \T3|A\(8));

-- Location: LCCOMB_X72_Y84_N22
\V3|R4[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(8) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(8))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(8),
	datac => \T3|A\(8),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(8));

-- Location: IOIBUF_X41_Y91_N15
\V0[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(8),
	o => \V0[8]~input_o\);

-- Location: LCCOMB_X72_Y84_N0
\V19|A[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(8) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(8),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \V19|A\(8));

-- Location: LCCOMB_X72_Y84_N24
\V7|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux7~1_combout\ = (\RM_S1[1]~input_o\ & (((\RM_S1[0]~input_o\)))) # (!\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\ & ((\V19|A\(8)))) # (!\RM_S1[0]~input_o\ & (\V0[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[8]~input_o\,
	datab => \RM_S1[1]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \V19|A\(8),
	combout => \V7|Mux7~1_combout\);

-- Location: LCCOMB_X72_Y84_N6
\V7|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux7~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux7~1_combout\ & (\V19|B\(8))) # (!\V7|Mux7~1_combout\ & ((\V3|R4\(8)))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(8),
	datab => \RM_S1[1]~input_o\,
	datac => \V3|R4\(8),
	datad => \V7|Mux7~1_combout\,
	combout => \V7|Mux7~2_combout\);

-- Location: LCCOMB_X72_Y85_N8
\V40|B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(8) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(8))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(8),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(8));

-- Location: LCCOMB_X72_Y85_N10
\V47|B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(8) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(8))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(8),
	datac => \M2_S3~inputclkctrl_outclk\,
	datad => \V45|aZ[8]~16_combout\,
	combout => \V47|B\(8));

-- Location: LCCOMB_X72_Y85_N28
\V7|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux7~0_combout\ = (\V7|Mux15~0_combout\ & (\V7|Mux15~8_combout\)) # (!\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\ & (\V40|B\(8))) # (!\V7|Mux15~8_combout\ & ((\V47|B\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V40|B\(8),
	datad => \V47|B\(8),
	combout => \V7|Mux7~0_combout\);

-- Location: LCCOMB_X73_Y84_N0
\V7|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux7~3_combout\ = (\V7|Mux7~0_combout\ & (\RM_S1[2]~input_o\ & (!\RM_S1[1]~input_o\))) # (!\V7|Mux7~0_combout\ & (\V7|Mux7~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \RM_S1[1]~input_o\,
	datac => \V7|Mux7~2_combout\,
	datad => \V7|Mux7~0_combout\,
	combout => \V7|Mux7~3_combout\);

-- Location: LCCOMB_X73_Y85_N8
\V34|MZ2[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[8]~9_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux7~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(8))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & (\V6|P4\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V6|P4\(8),
	datad => \V7|Mux7~3_combout\,
	combout => \V34|MZ2[8]~9_combout\);

-- Location: LCCOMB_X73_Y85_N0
\V40|B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(7) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(7))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(7),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(7));

-- Location: LCCOMB_X73_Y86_N26
\V47|B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(7) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(7))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(7),
	datac => \M2_S3~inputclkctrl_outclk\,
	datad => \V45|aZ[7]~14_combout\,
	combout => \V47|B\(7));

-- Location: LCCOMB_X73_Y86_N22
\V19|A[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(7) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(7),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \V19|A\(7));

-- Location: LCCOMB_X73_Y86_N4
\V19|B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(7) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(7))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(7),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \V19|B\(7));

-- Location: IOIBUF_X46_Y91_N22
\V0[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(7),
	o => \V0[7]~input_o\);

-- Location: IOIBUF_X68_Y91_N15
\V2_1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(7),
	o => \V2_1[7]~input_o\);

-- Location: LCCOMB_X72_Y85_N24
\V40|A[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(7) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(7),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(7));

-- Location: LCCOMB_X72_Y85_N16
\T2|MZ2[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[7]~8_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[7]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2_1[7]~input_o\,
	datab => \BM_S1[1]~input_o\,
	datac => \T2|MZ2[1]~0_combout\,
	datad => \V40|A\(7),
	combout => \T2|MZ2[7]~8_combout\);

-- Location: LCCOMB_X72_Y85_N4
\T3|A[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(7) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[7]~8_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(7),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[7]~8_combout\,
	combout => \T3|A\(7));

-- Location: LCCOMB_X72_Y86_N8
\V3|R4[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(7) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(7)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(7),
	datac => \V3|R4\(7),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(7));

-- Location: LCCOMB_X73_Y86_N24
\V7|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux8~0_combout\ = (\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\) # ((\V3|R4\(7))))) # (!\RM_S1[1]~input_o\ & (!\RM_S1[0]~input_o\ & (\V0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \V0[7]~input_o\,
	datad => \V3|R4\(7),
	combout => \V7|Mux8~0_combout\);

-- Location: LCCOMB_X73_Y86_N18
\V7|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux8~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux8~0_combout\ & ((\V19|B\(7)))) # (!\V7|Mux8~0_combout\ & (\V19|A\(7))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(7),
	datab => \RM_S1[0]~input_o\,
	datac => \V19|B\(7),
	datad => \V7|Mux8~0_combout\,
	combout => \V7|Mux8~1_combout\);

-- Location: LCCOMB_X73_Y86_N28
\V7|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux8~2_combout\ = (\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\) # ((\V7|Mux8~1_combout\)))) # (!\V7|Mux15~0_combout\ & (!\V7|Mux15~8_combout\ & (\V47|B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V47|B\(7),
	datad => \V7|Mux8~1_combout\,
	combout => \V7|Mux8~2_combout\);

-- Location: LCCOMB_X73_Y86_N2
\V7|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux8~3_combout\ = (\V7|Mux8~2_combout\ & (!\V7|Mux15~7_combout\ & ((!\V7|Mux15~6_combout\)))) # (!\V7|Mux8~2_combout\ & (\V40|B\(7) & ((\V7|Mux15~7_combout\) # (\V7|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~7_combout\,
	datab => \V40|B\(7),
	datac => \V7|Mux15~6_combout\,
	datad => \V7|Mux8~2_combout\,
	combout => \V7|Mux8~3_combout\);

-- Location: LCCOMB_X73_Y86_N14
\V13|MZ2[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[7]~24_combout\ = (\V13|MZ2[15]~16_combout\ & \V7|Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V13|MZ2[15]~16_combout\,
	datad => \V7|Mux8~3_combout\,
	combout => \V13|MZ2[7]~24_combout\);

-- Location: LCCOMB_X75_Y83_N2
\V19|B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(6) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(6))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(6),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \V19|B\(6));

-- Location: IOIBUF_X97_Y91_N8
\V2_1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(6),
	o => \V2_1[6]~input_o\);

-- Location: LCCOMB_X73_Y82_N6
\V40|A[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(6) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(6),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \V40|A\(6));

-- Location: LCCOMB_X73_Y82_N24
\T2|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[6]~7_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[6]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[6]~input_o\,
	datac => \BM_S1[1]~input_o\,
	datad => \V40|A\(6),
	combout => \T2|MZ2[6]~7_combout\);

-- Location: LCCOMB_X73_Y82_N26
\T3|A[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(6) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[6]~7_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(6),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[6]~7_combout\,
	combout => \T3|A\(6));

-- Location: LCCOMB_X77_Y83_N28
\V3|R4[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(6) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(6))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V3|R4\(6),
	datac => \T3|A\(6),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(6));

-- Location: IOIBUF_X99_Y91_N8
\V0[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(6),
	o => \V0[6]~input_o\);

-- Location: LCCOMB_X75_Y83_N28
\V19|A[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(6) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(6),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \V19|A\(6));

-- Location: LCCOMB_X75_Y83_N6
\V7|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux9~1_combout\ = (\RM_S1[1]~input_o\ & (\RM_S1[0]~input_o\)) # (!\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\ & ((\V19|A\(6)))) # (!\RM_S1[0]~input_o\ & (\V0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \V0[6]~input_o\,
	datad => \V19|A\(6),
	combout => \V7|Mux9~1_combout\);

-- Location: LCCOMB_X75_Y83_N4
\V7|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux9~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux9~1_combout\ & (\V19|B\(6))) # (!\V7|Mux9~1_combout\ & ((\V3|R4\(6)))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \V19|B\(6),
	datac => \V3|R4\(6),
	datad => \V7|Mux9~1_combout\,
	combout => \V7|Mux9~2_combout\);

-- Location: LCCOMB_X75_Y83_N26
\V40|B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(6) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(6))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|B\(6),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(6));

-- Location: LCCOMB_X77_Y83_N26
\V47|B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(6) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V47|B\(6)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V45|aZ[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V45|aZ[6]~12_combout\,
	datac => \V47|B\(6),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(6));

-- Location: LCCOMB_X75_Y83_N16
\V7|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux9~0_combout\ = (\V7|Mux15~0_combout\ & (\V7|Mux15~8_combout\)) # (!\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\ & (\V40|B\(6))) # (!\V7|Mux15~8_combout\ & ((\V47|B\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V40|B\(6),
	datad => \V47|B\(6),
	combout => \V7|Mux9~0_combout\);

-- Location: LCCOMB_X75_Y83_N18
\V7|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux9~3_combout\ = (\V7|Mux9~0_combout\ & (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\))) # (!\V7|Mux9~0_combout\ & (\V7|Mux9~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux9~2_combout\,
	datad => \V7|Mux9~0_combout\,
	combout => \V7|Mux9~3_combout\);

-- Location: LCCOMB_X75_Y83_N8
\V34|MZ2[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[6]~7_combout\ = (\M4_S1~input_o\ & ((\V6|P4\(6)) # ((\V7|Mux9~3_combout\ & \V34|MZ2[0]~0_combout\)))) # (!\M4_S1~input_o\ & (\V7|Mux9~3_combout\ & (\V34|MZ2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4_S1~input_o\,
	datab => \V7|Mux9~3_combout\,
	datac => \V34|MZ2[0]~0_combout\,
	datad => \V6|P4\(6),
	combout => \V34|MZ2[6]~7_combout\);

-- Location: LCCOMB_X77_Y85_N26
\V40|B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(5) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(5))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|B\(5),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \V40|B\(5));

-- Location: LCCOMB_X77_Y85_N4
\V47|B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(5) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V47|B\(5)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V45|aZ[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V45|aZ[5]~10_combout\,
	datab => \V47|B\(5),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(5));

-- Location: LCCOMB_X78_Y85_N26
\V19|B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(5) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(5))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(5),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \V19|B\(5));

-- Location: IOIBUF_X57_Y91_N8
\V0[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(5),
	o => \V0[5]~input_o\);

-- Location: IOIBUF_X90_Y91_N1
\V2_1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(5),
	o => \V2_1[5]~input_o\);

-- Location: LCCOMB_X78_Y85_N2
\V40|A[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(5) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(5),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(5));

-- Location: LCCOMB_X78_Y85_N16
\T2|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[5]~6_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[5]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[5]~input_o\,
	datac => \BM_S1[1]~input_o\,
	datad => \V40|A\(5),
	combout => \T2|MZ2[5]~6_combout\);

-- Location: LCCOMB_X78_Y85_N28
\T3|A[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(5) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[5]~6_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(5),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[5]~6_combout\,
	combout => \T3|A\(5));

-- Location: LCCOMB_X78_Y85_N12
\V3|R4[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(5) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(5)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(5),
	datac => \V3|R4\(5),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(5));

-- Location: LCCOMB_X78_Y85_N8
\V7|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux10~0_combout\ = (\RM_S1[1]~input_o\ & (((\RM_S1[0]~input_o\) # (\V3|R4\(5))))) # (!\RM_S1[1]~input_o\ & (\V0[5]~input_o\ & (!\RM_S1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[5]~input_o\,
	datab => \RM_S1[1]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \V3|R4\(5),
	combout => \V7|Mux10~0_combout\);

-- Location: LCCOMB_X78_Y85_N10
\V19|A[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(5) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|A\(5),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \V19|A\(5));

-- Location: LCCOMB_X78_Y85_N22
\V7|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux10~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux10~0_combout\ & (\V19|B\(5))) # (!\V7|Mux10~0_combout\ & ((\V19|A\(5)))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(5),
	datab => \RM_S1[0]~input_o\,
	datac => \V7|Mux10~0_combout\,
	datad => \V19|A\(5),
	combout => \V7|Mux10~1_combout\);

-- Location: LCCOMB_X77_Y85_N20
\V7|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux10~2_combout\ = (\V7|Mux15~8_combout\ & (\V7|Mux15~0_combout\)) # (!\V7|Mux15~8_combout\ & ((\V7|Mux15~0_combout\ & ((\V7|Mux10~1_combout\))) # (!\V7|Mux15~0_combout\ & (\V47|B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~8_combout\,
	datab => \V7|Mux15~0_combout\,
	datac => \V47|B\(5),
	datad => \V7|Mux10~1_combout\,
	combout => \V7|Mux10~2_combout\);

-- Location: LCCOMB_X77_Y85_N10
\V7|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux10~3_combout\ = (\V7|Mux10~2_combout\ & (!\V7|Mux15~6_combout\ & (!\V7|Mux15~7_combout\))) # (!\V7|Mux10~2_combout\ & (\V40|B\(5) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V7|Mux15~7_combout\,
	datac => \V40|B\(5),
	datad => \V7|Mux10~2_combout\,
	combout => \V7|Mux10~3_combout\);

-- Location: LCCOMB_X77_Y85_N28
\V34|MZ2[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[5]~6_combout\ = (\V7|Mux10~3_combout\ & ((\V34|MZ2[0]~0_combout\) # ((\M4_S1~input_o\ & \V6|P4\(5))))) # (!\V7|Mux10~3_combout\ & (((\M4_S1~input_o\ & \V6|P4\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux10~3_combout\,
	datab => \V34|MZ2[0]~0_combout\,
	datac => \M4_S1~input_o\,
	datad => \V6|P4\(5),
	combout => \V34|MZ2[5]~6_combout\);

-- Location: LCCOMB_X73_Y82_N16
\V40|A[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(4) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(4),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \V40|A\(4));

-- Location: LCCOMB_X73_Y82_N2
\T2|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[4]~5_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[4]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[4]~input_o\,
	datac => \BM_S1[1]~input_o\,
	datad => \V40|A\(4),
	combout => \T2|MZ2[4]~5_combout\);

-- Location: LCCOMB_X73_Y82_N4
\T3|A[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(4) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[4]~5_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(4),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[4]~5_combout\,
	combout => \T3|A\(4));

-- Location: LCCOMB_X76_Y81_N22
\V3|R4[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(4) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\V3|R4\(4))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\T3|A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(4),
	datac => \T3|A\(4),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(4));

-- Location: IOIBUF_X57_Y91_N1
\V0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(4),
	o => \V0[4]~input_o\);

-- Location: LCCOMB_X75_Y81_N24
\V19|A[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(4) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(4),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|A\(4));

-- Location: LCCOMB_X75_Y81_N8
\V7|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux11~1_combout\ = (\RM_S1[0]~input_o\ & (((\RM_S1[1]~input_o\) # (\V19|A\(4))))) # (!\RM_S1[0]~input_o\ & (\V0[4]~input_o\ & (!\RM_S1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[0]~input_o\,
	datab => \V0[4]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \V19|A\(4),
	combout => \V7|Mux11~1_combout\);

-- Location: LCCOMB_X75_Y81_N6
\V19|B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(4) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(4))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(4),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|B\(4));

-- Location: LCCOMB_X75_Y81_N30
\V7|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux11~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux11~1_combout\ & ((\V19|B\(4)))) # (!\V7|Mux11~1_combout\ & (\V3|R4\(4))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \V3|R4\(4),
	datac => \V7|Mux11~1_combout\,
	datad => \V19|B\(4),
	combout => \V7|Mux11~2_combout\);

-- Location: LCCOMB_X75_Y81_N14
\V40|B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(4) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(4))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(4),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(4));

-- Location: LCCOMB_X76_Y81_N28
\V47|B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(4) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(4))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(4),
	datac => \V45|aZ[4]~8_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(4));

-- Location: LCCOMB_X75_Y81_N2
\V7|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux11~0_combout\ = (\V7|Mux15~0_combout\ & (\V7|Mux15~8_combout\)) # (!\V7|Mux15~0_combout\ & ((\V7|Mux15~8_combout\ & (\V40|B\(4))) # (!\V7|Mux15~8_combout\ & ((\V47|B\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~0_combout\,
	datab => \V7|Mux15~8_combout\,
	datac => \V40|B\(4),
	datad => \V47|B\(4),
	combout => \V7|Mux11~0_combout\);

-- Location: LCCOMB_X75_Y81_N20
\V7|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux11~3_combout\ = (\V7|Mux11~0_combout\ & (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\))) # (!\V7|Mux11~0_combout\ & (\V7|Mux11~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux11~2_combout\,
	datad => \V7|Mux11~0_combout\,
	combout => \V7|Mux11~3_combout\);

-- Location: LCCOMB_X75_Y81_N26
\V34|MZ2[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[4]~5_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux11~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(4))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & ((\V6|P4\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V7|Mux11~3_combout\,
	datad => \V6|P4\(4),
	combout => \V34|MZ2[4]~5_combout\);

-- Location: LCCOMB_X76_Y85_N0
\V40|B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(3) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(3))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(3),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(3));

-- Location: LCCOMB_X75_Y86_N26
\V47|B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(3) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(3))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V47|B\(3),
	datac => \V45|aZ[3]~6_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(3));

-- Location: LCCOMB_X75_Y86_N12
\V19|B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(3) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(3))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(3),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \V19|B\(3));

-- Location: LCCOMB_X75_Y86_N14
\V19|A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(3) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(3),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \V19|A\(3));

-- Location: IOIBUF_X117_Y86_N8
\V0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(3),
	o => \V0[3]~input_o\);

-- Location: IOIBUF_X108_Y91_N22
\V2_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(3),
	o => \V2_1[3]~input_o\);

-- Location: LCCOMB_X76_Y85_N10
\V40|A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(3) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(3),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|A\(3));

-- Location: LCCOMB_X76_Y85_N12
\T2|MZ2[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[3]~4_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[3]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[3]~input_o\,
	datad => \V40|A\(3),
	combout => \T2|MZ2[3]~4_combout\);

-- Location: LCCOMB_X76_Y85_N4
\T3|A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(3) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[3]~4_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(3),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[3]~4_combout\,
	combout => \T3|A\(3));

-- Location: LCCOMB_X76_Y86_N18
\V3|R4[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(3) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(3)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(3),
	datac => \V3|R4[15]~0clkctrl_outclk\,
	datad => \V3|R4\(3),
	combout => \V3|R4\(3));

-- Location: LCCOMB_X76_Y86_N28
\V7|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux12~0_combout\ = (\RM_S1[0]~input_o\ & (((\RM_S1[1]~input_o\)))) # (!\RM_S1[0]~input_o\ & ((\RM_S1[1]~input_o\ & ((\V3|R4\(3)))) # (!\RM_S1[1]~input_o\ & (\V0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[3]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \RM_S1[1]~input_o\,
	datad => \V3|R4\(3),
	combout => \V7|Mux12~0_combout\);

-- Location: LCCOMB_X75_Y86_N0
\V7|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux12~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux12~0_combout\ & (\V19|B\(3))) # (!\V7|Mux12~0_combout\ & ((\V19|A\(3)))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V19|B\(3),
	datab => \RM_S1[0]~input_o\,
	datac => \V19|A\(3),
	datad => \V7|Mux12~0_combout\,
	combout => \V7|Mux12~1_combout\);

-- Location: LCCOMB_X75_Y86_N6
\V7|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux12~2_combout\ = (\V7|Mux15~8_combout\ & (\V7|Mux15~0_combout\)) # (!\V7|Mux15~8_combout\ & ((\V7|Mux15~0_combout\ & ((\V7|Mux12~1_combout\))) # (!\V7|Mux15~0_combout\ & (\V47|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~8_combout\,
	datab => \V7|Mux15~0_combout\,
	datac => \V47|B\(3),
	datad => \V7|Mux12~1_combout\,
	combout => \V7|Mux12~2_combout\);

-- Location: LCCOMB_X75_Y86_N4
\V7|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux12~3_combout\ = (\V7|Mux12~2_combout\ & (!\V7|Mux15~6_combout\ & (!\V7|Mux15~7_combout\))) # (!\V7|Mux12~2_combout\ & (\V40|B\(3) & ((\V7|Mux15~6_combout\) # (\V7|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~6_combout\,
	datab => \V7|Mux15~7_combout\,
	datac => \V40|B\(3),
	datad => \V7|Mux12~2_combout\,
	combout => \V7|Mux12~3_combout\);

-- Location: LCCOMB_X75_Y86_N22
\V13|MZ2[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V13|MZ2[3]~20_combout\ = (\V7|Mux12~3_combout\ & \V13|MZ2[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V7|Mux12~3_combout\,
	datad => \V13|MZ2[15]~16_combout\,
	combout => \V13|MZ2[3]~20_combout\);

-- Location: LCCOMB_X72_Y84_N28
\V19|B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(1) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(1))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(1),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|B\(1));

-- Location: IOIBUF_X44_Y91_N8
\V0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(1),
	o => \V0[1]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\V2_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(1),
	o => \V2_1[1]~input_o\);

-- Location: LCCOMB_X75_Y82_N2
\V40|A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(1) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(1),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \V40|A\(1));

-- Location: LCCOMB_X75_Y82_N6
\T2|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[1]~2_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[1]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[1]~input_o\,
	datad => \V40|A\(1),
	combout => \T2|MZ2[1]~2_combout\);

-- Location: LCCOMB_X75_Y82_N14
\T3|A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(1) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[1]~2_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(1),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[1]~2_combout\,
	combout => \T3|A\(1));

-- Location: LCCOMB_X72_Y84_N18
\V3|R4[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(1) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(1)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(1),
	datab => \V3|R4\(1),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(1));

-- Location: LCCOMB_X72_Y84_N4
\V7|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux14~0_combout\ = (\RM_S1[1]~input_o\ & (((\RM_S1[0]~input_o\) # (\V3|R4\(1))))) # (!\RM_S1[1]~input_o\ & (\V0[1]~input_o\ & (!\RM_S1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V0[1]~input_o\,
	datab => \RM_S1[1]~input_o\,
	datac => \RM_S1[0]~input_o\,
	datad => \V3|R4\(1),
	combout => \V7|Mux14~0_combout\);

-- Location: LCCOMB_X72_Y84_N16
\V19|A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(1) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(1),
	datac => \V17|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|A\(1));

-- Location: LCCOMB_X72_Y84_N30
\V7|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux14~1_combout\ = (\RM_S1[0]~input_o\ & ((\V7|Mux14~0_combout\ & (\V19|B\(1))) # (!\V7|Mux14~0_combout\ & ((\V19|A\(1)))))) # (!\RM_S1[0]~input_o\ & (((\V7|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[0]~input_o\,
	datab => \V19|B\(1),
	datac => \V7|Mux14~0_combout\,
	datad => \V19|A\(1),
	combout => \V7|Mux14~1_combout\);

-- Location: LCCOMB_X73_Y83_N28
\V41|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V41|MZ2[1]~2_combout\ = (\V41|MZ2[15]~0_combout\ & \V7|Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V41|MZ2[15]~0_combout\,
	datad => \V7|Mux14~3_combout\,
	combout => \V41|MZ2[1]~2_combout\);

-- Location: LCCOMB_X76_Y83_N2
\V45|aZ[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V45|aZ[1]~2_combout\ = (\V43|MZ2[1]~10_combout\ & ((\V41|MZ2[1]~2_combout\ & (\V45|aZ[0]~1\ & VCC)) # (!\V41|MZ2[1]~2_combout\ & (!\V45|aZ[0]~1\)))) # (!\V43|MZ2[1]~10_combout\ & ((\V41|MZ2[1]~2_combout\ & (!\V45|aZ[0]~1\)) # (!\V41|MZ2[1]~2_combout\ & 
-- ((\V45|aZ[0]~1\) # (GND)))))
-- \V45|aZ[1]~3\ = CARRY((\V43|MZ2[1]~10_combout\ & (!\V41|MZ2[1]~2_combout\ & !\V45|aZ[0]~1\)) # (!\V43|MZ2[1]~10_combout\ & ((!\V45|aZ[0]~1\) # (!\V41|MZ2[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[1]~10_combout\,
	datab => \V41|MZ2[1]~2_combout\,
	datad => VCC,
	cin => \V45|aZ[0]~1\,
	combout => \V45|aZ[1]~2_combout\,
	cout => \V45|aZ[1]~3\);

-- Location: LCCOMB_X73_Y83_N18
\V47|B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(1) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V47|B\(1))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V45|aZ[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V47|B\(1),
	datac => \V45|aZ[1]~2_combout\,
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(1));

-- Location: LCCOMB_X73_Y83_N24
\V7|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux14~2_combout\ = (\V7|Mux15~8_combout\ & (\V7|Mux15~0_combout\)) # (!\V7|Mux15~8_combout\ & ((\V7|Mux15~0_combout\ & (\V7|Mux14~1_combout\)) # (!\V7|Mux15~0_combout\ & ((\V47|B\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~8_combout\,
	datab => \V7|Mux15~0_combout\,
	datac => \V7|Mux14~1_combout\,
	datad => \V47|B\(1),
	combout => \V7|Mux14~2_combout\);

-- Location: LCCOMB_X73_Y83_N26
\V43|MZ2[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V43|MZ2[1]~10_combout\ = (\V43|MZ2[15]~8_combout\ & ((\V43|MZ2[1]~25_combout\ & ((\V7|Mux14~2_combout\))) # (!\V43|MZ2[1]~25_combout\ & (\V40|B\(1) & !\V7|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V43|MZ2[15]~8_combout\,
	datab => \V43|MZ2[1]~25_combout\,
	datac => \V40|B\(1),
	datad => \V7|Mux14~2_combout\,
	combout => \V43|MZ2[1]~10_combout\);

-- Location: LCCOMB_X73_Y83_N14
\V47|B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V47|B\(2) = (GLOBAL(\M2_S3~inputclkctrl_outclk\) & ((\V47|B\(2)))) # (!GLOBAL(\M2_S3~inputclkctrl_outclk\) & (\V45|aZ[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V45|aZ[2]~4_combout\,
	datac => \V47|B\(2),
	datad => \M2_S3~inputclkctrl_outclk\,
	combout => \V47|B\(2));

-- Location: LCCOMB_X73_Y85_N14
\V40|B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(2) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(2))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(2),
	datac => \V38|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \M4_S2~inputclkctrl_outclk\,
	combout => \V40|B\(2));

-- Location: LCCOMB_X73_Y83_N4
\V7|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux13~0_combout\ = (\V7|Mux15~8_combout\ & ((\V7|Mux15~0_combout\) # ((\V40|B\(2))))) # (!\V7|Mux15~8_combout\ & (!\V7|Mux15~0_combout\ & (\V47|B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~8_combout\,
	datab => \V7|Mux15~0_combout\,
	datac => \V47|B\(2),
	datad => \V40|B\(2),
	combout => \V7|Mux13~0_combout\);

-- Location: IOIBUF_X53_Y91_N15
\V2_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_1(2),
	o => \V2_1[2]~input_o\);

-- Location: LCCOMB_X73_Y82_N10
\V40|A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(2) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V40|A\(2),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \V40|A\(2));

-- Location: LCCOMB_X73_Y82_N12
\T2|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[2]~3_combout\ = (\T2|MZ2[1]~0_combout\ & (\V2_1[2]~input_o\)) # (!\T2|MZ2[1]~0_combout\ & (((\BM_S1[1]~input_o\ & \V40|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|MZ2[1]~0_combout\,
	datab => \V2_1[2]~input_o\,
	datac => \BM_S1[1]~input_o\,
	datad => \V40|A\(2),
	combout => \T2|MZ2[2]~3_combout\);

-- Location: LCCOMB_X73_Y82_N30
\T3|A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(2) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[2]~3_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3|A\(2),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[2]~3_combout\,
	combout => \T3|A\(2));

-- Location: LCCOMB_X72_Y83_N16
\V3|R4[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(2) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(2)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(2),
	datac => \V3|R4\(2),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(2));

-- Location: LCCOMB_X73_Y85_N18
\V19|B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(2) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(2))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(2),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \V19|B\(2));

-- Location: IOIBUF_X66_Y91_N15
\V0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(2),
	o => \V0[2]~input_o\);

-- Location: LCCOMB_X73_Y85_N16
\V19|A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(2) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(2),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \V19|A\(2));

-- Location: LCCOMB_X73_Y85_N28
\V7|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux13~1_combout\ = (\RM_S1[1]~input_o\ & (\RM_S1[0]~input_o\)) # (!\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\ & ((\V19|A\(2)))) # (!\RM_S1[0]~input_o\ & (\V0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \V0[2]~input_o\,
	datad => \V19|A\(2),
	combout => \V7|Mux13~1_combout\);

-- Location: LCCOMB_X73_Y83_N6
\V7|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux13~2_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux13~1_combout\ & ((\V19|B\(2)))) # (!\V7|Mux13~1_combout\ & (\V3|R4\(2))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V3|R4\(2),
	datab => \RM_S1[1]~input_o\,
	datac => \V19|B\(2),
	datad => \V7|Mux13~1_combout\,
	combout => \V7|Mux13~2_combout\);

-- Location: LCCOMB_X73_Y83_N20
\V7|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux13~3_combout\ = (\V7|Mux13~0_combout\ & (!\RM_S1[1]~input_o\ & (\RM_S1[2]~input_o\))) # (!\V7|Mux13~0_combout\ & (\V7|Mux13~2_combout\ & ((\RM_S1[1]~input_o\) # (!\RM_S1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[2]~input_o\,
	datac => \V7|Mux13~0_combout\,
	datad => \V7|Mux13~2_combout\,
	combout => \V7|Mux13~3_combout\);

-- Location: LCCOMB_X73_Y87_N8
\V34|MZ2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[2]~3_combout\ = (\V34|MZ2[0]~0_combout\ & ((\V7|Mux13~3_combout\) # ((\M4_S1~input_o\ & \V6|P4\(2))))) # (!\V34|MZ2[0]~0_combout\ & (\M4_S1~input_o\ & (\V6|P4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V34|MZ2[0]~0_combout\,
	datab => \M4_S1~input_o\,
	datac => \V6|P4\(2),
	datad => \V7|Mux13~3_combout\,
	combout => \V34|MZ2[2]~3_combout\);

-- Location: LCCOMB_X73_Y83_N8
\V40|B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|B\(1) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|B\(1))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~DATAOUT1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|B\(1),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \V40|B\(1));

-- Location: LCCOMB_X73_Y83_N10
\V7|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux14~3_combout\ = (\V7|Mux14~2_combout\ & (!\V7|Mux15~7_combout\ & (!\V7|Mux15~6_combout\))) # (!\V7|Mux14~2_combout\ & (\V40|B\(1) & ((\V7|Mux15~7_combout\) # (\V7|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7|Mux15~7_combout\,
	datab => \V7|Mux15~6_combout\,
	datac => \V40|B\(1),
	datad => \V7|Mux14~2_combout\,
	combout => \V7|Mux14~3_combout\);

-- Location: LCCOMB_X75_Y83_N30
\V34|MZ2[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V34|MZ2[1]~2_combout\ = (\M4_S1~input_o\ & ((\V6|P4\(1)) # ((\V34|MZ2[0]~0_combout\ & \V7|Mux14~3_combout\)))) # (!\M4_S1~input_o\ & (\V34|MZ2[0]~0_combout\ & (\V7|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M4_S1~input_o\,
	datab => \V34|MZ2[0]~0_combout\,
	datac => \V7|Mux14~3_combout\,
	datad => \V6|P4\(1),
	combout => \V34|MZ2[1]~2_combout\);

-- Location: LCCOMB_X75_Y82_N24
\V40|A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V40|A\(0) = (GLOBAL(\M4_S2~inputclkctrl_outclk\) & ((\V38|Mult0|auto_generated|mac_out2~dataout\))) # (!GLOBAL(\M4_S2~inputclkctrl_outclk\) & (\V40|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V40|A\(0),
	datac => \M4_S2~inputclkctrl_outclk\,
	datad => \V38|Mult0|auto_generated|mac_out2~dataout\,
	combout => \V40|A\(0));

-- Location: LCCOMB_X75_Y82_N12
\T2|MZ2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|MZ2[0]~1_combout\ = (\T2|MZ2[1]~0_combout\ & (((\V2_1[0]~input_o\)))) # (!\T2|MZ2[1]~0_combout\ & (\BM_S1[1]~input_o\ & ((\V40|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BM_S1[1]~input_o\,
	datab => \T2|MZ2[1]~0_combout\,
	datac => \V2_1[0]~input_o\,
	datad => \V40|A\(0),
	combout => \T2|MZ2[0]~1_combout\);

-- Location: LCCOMB_X75_Y82_N20
\T3|A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T3|A\(0) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\T2|MZ2[0]~1_combout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\T3|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(0),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \T2|MZ2[0]~1_combout\,
	combout => \T3|A\(0));

-- Location: LCCOMB_X75_Y82_N4
\V3|R4[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V3|R4\(0) = (GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & ((\V3|R4\(0)))) # (!GLOBAL(\V3|R4[15]~0clkctrl_outclk\) & (\T3|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T3|A\(0),
	datac => \V3|R4\(0),
	datad => \V3|R4[15]~0clkctrl_outclk\,
	combout => \V3|R4\(0));

-- Location: IOIBUF_X106_Y91_N1
\V0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V0(0),
	o => \V0[0]~input_o\);

-- Location: LCCOMB_X75_Y82_N18
\V19|A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|A\(0) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~dataout\))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|A\(0),
	datac => \M1_S3~inputclkctrl_outclk\,
	datad => \V17|Mult0|auto_generated|mac_out2~dataout\,
	combout => \V19|A\(0));

-- Location: LCCOMB_X75_Y82_N22
\V7|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~3_combout\ = (\RM_S1[1]~input_o\ & (\RM_S1[0]~input_o\)) # (!\RM_S1[1]~input_o\ & ((\RM_S1[0]~input_o\ & ((\V19|A\(0)))) # (!\RM_S1[0]~input_o\ & (\V0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \RM_S1[0]~input_o\,
	datac => \V0[0]~input_o\,
	datad => \V19|A\(0),
	combout => \V7|Mux15~3_combout\);

-- Location: LCCOMB_X75_Y84_N18
\V19|B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V19|B\(0) = (GLOBAL(\M1_S3~inputclkctrl_outclk\) & (\V19|B\(0))) # (!GLOBAL(\M1_S3~inputclkctrl_outclk\) & ((\V17|Mult0|auto_generated|mac_out2~dataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V19|B\(0),
	datac => \V17|Mult0|auto_generated|mac_out2~dataout\,
	datad => \M1_S3~inputclkctrl_outclk\,
	combout => \V19|B\(0));

-- Location: LCCOMB_X75_Y82_N28
\V7|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~4_combout\ = (\RM_S1[1]~input_o\ & ((\V7|Mux15~3_combout\ & ((\V19|B\(0)))) # (!\V7|Mux15~3_combout\ & (\V3|R4\(0))))) # (!\RM_S1[1]~input_o\ & (((\V7|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[1]~input_o\,
	datab => \V3|R4\(0),
	datac => \V7|Mux15~3_combout\,
	datad => \V19|B\(0),
	combout => \V7|Mux15~4_combout\);

-- Location: LCCOMB_X75_Y82_N26
\V7|Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V7|Mux15~5_combout\ = (\V7|Mux15~2_combout\) # ((!\RM_S1[2]~input_o\ & \V7|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM_S1[2]~input_o\,
	datab => \V7|Mux15~4_combout\,
	datad => \V7|Mux15~2_combout\,
	combout => \V7|Mux15~5_combout\);

-- Location: LCCOMB_X72_Y87_N0
\V9|P6[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[0]~0_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux15~5_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux15~5_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[0]~0_combout\);

-- Location: LCCOMB_X72_Y87_N6
\V9|P6[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[1]~1_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux14~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux14~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[1]~1_combout\);

-- Location: LCCOMB_X73_Y87_N28
\V9|P6[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[2]~2_combout\ = (\RD_S2[1]~input_o\ & (\V7|Mux13~3_combout\ & (\RD_S2[2]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \V7|Mux13~3_combout\,
	datac => \RD_S2[2]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[2]~2_combout\);

-- Location: LCCOMB_X72_Y87_N16
\V9|P6[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[3]~3_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux12~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux12~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[3]~3_combout\);

-- Location: LCCOMB_X72_Y87_N22
\V9|P6[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[4]~4_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux11~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux11~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[4]~4_combout\);

-- Location: LCCOMB_X72_Y87_N24
\V9|P6[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[5]~5_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux10~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux10~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[5]~5_combout\);

-- Location: LCCOMB_X72_Y87_N26
\V9|P6[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[6]~6_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux9~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux9~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[6]~6_combout\);

-- Location: LCCOMB_X72_Y87_N28
\V9|P6[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[7]~7_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux8~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux8~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[7]~7_combout\);

-- Location: LCCOMB_X73_Y87_N6
\V9|P6[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[8]~8_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux7~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux7~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[8]~8_combout\);

-- Location: LCCOMB_X73_Y87_N16
\V9|P6[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[9]~9_combout\ = (\RD_S2[1]~input_o\ & (\V7|Mux6~3_combout\ & (\RD_S2[2]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \V7|Mux6~3_combout\,
	datac => \RD_S2[2]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[9]~9_combout\);

-- Location: LCCOMB_X72_Y87_N10
\V9|P6[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[10]~10_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux5~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux5~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[10]~10_combout\);

-- Location: LCCOMB_X72_Y87_N12
\V9|P6[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[11]~11_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux4~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux4~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[11]~11_combout\);

-- Location: LCCOMB_X73_Y88_N20
\V9|P6[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[12]~12_combout\ = (!\RD_S2[0]~input_o\ & (\RD_S2[1]~input_o\ & (\V7|Mux3~3_combout\ & \RD_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[0]~input_o\,
	datab => \RD_S2[1]~input_o\,
	datac => \V7|Mux3~3_combout\,
	datad => \RD_S2[2]~input_o\,
	combout => \V9|P6[12]~12_combout\);

-- Location: LCCOMB_X73_Y87_N18
\V9|P6[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[13]~13_combout\ = (\RD_S2[1]~input_o\ & (\V7|Mux2~3_combout\ & (\RD_S2[2]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \V7|Mux2~3_combout\,
	datac => \RD_S2[2]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[13]~13_combout\);

-- Location: LCCOMB_X72_Y87_N14
\V9|P6[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[14]~14_combout\ = (\RD_S2[2]~input_o\ & (\V7|Mux1~3_combout\ & (\RD_S2[1]~input_o\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[2]~input_o\,
	datab => \V7|Mux1~3_combout\,
	datac => \RD_S2[1]~input_o\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[14]~14_combout\);

-- Location: LCCOMB_X73_Y87_N24
\V9|P6[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V9|P6[15]~15_combout\ = (\RD_S2[1]~input_o\ & (\RD_S2[2]~input_o\ & (\V7|Mux0~3_combout\ & !\RD_S2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_S2[1]~input_o\,
	datab => \RD_S2[2]~input_o\,
	datac => \V7|Mux0~3_combout\,
	datad => \RD_S2[0]~input_o\,
	combout => \V9|P6[15]~15_combout\);

-- Location: IOIBUF_X82_Y91_N8
\YDT_S2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YDT_S2(2),
	o => \YDT_S2[2]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\YDT_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YDT_S2(0),
	o => \YDT_S2[0]~input_o\);

-- Location: LCCOMB_X77_Y89_N30
\T7|B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(0) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(0))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(0),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[0]~1_combout\,
	combout => \T7|B\(0));

-- Location: IOIBUF_X79_Y91_N8
\YDT_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YDT_S2(1),
	o => \YDT_S2[1]~input_o\);

-- Location: LCCOMB_X80_Y89_N24
\T8|P6[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[0]~0_combout\ = (\YDT_S2[2]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(0) & \YDT_S2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[2]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(0),
	datad => \YDT_S2[1]~input_o\,
	combout => \T8|P6[0]~0_combout\);

-- Location: LCCOMB_X76_Y88_N4
\T7|B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(1) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(1))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(1),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[1]~2_combout\,
	combout => \T7|B\(1));

-- Location: LCCOMB_X75_Y88_N10
\T8|P6[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[1]~1_combout\ = (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & (\T7|B\(1) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[0]~input_o\,
	datab => \YDT_S2[1]~input_o\,
	datac => \T7|B\(1),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[1]~1_combout\);

-- Location: LCCOMB_X76_Y88_N26
\T7|B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(2) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(2))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(2),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[2]~3_combout\,
	combout => \T7|B\(2));

-- Location: LCCOMB_X79_Y88_N20
\T8|P6[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[2]~2_combout\ = (\YDT_S2[1]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(2) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(2),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[2]~2_combout\);

-- Location: LCCOMB_X79_Y88_N8
\T7|B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(3) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(3))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(3),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[3]~4_combout\,
	combout => \T7|B\(3));

-- Location: LCCOMB_X79_Y88_N26
\T8|P6[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[3]~3_combout\ = (\YDT_S2[1]~input_o\ & (\T7|B\(3) & (!\YDT_S2[0]~input_o\ & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \T7|B\(3),
	datac => \YDT_S2[0]~input_o\,
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[3]~3_combout\);

-- Location: LCCOMB_X79_Y88_N22
\T7|B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(4) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(4))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(4),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[4]~5_combout\,
	combout => \T7|B\(4));

-- Location: LCCOMB_X79_Y88_N0
\T8|P6[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[4]~4_combout\ = (\YDT_S2[1]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(4) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(4),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[4]~4_combout\);

-- Location: LCCOMB_X72_Y88_N26
\T7|B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(5) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(5))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(5),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[5]~6_combout\,
	combout => \T7|B\(5));

-- Location: LCCOMB_X72_Y88_N28
\T8|P6[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[5]~5_combout\ = (\YDT_S2[1]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(5) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(5),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[5]~5_combout\);

-- Location: LCCOMB_X72_Y88_N4
\T7|B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(6) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(6))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(6),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[6]~7_combout\,
	combout => \T7|B\(6));

-- Location: LCCOMB_X72_Y88_N2
\T8|P6[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[6]~6_combout\ = (\YDT_S2[1]~input_o\ & (\T7|B\(6) & (!\YDT_S2[0]~input_o\ & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \T7|B\(6),
	datac => \YDT_S2[0]~input_o\,
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[6]~6_combout\);

-- Location: LCCOMB_X72_Y88_N22
\T7|B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(7) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(7))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(7),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[7]~8_combout\,
	combout => \T7|B\(7));

-- Location: LCCOMB_X72_Y88_N16
\T8|P6[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[7]~7_combout\ = (\YDT_S2[1]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(7) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[1]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(7),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[7]~7_combout\);

-- Location: LCCOMB_X73_Y88_N8
\T7|B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(8) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(8))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(8),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[8]~9_combout\,
	combout => \T7|B\(8));

-- Location: LCCOMB_X73_Y88_N26
\T8|P6[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[8]~8_combout\ = (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & (\T7|B\(8) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[0]~input_o\,
	datab => \YDT_S2[1]~input_o\,
	datac => \T7|B\(8),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[8]~8_combout\);

-- Location: LCCOMB_X80_Y88_N8
\T7|B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(9) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(9))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(9),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[9]~10_combout\,
	combout => \T7|B\(9));

-- Location: LCCOMB_X80_Y88_N20
\T8|P6[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[9]~9_combout\ = (\T7|B\(9) & (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(9),
	datab => \YDT_S2[0]~input_o\,
	datac => \YDT_S2[1]~input_o\,
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[9]~9_combout\);

-- Location: LCCOMB_X80_Y88_N22
\T7|B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(10) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(10))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[10]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(10),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[10]~11_combout\,
	combout => \T7|B\(10));

-- Location: LCCOMB_X80_Y88_N26
\T8|P6[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[10]~10_combout\ = (\T7|B\(10) & (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(10),
	datab => \YDT_S2[0]~input_o\,
	datac => \YDT_S2[1]~input_o\,
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[10]~10_combout\);

-- Location: LCCOMB_X77_Y89_N8
\T7|B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(11) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(11))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[11]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T7|B\(11),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[11]~12_combout\,
	combout => \T7|B\(11));

-- Location: LCCOMB_X77_Y89_N20
\T8|P6[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[11]~11_combout\ = (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & (\T7|B\(11) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[0]~input_o\,
	datab => \YDT_S2[1]~input_o\,
	datac => \T7|B\(11),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[11]~11_combout\);

-- Location: LCCOMB_X76_Y89_N26
\T7|B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(12) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(12))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[12]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(12),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[12]~13_combout\,
	combout => \T7|B\(12));

-- Location: LCCOMB_X77_Y89_N6
\T8|P6[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[12]~12_combout\ = (\T7|B\(12) & (\YDT_S2[1]~input_o\ & (!\YDT_S2[0]~input_o\ & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(12),
	datab => \YDT_S2[1]~input_o\,
	datac => \YDT_S2[0]~input_o\,
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[12]~12_combout\);

-- Location: LCCOMB_X77_Y89_N26
\T7|B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(13) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(13))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[13]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(13),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[13]~14_combout\,
	combout => \T7|B\(13));

-- Location: LCCOMB_X77_Y89_N16
\T8|P6[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[13]~13_combout\ = (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & (\T7|B\(13) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[0]~input_o\,
	datab => \YDT_S2[1]~input_o\,
	datac => \T7|B\(13),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[13]~13_combout\);

-- Location: LCCOMB_X73_Y88_N30
\T7|B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(14) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(14))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[14]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(14),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[14]~15_combout\,
	combout => \T7|B\(14));

-- Location: LCCOMB_X80_Y89_N2
\T8|P6[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[14]~14_combout\ = (\YDT_S2[2]~input_o\ & (!\YDT_S2[0]~input_o\ & (\T7|B\(14) & \YDT_S2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[2]~input_o\,
	datab => \YDT_S2[0]~input_o\,
	datac => \T7|B\(14),
	datad => \YDT_S2[1]~input_o\,
	combout => \T8|P6[14]~14_combout\);

-- Location: LCCOMB_X78_Y87_N26
\T7|B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T7|B\(15) = (GLOBAL(\YDT_S1~inputclkctrl_outclk\) & (\T7|B\(15))) # (!GLOBAL(\YDT_S1~inputclkctrl_outclk\) & ((\T6|MZ2[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T7|B\(15),
	datac => \YDT_S1~inputclkctrl_outclk\,
	datad => \T6|MZ2[15]~16_combout\,
	combout => \T7|B\(15));

-- Location: LCCOMB_X77_Y89_N2
\T8|P6[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T8|P6[15]~15_combout\ = (!\YDT_S2[0]~input_o\ & (\YDT_S2[1]~input_o\ & (\T7|B\(15) & \YDT_S2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YDT_S2[0]~input_o\,
	datab => \YDT_S2[1]~input_o\,
	datac => \T7|B\(15),
	datad => \YDT_S2[2]~input_o\,
	combout => \T8|P6[15]~15_combout\);

-- Location: IOIBUF_X3_Y0_N22
\V1_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(0),
	o => \V1_1[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\V1_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(1),
	o => \V1_1[1]~input_o\);

-- Location: IOIBUF_X12_Y91_N8
\V1_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(2),
	o => \V1_1[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\V1_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(3),
	o => \V1_1[3]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\V1_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(4),
	o => \V1_1[4]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\V1_1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(5),
	o => \V1_1[5]~input_o\);

-- Location: IOIBUF_X117_Y67_N8
\V1_1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(6),
	o => \V1_1[6]~input_o\);

-- Location: IOIBUF_X86_Y0_N8
\V1_1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(7),
	o => \V1_1[7]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\V1_1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(8),
	o => \V1_1[8]~input_o\);

-- Location: IOIBUF_X104_Y0_N15
\V1_1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(9),
	o => \V1_1[9]~input_o\);

-- Location: IOIBUF_X117_Y10_N1
\V1_1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(10),
	o => \V1_1[10]~input_o\);

-- Location: IOIBUF_X37_Y91_N15
\V1_1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(11),
	o => \V1_1[11]~input_o\);

-- Location: IOIBUF_X88_Y0_N22
\V1_1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(12),
	o => \V1_1[12]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\V1_1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(13),
	o => \V1_1[13]~input_o\);

-- Location: IOIBUF_X5_Y91_N15
\V1_1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(14),
	o => \V1_1[14]~input_o\);

-- Location: IOIBUF_X5_Y91_N8
\V1_1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V1_1(15),
	o => \V1_1[15]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\V3_2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(0),
	o => \V3_2[0]~input_o\);

-- Location: IOIBUF_X115_Y91_N8
\V3_2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(1),
	o => \V3_2[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\V3_2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(2),
	o => \V3_2[2]~input_o\);

-- Location: IOIBUF_X108_Y0_N8
\V3_2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(3),
	o => \V3_2[3]~input_o\);

-- Location: IOIBUF_X37_Y91_N22
\V3_2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(4),
	o => \V3_2[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\V3_2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(5),
	o => \V3_2[5]~input_o\);

-- Location: IOIBUF_X117_Y69_N8
\V3_2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(6),
	o => \V3_2[6]~input_o\);

-- Location: IOIBUF_X5_Y91_N22
\V3_2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(7),
	o => \V3_2[7]~input_o\);

-- Location: IOIBUF_X8_Y91_N15
\V3_2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(8),
	o => \V3_2[8]~input_o\);

-- Location: IOIBUF_X82_Y0_N15
\V3_2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(9),
	o => \V3_2[9]~input_o\);

-- Location: IOIBUF_X106_Y0_N15
\V3_2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(10),
	o => \V3_2[10]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\V3_2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(11),
	o => \V3_2[11]~input_o\);

-- Location: IOIBUF_X21_Y91_N8
\V3_2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(12),
	o => \V3_2[12]~input_o\);

-- Location: IOIBUF_X34_Y91_N8
\V3_2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(13),
	o => \V3_2[13]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\V3_2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(14),
	o => \V3_2[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\V3_2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V3_2(15),
	o => \V3_2[15]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\V2_2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(0),
	o => \V2_2[0]~input_o\);

-- Location: IOIBUF_X5_Y91_N1
\V2_2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(1),
	o => \V2_2[1]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\V2_2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(2),
	o => \V2_2[2]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\V2_2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(3),
	o => \V2_2[3]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\V2_2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(4),
	o => \V2_2[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\V2_2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(5),
	o => \V2_2[5]~input_o\);

-- Location: IOIBUF_X15_Y91_N1
\V2_2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(6),
	o => \V2_2[6]~input_o\);

-- Location: IOIBUF_X117_Y26_N1
\V2_2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(7),
	o => \V2_2[7]~input_o\);

-- Location: IOIBUF_X113_Y91_N15
\V2_2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(8),
	o => \V2_2[8]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\V2_2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(9),
	o => \V2_2[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\V2_2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(10),
	o => \V2_2[10]~input_o\);

-- Location: IOIBUF_X92_Y0_N8
\V2_2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(11),
	o => \V2_2[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\V2_2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(12),
	o => \V2_2[12]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\V2_2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(13),
	o => \V2_2[13]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\V2_2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(14),
	o => \V2_2[14]~input_o\);

-- Location: IOIBUF_X117_Y13_N1
\V2_2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V2_2(15),
	o => \V2_2[15]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\GM_S1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GM_S1(0),
	o => \GM_S1[0]~input_o\);

-- Location: IOIBUF_X21_Y91_N22
\GM_S1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GM_S1(1),
	o => \GM_S1[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\BDT_S1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BDT_S1(0),
	o => \BDT_S1[0]~input_o\);

-- Location: IOIBUF_X117_Y8_N1
\BDT_S1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BDT_S1(1),
	o => \BDT_S1[1]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\BDT_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BDT_S2(0),
	o => \BDT_S2[0]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\BDT_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BDT_S2(1),
	o => \BDT_S2[1]~input_o\);

-- Location: IOIBUF_X28_Y91_N1
\M3_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M3_S1,
	o => \M3_S1~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\M2T_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M2T_S1,
	o => \M2T_S1~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\A3T_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3T_S1,
	o => \A3T_S1~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\M3T_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M3T_S1,
	o => \M3T_S1~input_o\);

-- Location: IOIBUF_X92_Y0_N22
\YMT_S2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMT_S2(2),
	o => \YMT_S2[2]~input_o\);

-- Location: IOIBUF_X111_Y91_N15
\YMT_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMT_S2(1),
	o => \YMT_S2[1]~input_o\);

-- Location: IOIBUF_X117_Y86_N1
\YMT_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_YMT_S2(0),
	o => \YMT_S2[0]~input_o\);

-- Location: IOIBUF_X117_Y55_N8
\BMT_S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BMT_S1,
	o => \BMT_S1~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\M3_S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M3_S2,
	o => \M3_S2~input_o\);

-- Location: IOIBUF_X24_Y91_N1
\GD_S2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GD_S2(0),
	o => \GD_S2[0]~input_o\);

-- Location: IOIBUF_X117_Y60_N1
\GD_S2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GD_S2(1),
	o => \GD_S2[1]~input_o\);

ww_O1_S30(0) <= \O1_S30[0]~output_o\;

ww_O1_S30(1) <= \O1_S30[1]~output_o\;

ww_O1_S30(2) <= \O1_S30[2]~output_o\;

ww_O1_S30(3) <= \O1_S30[3]~output_o\;

ww_O1_S30(4) <= \O1_S30[4]~output_o\;

ww_O1_S30(5) <= \O1_S30[5]~output_o\;

ww_O1_S30(6) <= \O1_S30[6]~output_o\;

ww_O1_S30(7) <= \O1_S30[7]~output_o\;

ww_O1_S30(8) <= \O1_S30[8]~output_o\;

ww_O1_S30(9) <= \O1_S30[9]~output_o\;

ww_O1_S30(10) <= \O1_S30[10]~output_o\;

ww_O1_S30(11) <= \O1_S30[11]~output_o\;

ww_O1_S30(12) <= \O1_S30[12]~output_o\;

ww_O1_S30(13) <= \O1_S30[13]~output_o\;

ww_O1_S30(14) <= \O1_S30[14]~output_o\;

ww_O1_S30(15) <= \O1_S30[15]~output_o\;

ww_O2_S30(0) <= \O2_S30[0]~output_o\;

ww_O2_S30(1) <= \O2_S30[1]~output_o\;

ww_O2_S30(2) <= \O2_S30[2]~output_o\;

ww_O2_S30(3) <= \O2_S30[3]~output_o\;

ww_O2_S30(4) <= \O2_S30[4]~output_o\;

ww_O2_S30(5) <= \O2_S30[5]~output_o\;

ww_O2_S30(6) <= \O2_S30[6]~output_o\;

ww_O2_S30(7) <= \O2_S30[7]~output_o\;

ww_O2_S30(8) <= \O2_S30[8]~output_o\;

ww_O2_S30(9) <= \O2_S30[9]~output_o\;

ww_O2_S30(10) <= \O2_S30[10]~output_o\;

ww_O2_S30(11) <= \O2_S30[11]~output_o\;

ww_O2_S30(12) <= \O2_S30[12]~output_o\;

ww_O2_S30(13) <= \O2_S30[13]~output_o\;

ww_O2_S30(14) <= \O2_S30[14]~output_o\;

ww_O2_S30(15) <= \O2_S30[15]~output_o\;
END structure;


