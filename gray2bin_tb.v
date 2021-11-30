module g2btb;
reg [3:0] g;
wire [3:0] b;
integer i;
reg inc = 4'h1;
g2b G2B1(g,b);
initial
begin
g = 4'h0;
for(i = 0;i < 16;i = i + 1)
begin
	g = g + inc;
	#5;
end
end
endmodule 
