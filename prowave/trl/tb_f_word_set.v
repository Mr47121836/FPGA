`timescale  1ns/1ns

module  tb_f_word_set();
reg           sys_clk;
reg           sys_rst_n;
reg           key_add;
reg           key_sub; 

initial
     begin
	sys_clk=1'b1;
	sys_rst_n <=1'b0;
	#10000;
	key_add<=1'b1;
	#50;

end
always#10 sys_clk=~sys_clk;



f_word_set  f_word_set_inst(
	.sys_clk    (),
	.sys_rst_n (),
	.key_add   (),
 	.key_sub    (),
	.FREQ_CTRL ()  	
	);

endmodule