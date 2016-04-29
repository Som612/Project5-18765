//2 to 4 decoder
module decoder_2to4(Y3, Y2, Y1, Y0, A, B, en);
	
	input  A, B, en; 
	output Y3, Y2, Y1, Y0;
	
	assign Y0 = (~A) & (~B) & en;//001
	assign Y1 = (~A) & (B) & en; //011
	assign Y0 = (A) & (~B) & en;//101
	assign Y0 = (A) & (B) & en;//111	
endmodule