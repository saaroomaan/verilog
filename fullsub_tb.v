module fullsubtb();
reg a, b, bin;
wire diff, bout;

//instantiate the full subtractor module
fullsub fs(a, b, bin, diff, bout);

//enumerate the inputs
initial
begin
a = 1'b0; b = 1'b0; bin = 1'b0; #5;
a = 1'b0; b = 1'b0; bin = 1'b1; #5;
a = 1'b0; b = 1'b1; bin = 1'b0; #5;
a = 1'b0; b = 1'b1; bin = 1'b1; #5;
a = 1'b1; b = 1'b0; bin = 1'b0; #5;
a = 1'b1; b = 1'b0; bin = 1'b1; #5;
a = 1'b1; b = 1'b1; bin = 1'b0; #5;
a = 1'b1; b = 1'b1; bin = 1'b1; #5;
end
endmodule
