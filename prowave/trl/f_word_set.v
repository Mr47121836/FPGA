module f_word_set(
	input				sys_clk	,
	input				sys_rst_n,
	input			    key_add,//按键部分传过来的加法信号
 	input 			    key_sub,//按键部分传过来的加法信号
    output  reg        [31:0] cn,  
	output	reg	  [31:0]FREQ_CTRL  //输出确定的频率值	
	);
	wire            key2   ;   //按键2
    wire            key3   ;   //按键3

reg     [31:0]  fre     ;   //相位累加器
//reg     [31:0]   cn ;                   // 按下的个数
//reg define
            //对两个按键进行消抖
         key_filter fword_key_add(
			.sys_clk       (sys_clk),
			.sys_rst_n     (sys_rst_n),
			.key_in    (key_add),
			.key_flag  (key2)// 
			
		);
            key_filter fword_key_sub(
			.sys_clk       (sys_clk),
			.sys_rst_n     (sys_rst_n),
			.key_in    (key_sub),
			.key_flag  (key3)
            
		);
	always @(posedge sys_clk or negedge sys_rst_n) begin
		if (!sys_rst_n) begin
            FREQ_CTRL<= 32'd85899; //直接拉低电平赋值 生成1Hz的波形
            cn=32'd1;
		end 
        else if(key2)begin
        //每次加500FREQ_CTRL=FREQ_CTRL+32'd42949;//
        FREQ_CTRL=FREQ_CTRL+32'd8589934;//
        cn=cn+32'd100;
        end
        else if(key3)begin
     //   FREQ_CTRL=FREQ_CTRL-32'd42949;//
        FREQ_CTRL=FREQ_CTRL-32'd8589934;
        cn=cn-32'd100;
        end
        else if(cn<=0)begin
        cn=0;
        FREQ_CTRL=32'd8589934;
        end
        else
        FREQ_CTRL=FREQ_CTRL;
        cn=cn;
  end

endmodule