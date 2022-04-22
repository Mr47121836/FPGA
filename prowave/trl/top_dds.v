`timescale  1ns/1ns
module  top_dds
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

//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//
//wire  define
wire    [1:0]   wave_select ;   //波形选择

//dac_clka:DAC模块时钟
assign  dac_clk  = ~sys_clk;

//********************************************************************//
//*************************** Instantiation **************************//
//********************************************************************//
//-------------------------- dds_inst -----------------------------
dds     dds_inst
(
    .sys_clk        (sys_clk    ),   //系统时钟,50MHz
    .sys_rst_n      (sys_rst_n  ),   //复位信号,低电平有效
    .wave_select    (wave_select),   //输出波形选择
    .FREQ_CTRL1      (FREQ_CTRL ),   //频率字送入
    .data_out       (dac_data   )    //波形输出
);

//----------------------- key_control_inst ------------------------
key_ctl key_trl_inst
(
    .sys_clk        (sys_clk    ),   //系统时钟,50MHz
    .sys_rst_n      (sys_rst_n  ),   //复位信号,低电平有效
    .key            (key        ),   //输入4位按键
    .wave_select    (wave_select)    //输出波形选择
 );


seg_led seg_led_insit( 
  
      .sys_clk(sys_clk),       // 全局时钟信号
      .sys_rst_n(sys_rst_n),       // 复位信号（低有效）
      .FREQ_CTRL(FREQ_CTRL),       //频率字输入
      .seg_sel(seg_sel),       // 数码管位选信号
      .seg_led(seg_led)          // 数码管段选信号
    
);
 
 f_word_set  f_word_set_insit(
.sys_clk(sys_clk),
.sys_rst_n(sys_rst_n),
. key_add(key_add),//按键部分传过来的加法信号
 .key_sub( key_sub),//按键部分传过来的加法信号
.FREQ_CTRL(FREQ_CTRL)  //输出确定的频率值	
	);
endmodule
