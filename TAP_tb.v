module TAP_tb();
    reg TCK_tb, TRST_tb, TMS_tb;
    wire clockdr_tb, shiftdr_tb, updatedr_tb, clockir_tb,shiftir_tb,updateir_tb,select_tb, bs_entb;

    tapcontroller tb(.TCK(TCK_tb), 
                     .TRST(TRST_tb), 
                     .TMS(TMS_tb), 
                     .clockdr(clockdr_tb), 
                     .shiftdr(shiftdr_tb), 
                     .updatedr(updatedr_tb), 
                     .clockir(clockir_tb), 
                     .updateir(updateir_tb), 
                     .select(select_tb), 
                     .bs_en(bs_entb));

    intial
    begin:CLOCK_GEN
    $shm_open('waves.shm') $shm_probe("AS");
    TCK_tb = 0;
    forever
        begin
            #5 TCK_tb = ~ TCK_tb;
        end
     end

    initial begin
	TRST = 0;
	#5;
	TRST = 1;
	#10;
        TMS = 1;
	#10;
	TMS = 0;
    end	
endmodule

	


