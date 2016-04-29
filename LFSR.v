//Random Test Patterns
//9 bits, x^9 + x^4 + 1

module lfsr(clk,rnd,reset);

input clk,reset;
output [8:0] rnd;

rnd <= 9'b1;

if(reset) begin
	rnd <= 9'hF;
end

dff_r DFF_0(rnd[0],clk,reset,rnd[3]^rnd[8]);//dff_r
dff_r DFF_1(rnd[1],clk,reset,rnd[0]);
dff_r DFF_2(rnd[2],clk,reset,rnd[1]);
dff_r DFF_3(rnd[3],clk,reset,rnd[2]);
dff_r DFF_4(rnd[4],clk,reset,rnd[3]);
dff_r DFF_5(rnd[5],clk,reset,rnd[4]);
dff_r DFF_6(rnd[6],clk,reset,rnd[5]);
dff_r DFF_7(rnd[7],clk,reset,rnd[6]);
dff_r DFF_8(rnd[8],clk,reset,rnd[7]);

endmodule