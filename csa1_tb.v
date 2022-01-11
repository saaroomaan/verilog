`resetall

module csa1_tb;
	reg [3:0]a,b;
	reg cin;
	wire cout;
	wire [3:0]sum;

	csa1 c1(cout,sum,cin,a,b);
	
	initial begin
		#5;
		a=4'b1100; b=4'b1101; cin=1'b1; #5;
		a=4'b0111; b=4'b0111; cin=1'b1; #5;
		a=4'b0101; b=4'b0111; cin=1'b0; #5;
	end
	
endmodule