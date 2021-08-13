library verilog;
use verilog.vl_types.all;
entity ShiftLight is
    port(
        LEDlight        : out    vl_logic;
        RPM1stBit       : in     vl_logic;
        RPM2ndBit       : in     vl_logic;
        RPM3rdBit       : in     vl_logic;
        RPM4thBit       : in     vl_logic;
        RPMsetter       : in     vl_logic;
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Bit1            : out    vl_logic;
        Bit2            : out    vl_logic;
        Bit3            : out    vl_logic;
        Bit4            : out    vl_logic
    );
end ShiftLight;
