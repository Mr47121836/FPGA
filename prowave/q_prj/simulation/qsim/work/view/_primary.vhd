library verilog;
use verilog.vl_types.all;
entity view is
    port(
        data_out        : out    vl_logic_vector(7 downto 0);
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key_add         : in     vl_logic;
        key_sub         : in     vl_logic;
        key             : in     vl_logic_vector(1 downto 0)
    );
end view;
