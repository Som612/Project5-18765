module TAPcomplete(tdi,tdo,tms,tck,trst);

input wire tdi,tms,tck,trst;
output wire tdo;

tapcontroller tapcontrol(.TCK(tck), .TRST(trst), .TMS(tms), .clockdr(), .shiftdr(), .updatedr(), .clockir(),
		     .shiftir(), .updateir(), .select(), .bs_en());

endmodule