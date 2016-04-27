module BC1(Din, TDI, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO, Dout, Reset);

    input Din, TDI, ShiftBR, UpdateBR;
    input ClockBR, ModeCont, Reset;
    output Dout, TDO;
    wire D_DF1, mux_out, D_Q1, D_Q2;

    u_mux2 Mux1(mux_out, Din, TDI, ShiftBR);

    dff_r D1(D_Q1, ClockBR, mux_out);
    dff_r D2(D_Q2, ClockBR, D_Q1);

    u_mux2 Mux2(Dout, Din, D_Q2, ModeCont);
    
endmodule    
    


