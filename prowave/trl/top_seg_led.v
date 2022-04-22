module top_seg_led(
    //global clock
    input            sys_clk  ,       // 全局时钟信号
    input            sys_rst_n,       // 复位信号（低有效）
    input     [31:0]  FREQ_CTRL,
    output    [5:0]  seg_sel  ,       // 数码管位选信号
    output    [7:0]  seg_led          // 数码管段选信号
    
);

//wire define
           // 数码管显示的数值
wire    [ 5:0]  point;                // 数码管小数点的位置
wire            en;                   // 数码管显示使能信号
wire            sign;                 // 数码管显示数据的符号位



//*****************************************************
//**                    main code
//*****************************************************

//数码管动态显示模块
seg_led u_seg_led(
    .sys_clk           (sys_clk  ),       // 时钟信号
    .sys_rst_n         (sys_rst_n),       // 复位信号
    .FREQ_CTRL     (FREQ_CTRL ),       // 显示的数值
    .seg_sel       (seg_sel  ),       // 位选
    .seg_led       (seg_led  )        // 段选
);

endmodule