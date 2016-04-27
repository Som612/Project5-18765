module Boundary(Din, TDI, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO, Dout, Reset);

    input CK,g89,g94,g98,g102,g107,g301,g306,g310,g314,g319,g557,g558,g559,g560,g561,
    g562,g563,g564,g705,g639,g567,g45,g42,g39,g702,g32,g38,g46,g36,g47,g40,g37,
    g41,g22,g44,g23, Din, TDI, ShiftBR, UpdateBR, ClockBR, Reset,ModeCont;

    output g2584,g3222,g3600,g4307,g4321,g4422,g4809,g5137,g5468,g5469,g5692,g6282,
    g6284,g6360,g6362,g6364,g6366,g6368,g6370,g6372,g6374,g6728,g1290,g4121,
    g4108,g4106,g4103,g1293,g4099,g4102,g4109,g4100,g4112,g4105,g4101,g4110,
    g4104,g4107,g4098,TDO, Dout; 

    wire g89_in,g94_in,g98_in,g102_in,g107_in,g301_in,g306_in,g310_in,g314_in,g319_in,
    g557_in,g558_in,g559_in,g560_in,g561_in,g562_in,g563_in,g564_in,g705_in,g639_in,g567_in,
    g45_in,g42_in,g39_in,g702_in,g32_in,g38_in,g46_in,g36_in,g47_in,g40_in,g37_in,
    g41_in,g22_in,g44_in,g23_in,g89_out,g94_out,g98_out,g102_out,g107_out,g301_out,g306_out,
    g310_out,g314_out,g319_out,g557_out,g558_out,g559_out,g560_out,g561_out,g562_out,g563_out,
    g564_out,g705_out,g639_out,g567_out,g45_out,g42_out,g39_out,g702_out,g32_out,g38_out,g46_out,
    g36_out,g47_out,g40_out,g37_out,g41_out,g22_out,g44_out,g23_out;

    wire g2584_in,g3222_in,g3600_in,g4307_in,g4321_in,g4422_in,g4809_in,g5137_in,g5468_in,
    g5469_in,g5692_in,g6282_in,g6284_in,g6360_in,g6362_in,g6364_in,g6366_in,g6368_in,g6370_in,
    g6372_in,g6374_in,g6728_in,g1290_in,g4121_in,g4108_in,g4106_in,g4103_in,g1293_in,g4099_in,
    g4102_in,g4109_in,g4100_in,g4112_in,g4105_in,g4101_in,g4110_in,g4104_in,g4107_in,g4098_in,
    g2584_out,g3222_out,g3600_out,g4307_out,g4321_out,g4422_out,g4809_out,g5137_out,g5468_out,
    g5469_out,g5692_out,g6282_out,g6284_out,g6360_out,g6362_out,g6364_out,g6366_out,g6368_out,
    g6370_out,g6372_out,g6374_out,g6728_out,g1290_out,g4121_out,g4108_out,g4106_out,g4103_out,
    g1293_out,g4099_out,g4102_out,g4109_out,g4100_out,g4112_out,g4105_out,g4101_out,g4110_out,
    g4104_out,g4107_out,g4098_out;


    wire TDO_89, TDO_94, TDO_98, TDO_102, TDO_107, TDO_301, TDO_306, TDO_310, TDO_314, TDO_319, TDO_557,
    TDO_558, TDO_559, TDO_560, TDO_561, TDO_562, TDO_563, TDO_564, TDO_705, TDO_639, TDO_567, TDO_45,
    TDO_42, TDO_39, TDO_702, TDO_32, TDO_38, TDO_46, TDO_36, TDO_47, TDO_40, TDO_37, TDO_41, TDO_22, 
    TDO_44, TDO_44, TDO_23, TDO_2584, TDO_3222, TDO_3600, TDO_4307, TDO_4321, TDO_4422, TDO_4809, TDO_5137,
    TDO_5468, TDO_5469, TDO_5692, TDO_6282, TDO_6284, TDO_6360, TDO_6362, TDO_6364, TDO_6366, TDO_6368, 
    TDO_6370, TDO_6372, TDO_6374, TDO_6728, TDO_1290, TDO_4121, TDO_4108, TDO_4106, TDO_4103, TDO_1293, 
    TDO_4099, TDO_4102, TDO_4109, TDO_4100, TDO_4112, TDO_4105, TDO_4101, TDO_4110, TDO_4104, TDO_4107;

    BC1 BC_1(g89_in, TDI, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_89, g89_out, Reset); 
    BC1 BC_2(g94_in, TDO_89, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_94, g94_out, Reset);
    BC1 BC_3(g98_in, TDO_94, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_98, g98_out, Reset);
    BC1 BC_4(g102_in, TDO_98, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_102, g102_out, Reset); 
    BC1 BC_5(g107_in, TDO_102, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_107, g107_out, Reset);
    BC1 BC_6(g301_in, TDO_107, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_301, g301_out, Reset);
    BC1 BC_7(g306_in, TDO_301, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_306, g306_out, Reset);
    BC1 BC_8(g310_in, TDO_306, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_310, g310_out, Reset);
    BC1 BC_9(g314_in, TDO_310, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_314, g314_out, Reset);
    BC1 BC_10(g319_in, TDO_314, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_319, g319_out, Reset);
    BC1 BC_11(g557_in, TDO_319, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_557, g557_out, Reset);
    BC1 BC_12(g558_in, TDO_557, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_558, g558_out, Reset);
    BC1 BC_13(g559_in, TDO_558, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_559, g559_out, Reset);
    BC1 BC_14(g560_in, TDO_559, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_560, g560_out, Reset);
    BC1 BC_15(g561_in, TDO_560, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_561, g561_out, Reset);
    BC1 BC_16(g562_in, TDO_561, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_562, g562_out, Reset);
    BC1 BC_17(g563_in, TDO_562, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_563, g563_out, Reset);
    BC1 BC_18(g564_in, TDO_563, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_564, g564_out, Reset);
    BC1 BC_19(g705_in, TDO_564, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_705, g705_out, Reset);
    BC1 BC_20(g639_in, TDO_705, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_639, g639_out, Reset);
    BC1 BC_21(g567_in, TDO_639, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_567, g639_out, Reset);
    BC1 BC_22(g45_in, TDO_567, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_45, g45_out, Reset);
    BC1 BC_23(g42_in, TDO_45, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_42, g42_out, Reset);
    BC1 BC_24(g39_in, TDO_42, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_39, g39_out, Reset);
    BC1 BC_25(g702_in, TDO_39, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_702, g702_out, Reset);
    BC1 BC_26(g32_in, TDO_702, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_32, g32_out, Reset);
    BC1 BC_27(g38_in, TDO_32, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_38, g38_out, Reset);
    BC1 BC_28(g46_in, TDO_38, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_46, g46_out, Reset);
    BC1 BC_29(g36_in, TDO_46, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_36, g563_out, Reset);
    BC1 BC_30(g47_in, TDO_36, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_47, g47_out, Reset);
    BC1 BC_31(g40_in, TDO_47, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_40, g40_out, Reset);
    BC1 BC_32(g37_in, TDO_40, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_37, g37_out, Reset);
    BC1 BC_33(g41_in, TDO_37, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_41, g41_out, Reset);
    BC1 BC_34(g22_in, TDO_41, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_22, g22_out, Reset);
    BC1 BC_35(g44_in, TDO_22, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_44, g44_out, Reset);
    BC1 BC_36(g23_in, TDO_44, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_23, g23_out, Reset);
    BC1 BC_37(g2584_in, TDO_23, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_2584, g2584_out, Reset);
    BC1 BC_38(g3222_in, TDO_2584, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_3222, g2584_out, Reset);
    BC1 BC_39(g3600_in, TDO_3222, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_3600, g3600_out, Reset);
    BC1 BC_40(g4307_in, TDO_3600, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4307, g4307_out, Reset);
    BC1 BC_41(g4321_in, TDO_4307, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4321, g4321_out, Reset);
    BC1 BC_42(g4422_in, TDO_4321, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4422, g4422_out, Reset);
    BC1 BC_43(g4809_in, TDO_4422, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4809, g4809_out, Reset);
    BC1 BC_44(g5137_in, TDO_4809, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_5137, g5137_out, Reset);
    BC1 BC_45(g5468_in, TDO_5137, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_5468, g5468_out, Reset);
    BC1 BC_46(g5469_in, TDO_5468, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_5469, g5469_out, Reset);
    BC1 BC_47(g5692_in, TDO_5469, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_5692, g5692_out, Reset);
    BC1 BC_48(g6282_in, TDO_5692, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6282, g6282_out, Reset);
    BC1 BC_49(g6284_in, TDO_6282, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6284, g6284_out, Reset);
    BC1 BC_50(g6360_in, TDO_6284, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6360, g6360_out, Reset);
    BC1 BC_51(g6362_in, TDO_6360, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6362, g6362_out, Reset);
    BC1 BC_52(g6364_in, TDO_6362, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6364, g6364_out, Reset);
    BC1 BC_53(g6366_in, TDO_6364, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6366, g6366_out, Reset);
    BC1 BC_54(g6368_in, TDO_6366, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6368, g6368_out, Reset);
    BC1 BC_55(g6370_in, TDO_6368, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6370, g6370_out, Reset);
    BC1 BC_56(g6372_in, TDO_6370, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6372, g6372_out, Reset);
    BC1 BC_57(g6374_in, TDO_6372, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6374, g6374_out, Reset);
    BC1 BC_58(g6728_in, TDO_6374, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_6728, g6728_out, Reset);
    BC1 BC_59(g1290_in, TDO_6728, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_1290, g1290_out, Reset);
    BC1 BC_60(g4121_in, TDO_1290, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4121, g4121_out, Reset);
    BC1 BC_61(g4108_in, TDO_4121, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4108, g4108_out, Reset);
    BC1 BC_62(g4106_in, TDO_4108, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4106, g4106_out, Reset);
    BC1 BC_63(g4103_in, TDO_4106, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4103, g4103_out, Reset);
    BC1 BC_64(g1293_in, TDO_4103, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_1293, g1293_out, Reset);
    BC1 BC_65(g4099_in, TDO_1293, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4099, g4099_out, Reset);
    BC1 BC_66(g4102_in, TDO_4099, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4102, g4102_out, Reset);
    BC1 BC_67(g4109_in, TDO_4102, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4109, g4109_out, Reset);
    BC1 BC_68(g4100_in, TDO_4109, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4100, g4100_out, Reset);
    BC1 BC_69(g4112_in, TDO_4100, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4112, g4112_out, Reset);
    BC1 BC_70(g4105_in, TDO_4112, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4105, g4105_out, Reset);
    BC1 BC_71(g4101_in, TDO_4105, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4101, g4101_out, Reset);
    BC1 BC_72(g4110_in, TDO_4101, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4110, g4110_out, Reset);
    BC1 BC_73(g4104_in, TDO_4110, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4104, g4104_out, Reset);
    BC1 BC_74(g4107_in, TDO_4104, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4107, g4107_out, Reset);
    BC1 BC_75(g4098_in, TDO_4107, ShiftBR, UpdateBR, ClockBR, ModeCont, TDO_4098, g4098_out, Reset);

endmodule

    































    












 








































