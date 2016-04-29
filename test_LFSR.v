//Random test pattern generator 

module test_LFSR;

wire [8:0] rnd;
reg reset,clk;

lfsr DUT(.clk(clk),.rnd(rnd),.reset(reset));

initial begin
	$timeformat(-9,1," ns",6);
	clk = 1'b1;
	forever
		#50 clk = ~clk;
end

initial begin
	reset = 1'b1;
	#200;
	reset = 1'b0;
	#200;
	reset = 1'b1;
	#200;
	reset = 1'b0;
end
always @(reset or clk)
	#1 $monitor("t=%t",$time," Clock=%b", clk, "Reset=%b",reset, " Random=%b",rnd);
endmodule