library verilog;
use verilog.vl_types.all;
entity ShiftLight_vlg_check_tst is
    port(
        Bit1            : in     vl_logic;
        Bit2            : in     vl_logic;
        Bit3            : in     vl_logic;
        Bit4            : in     vl_logic;
        LEDlight        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ShiftLight_vlg_check_tst;
