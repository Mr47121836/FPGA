// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Full Version"
// CREATED		"Sat Jul 24 12:50:21 2021"

module view(
	sys_clk,
	sys_rst_n,
	key_add,
	key_sub,
	key,
	dac_data,
	seg_led,
	seg_sel
);


input wire	sys_clk;
input wire	sys_rst_n;
input wire	key_add;
input wire	key_sub;
input wire	[1:0] key;
output wire	[7:0] dac_data;
output wire	[7:0] seg_led;
output wire	[5:0] seg_sel;

wire	[31:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_1;





f_word_set	b2v_inst(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.key_add(key_add),
	.key_sub(key_sub),
	.FREQ_CTRL(SYNTHESIZED_WIRE_3));


key_ctl	b2v_inst1(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.key(key),
	.wave_select(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.CNT_MAX = 20'b11110100001000111111;
	defparam	b2v_inst1.saw_wave = 2'b00;
	defparam	b2v_inst1.sin_wave = 2'b11;
	defparam	b2v_inst1.squ_wave = 2'b10;
	defparam	b2v_inst1.tri_wave = 2'b01;


dds	b2v_inst2(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.FREQ_CTRL(SYNTHESIZED_WIRE_3),
	.wave_select(SYNTHESIZED_WIRE_1),
	.data_out(dac_data));
	defparam	b2v_inst2.PHASE_CTRL = 12'b010000000000;
	defparam	b2v_inst2.saw_wave = 2'b00;
	defparam	b2v_inst2.sin_wave = 2'b11;
	defparam	b2v_inst2.squ_wave = 2'b10;
	defparam	b2v_inst2.tri_wave = 2'b01;


seg_led	b2v_inst4(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.FREQ_CTRL(SYNTHESIZED_WIRE_3),
	.seg_led(seg_led),
	.seg_sel(seg_sel));
	defparam	b2v_inst4.en = 1'b1;
	defparam	b2v_inst4.point = 6'b000000;
	defparam	b2v_inst4.sign = 1'b0;


endmodule
