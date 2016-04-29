//Large wrapper for Project 5
//Datain versus TDI
module DFT_full(data_in,data_out,clk,reset);
//Ports
input clk,reset;	//Clock input
input [37:0] data_in;//Inputs for the tap controller and circuit
//TDI,TMS
output [38:0] data_out;//Response

//Wires
wire clk,reset;
wire [44:0] data_in;
wire [3:0] tap_out;
wire [38:0] data_out;

//Internal Variables
wire shiftir,updateir;
wire shiftdr,updatedr;
wire tapselect;//idk what this does yet
wire [1:0] decoder;//2 bits for choosing dr
wire [246:0] toCUT;
wire [38:0] combresponse;
wire [3:0] drselect;//4 bits output for options of dr to select

//Instatiate Modules
Boundary boundary(.Din(data_in[2:37]), .TDI(), .ShiftBR(shiftdr), .UpdateBR(updatedr), .ClockBR(clk), .ModeCont(), .TDO(), .Dout(), .Reset(reset));
TAPcomplete tap(.tdi(data_in[0]),.tdo(tap_out),.tms(data_in[1]),.tck(clk),.trst(reset));
IR ir(.datain(data_in[0:1]),.shift(shiftir),.update(updateir),.dataout(),.decode(decoder));
lfsr bist(.clk(clk),.rnd(toCUT),.reset(reset));
mux41 drmux(.select(decoder),.options(drselect),.choice());
scanff scan(.CK(clk), .SD(data_in), .SI(combresponse), .SE(drselect[0]), .Q());
Bypass bypass(.Din(data_in[2:37]), .TDI(toCUT), .ShiftBY(drselect[3]), .ClockBY(clk), .Reset(reset), .TDO());
decoder_2to4 decode(.Y3(drselect[3]), .Y2(drselect[2]), .Y1(drselect[1]), .Y0(drselect[0]), .A(decoder[0]), .B(decoder[1]), .en());
s9234_comb CUT(.CK(clk),g89,g94,g98,g102,g107,g301,g306,g310,g314,g319,g557,g558,g559,g560,g561,
  g562,g563,g564,g705,g639,g567,g45,g42,g39,g702,g32,g38,g46,g36,g47,g40,g37,
  g41,g22,g44,g23,g678,g332,g123,g207,g695,g461,g18, g292,g331,g689,g24,g465,g84,g291,g676,g622,g117,g278,g128,
  g598,g554,g496,g179,g48,g590,g551,g682,g11,g606,g188,g646,g327,g361,g289,g398,g684,g619,g208,g248,g390,g625,
  g681,g437,g276,g3,g323,g224,g685,g43,g157,g282,g697,g206,g449,g118,g528,g284,g426,g634,g669,g520,g281,g175,g15,
  g631,g69,g693,g337,g457,g486,g471,g328,g285,g418,g402,g297,g212,g410,g430,g33,g662,g453,g269,g574,g441,g664,
  g349,g211,g586,g571,g29,g326,g698,g654,g293,g690,g445,g374,g6,g687,g357,g386,g504,g665,g166,g541,g74,g338,g696,
  g516,g536,g683,g353,g545,g254,g341,g290,g2,g287,g336,g345,g628,g679,g28,g688,g283,g613,g10,g14,g680,g143,g672,
  g667,g366,g279,g492,g170,g686,g288,g638,g602,g642,g280,g663,g610,g148,g209,g675,g478,g122,g54,g594,g286,g616,g79,
  g218,g242,g578,g184,g119,g668,g139,g422,g210,g394,g230,g25,g204,g658,g650,g378,g508,g548,g370,g406,g236,g500,g205,
  g197,g666,g114,g524,g260,g111,g131,g7,g19,g677,g582,g485,g699,g193,g135,g382,g414,g434,g266,g49,g152,g692,g277,
  g127,g161,g512,g532,g64,g694,g691,g1,g59,g2584,g3222,g3600,g4307,g4321,g4422,g4809,g5137,g5468,g5469,g5692,g6282,
  g6284,g6360,g6362,g6364,g6366,g6368,g6370,g6372,g6374,g6728,g1290,g4121,
  g4108,g4106,g4103,g1293,g4099,g4102,g4109,g4100,g4112,g4105,g4101,g4110,g4104,g4107,g4098,g4130,g6823,g6940,g6102,
  g4147,g4841,g6725,g3232,g4119,g4141,g6726,g6507,g6590,g3231,g5330,g5147,g4839,g6105,g5138,g4122,g6827,g6745,g6405,
  g6729,g6595,g6826,g4134,g6599,g4857,g6406,g5148,g4117,g6582,g3229,g5700,g4136,g4858,g5876,g3239,g5698,g5328,g4133,
  g4847,g5877,g6597,g4120,g3235,g4137,g6407,g5470,g6841,g4149,g6101,g4844,g4113,g6504,g3224,g4855,g4424,g5582,g6502,
  g6107,g5472,g6602,g5581,g6587,g4145,g2585,g4842,g2586,g1291,g4118,g3225,g4853,g4849,g6512,
  g3233,g4851,g4856,g6854,g1831,g4843,g6510,g6591,g4846,g1288,g5478,g6840,g6594,g5580,g6853,g4840,g4150,g5490,g6511,
  g4142,g4845,g5694,g6722,g4139,g5480,g5697,g6498,g4126,g5471,g6505,g6588,g5475,g4148,g6501,g6506,g4135,g5476,g3230,
  g6721,g3227,g6925,g5477,g5489,g4131,g6727,g4140,g6842,g4423,g6723,g6724,  g4132,g6401,g5491,g4127,g6278,g6106,g6744,
  g6404,g4138,g3228,g1289,g4123,g4658,g5878,g4125,g4124,g5874,g6103,g1294,g1292,g4115,g6584,g6596,g3226,g2587,g4657,g6589,
  g3234,g3238,g6592,g5473,g4114,g6800,g5141,g4854,g6839,g5695,g6499,g6825,g5693,g4850,g3237,g6497,g6100,g6509,g4128,g4116,g6503,g3241,g489);
//Code Starts Here

endmodule//End of DFT Module

//Add in boundary scan inputs or outputs