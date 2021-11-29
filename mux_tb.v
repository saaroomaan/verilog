module muxtb;
reg [7:0] d;
reg [2:0] s;
wire q;
mux m1(d, s, q);
initial
begin
d = 8'b10101010;
s = 3'b000; #5;
s = 3'b001; #5;
s = 3'b010; #5;
s = 3'b011; #5;
s = 3'b100; #5;
s = 3'b101; #5;
s = 3'b110; #5;
s = 3'b111; #5;
end
endmodule;