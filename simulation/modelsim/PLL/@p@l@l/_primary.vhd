library verilog;
use verilog.vl_types.all;
entity PLL is
    port(
        clk_in_clk      : in     vl_logic;
        reset_reset     : in     vl_logic;
        clk_out_clk     : out    vl_logic
    );
end PLL;
