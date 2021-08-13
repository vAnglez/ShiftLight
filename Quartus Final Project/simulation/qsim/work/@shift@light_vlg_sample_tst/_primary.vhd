library verilog;
use verilog.vl_types.all;
entity ShiftLight_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        RPM1stBit       : in     vl_logic;
        RPM2ndBit       : in     vl_logic;
        RPM3rdBit       : in     vl_logic;
        RPM4thBit       : in     vl_logic;
        RPMsetter       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ShiftLight_vlg_sample_tst;
