module soptb;
reg x,y,z;
wire o;
sop s1(x,y,z,o);
initial
begin
x=1'b0; y=1'b0; z=1'b0; #5;
x=1'b0; y=1'b0; z=1'b1; #5;
x=1'b0; y=1'b1; z=1'b0; #5;
x=1'b0; y=1'b1; z=1'b1; #5;
x=1'b1; y=1'b0; z=1'b0; #5;
x=1'b1; y=1'b0; z=1'b1; #5;
x=1'b1; y=1'b1; z=1'b0; #5;
x=1'b1; y=1'b1; z=1'b1; #5;
end
endmodule;