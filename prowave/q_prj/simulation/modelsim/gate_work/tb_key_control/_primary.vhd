library verilog;
use verilog.vl_types.all;
entity tb_key_control is
    generic(
        CNT_1MS         : vl_logic_vector(0 to 19) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        CNT_11MS        : vl_logic_vector(0 to 20) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        CNT_41MS        : vl_logic_vector(0 to 21) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        CNT_51MS        : vl_logic_vector(0 to 21) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        CNT_60MS        : vl_logic_vector(0 to 21) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CNT_1MS : constant is 1;
    attribute mti_svvh_generic_type of CNT_11MS : constant is 1;
    attribute mti_svvh_generic_type of CNT_41MS : constant is 1;
    attribute mti_svvh_generic_type of CNT_51MS : constant is 1;
    attribute mti_svvh_generic_type of CNT_60MS : constant is 1;
end tb_key_control;
