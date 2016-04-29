//Instruction Register
`include "primitives.v"

module IR(datain,shift,update,dataout,decode,reset);

input datain,shift,update,reset;
output [1:0] decode;
output dataout;

//Shift Registers
dff_r dff_0(ff0,shift,reset,datain);
dff_r dff_1(dataout,shift,reset,ff0);

//Update Registers
dff_r dff_2(decode[0],update,reset,ff0);
dff_r dff_3(decode[1],update,reset,dataout);

endmodule