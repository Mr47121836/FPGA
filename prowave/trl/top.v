module   top
(
    input   wire            sys_clk     ,   //系统时钟,50MHz
    input   wire            sys_rst_n   ,   //复位信号,低电平有效
    input   wire            [1:0]key    , //输入2位按键选择波形
    input   wire	        key_add,       //频率加
    input   wire            key_sub,        //频率减

    output  wire            dac_clk,   //输入DAC模块时钟
    
    output   wire        [5:0]seg_sel,
    output   wire        [7:0]seg_led, 
    output  wire         [7:0]dac_data        //输入DAC模块波形数据
);  




top_dds top_dds_inst
(
        .sys_clk(sys_clk)     ,   //系统时钟,50MHz
       .sys_rst_n(sys_rst_n)   ,   //复位信号,低电平有效
.key (key )   , //输入2位按键选择波形
	        .key_add(key_add),       //频率加
      . key_sub(key_sub),        //频率减

       .dac_clk(dac_clk),   //输入DAC模块时钟
    
  .seg_sel(seg_sel),
.seg_led(seg_led), 
   .dac_data (dac_data )       //输入DAC模块波形数据
);         

f_word_set  f_word_set_insit(
.sys_clk(sys_clk),
.sys_rst_n(sys_rst_n),
. key_add(key_add),//按键部分传过来的加法信号
 .key_sub( key_sub),//按键部分传过来的加法信号

.FREQ_CTRL(FREQ_CTRL)  //输出确定的频率值	
	);


endmodule