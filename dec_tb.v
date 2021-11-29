module dectb;
reg a, b, e;
wire d3,d2, d1, d0;
decoder dec24(a, b, e, d3, d2, d1, d0);
initial
begin
e = 1'b0; a = 1'b0; b = 1'b0; #5;
e = 1'b0; a = 1'b0; b = 1'b1; #5;
e = 1'b0; a = 1'b1; b = 1'b0; #5;
e = 1'b0; a = 1'b1; b = 1'b1; #5;
end
endmodule;