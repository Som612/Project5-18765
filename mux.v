//4 to 1 MUX

module mux41(select,options,choice);

input [1:0] select;
input [3:0] options;
output      choice;

wire choice;
wire[1:0] select;
wire [3:0] options;

assign choice = options[select];

endmodule