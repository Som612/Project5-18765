module Bypass(Din, TDI, ShiftBY, ClockBY, Reset, TDO);
    
    input Din, TDI;
    input ShiftBY, ClockBY,Reset;
    output TDO;

    wire DFF_R;

    assign DFF_R = ShiftBY ? TDI:Din;

endmodule
