library verilog;
use verilog.vl_types.all;
entity view_vlg_sample_tst is
    port(
        key             : in     vl_logic_vector(1 downto 0);
        key_add         : in     vl_logic;
        key_sub         : in     vl_logic;
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end view_vlg_sample_tst;
