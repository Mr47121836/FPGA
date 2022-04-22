library verilog;
use verilog.vl_types.all;
entity rom_wave is
    port(
        address         : in     vl_logic_vector(13 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end rom_wave;
