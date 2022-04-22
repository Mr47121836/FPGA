library verilog;
use verilog.vl_types.all;
entity dds is
    generic(
        sin_wave        : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        squ_wave        : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        tri_wave        : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        saw_wave        : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        PHASE_CTRL      : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        wave_select     : in     vl_logic_vector(1 downto 0);
        FREQ_CTRL       : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of sin_wave : constant is 1;
    attribute mti_svvh_generic_type of squ_wave : constant is 1;
    attribute mti_svvh_generic_type of tri_wave : constant is 1;
    attribute mti_svvh_generic_type of saw_wave : constant is 1;
    attribute mti_svvh_generic_type of PHASE_CTRL : constant is 1;
end dds;
