library verilog;
use verilog.vl_types.all;
entity dds is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        wave_select     : in     vl_logic_vector(1 downto 0);
        FREQ_CTRL       : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end dds;
