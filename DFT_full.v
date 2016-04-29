//Large wrapper for Project 5

module DFT_full(data_in,data_out,clk,reset);

//Ports
input clk,reset;	//Clock input
input [44:0] data_in;//Inputs for the tap controller and circuit
output [38:0] data_out;//Response

//Wires
wire clk,reset;
wire [44:0] data_in;
wire [38:0] data_out;

//Internal Variables

//Instatiate Modules
Boundary boundary(.Din(), .TDI(), .ShiftBR(), .UpdateBR(), .ClockBR(clk), .ModeCont(), .TDO(data_out), .Dout(), .Reset(reset));
TAPcomplete tap(.tdi(data_in),.tdo(),.tms(data_in[0]),.tck(clk),.trst(reset));
IR ir(.datain(),.shift(),.update(),.dataout(),.decode());
lfsr bist(.clk(clk),.rnd(),.reset());
mux41 drmux(.select(),.options(),.choice());
scanff scan(.CK(clk), .SD(), .SI(), .SE(), .Q());
Bypass bypass(.Din(), .TDI(), .ShiftBY(), .ClockBY(), .Reset(reset), .TDO());

//Code Starts Here

endmodule//End of DFT Module

//Add in boundary scan inputs or outputs