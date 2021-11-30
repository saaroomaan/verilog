module mux_tb32;
reg [31:0] d;
reg [4:0] s;
reg inc = 5'b1;
integer i;
wire q;

//Instantiate the mux 32 module
mux32 m32(q,d,s);

//begin enumeration
initial
begin
d = 32'hAAAAAAAA;
s = 5'b0;
for(i = 0; i < 32; i = i + 1) //select values
begin
	s = s + inc;
	#5;
end
end
endmodule
