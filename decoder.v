//2 to 4 decoder
module decoder_2to4(Y3, Y2, Y1, Y0, A, B, en);
	input  A, B, en; 
	output Y3, Y2, Y1, Y0;
	
	assign Y0 = (~A) & (~B) & en;//001//1000
	assign Y1 = (~A) & (B) & en; //011//0100
	assign Y2 = (A) & (~B) & en;//101//0010
	assign Y3 = (A) & (B) & en;//111//0001	
	//110//0000
	//Y0-Internal Scan
	//Y1-Boundary Scan
	//Y2-BIST
	//Y3-Nothing
endmodule