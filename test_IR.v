module test_IR;

wire dataout,decode;
reg datain,shift,update;

IR DUT(datain,shift,update,dataout,decode);

initial begin
	$timeformat(-9,1," ns",6);
	#1;
	datain = 1'b1;
	shift = 1'b0;
	update = 1'b1;
	#10;
	datain = 1'b1;
	shift = 1'b1;
	update = 1'b0;
	#10;
	datain = 1'b0;
	shift = 1'b0;
	update = 1'b1;
	#10;
	datain = 1'b0;
	shift = 1'b1;
	update = 1'b0;
	#10;
end
always @(datain or shift or update)
	#1 $monitor("t=%t",$time," datain=%b",datain, "shift=%b",shift," update=%b",update);
endmodule