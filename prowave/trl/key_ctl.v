`timescale  1ns/1ns
/////////////////////////////////////////////////////////////////////////
// Author        : EmbedFire
// Create Date   : 2019/07/10
// Module Name   : key_control
// Project Name  : top_dds
// Target Devices: Altera EP4CE10F17C8N
// Tool Versions : Quartus 13.0
// Description   : 按键控制模块,控制波形选择
// 
// Revision      : V1.0
// Additional Comments:
// 
// 实验平台: 野火_征途Pro_FPGA开发板
// 公司    : http://www.embedfire.com
// 论坛    : http://www.firebbs.cn
// 淘宝    : https://fire-stm32.taobao.com
////////////////////////////////////////////////////////////////////////

module  key_ctl
(
    input   wire            sys_clk     ,   //系统时钟,50MHz
    input   wire            sys_rst_n   ,   //复位信号,低电平有效
    input   wire    [1:0]   key         ,   //输入4位按键
    output  reg     [1:0]   wave_select     //输出波形选择
);
//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//
//parameter define
parameter   sin_wave    =   2'b11,    //正弦波
            squ_wave    =   2'b10,    //方波
            tri_wave    =   2'b01,    //三角波
            saw_wave    =   2'b00;    //锯齿波

parameter   CNT_MAX =   20'd999_999;    //计数器计数最大值

//wire  define

wire            key1    ;   //按键1
wire            key0    ;   //按键0

//********************************************************************//
//***************************** Main Code ****************************//
//********************************************************************//
//wave:按键状态对应波形
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)begin
        wave_select   <=  2'b11;
        end
    else   begin
        case(key)
        2'b11:wave_select   <=  sin_wave;
        2'b10:wave_select   <=  squ_wave;
        2'b01:wave_select   <=  tri_wave;
        2'b10:wave_select   <=  saw_wave;
        default:wave_select   <=  wave_select;
        endcase
 end

//********************************************************************//
//*************************** Instantiation **************************//
//********************************************************************//
//------------- key_fifter_inst3 --------------


//------------- key_fifter_inst1 --------------

endmodule
