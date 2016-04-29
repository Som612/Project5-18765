//Instruction Register
`include "primitives.v"

module IR(datain,shift,update,dataout,decode);

input datain,shift,update;
output [1:0] decode;
output dataout;

//Shift Registers
dff dff_0(ff0,shift,datain);
dff dff_1(dataout,shift,ff0);

//Update Registers
dff dff_2(decode[0],update,ff0);
dff dff_3(decode[1],update,dataout);

endmodule