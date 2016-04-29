//Random test pattern generator 

module test_LSFR;

wire rnd;
reg reset,clk;

lfsr DUT(.clk(clk),.rnd(rnd),.reset(reset));

initial begin
	$timeformat(-9,1," ns",6);
	#1;
	reset = 1'b0;
	clk = 1'b1;
	#10;
	reset = 1'b1;
	clk = 1'b0;
	#10;
	reset = 1'b0;
	clk = 1'b1;
	#10;
	reset = 1'b1;
	clk = 1'b1;
	#10;
end
always @(reset or clk)
	#1 $monitor("t=%t",$time," Clockk=%b", clk, "Reset=%b",reset, " Random=%b",rnd);
endmodule