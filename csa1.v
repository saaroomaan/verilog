`resetall

module csa1(cout,sum,cin,a,b);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;

wire s0,s1,s2,s3,s4,s5,s6,s7,c0,c1,c2,c3,c4,c5,c6,c7;

fa f1(c0,s0,1'b0,a[0],b[0]);
fa f2(c1,s1,c0,a[1],b[1]);
fa f3(c2,s2,c1,a[2],b[2]);
fa f4(c3,s3,c2,a[3],b[3]);
fa f5(c4,s4,1'b1,a[0],b[0]);
fa f6(c5,s5,c4,a[1],b[1]);
fa f7(c6,s6,c5,a[2],b[2]);
fa f8(c7,s7,c6,a[3],b[3]);

mux m1(sum[0],s4,s0,cin);
mux m2(sum[1],s5,s1,cin);
mux m3(sum[2],s6,s2,cin);
mux m4(sum[3],s7,s3,cin);

mux m5(cout,c7,c3,cin);

endmodule

module fa(cout,sum,cin,a,b);

input a,b,cin;
output cout,sum;

wire w1,w2,w3;

xor xor1(sum,a,b,cin);
or or1(w1,a,b);
or or2(w2,b,cin);
or or3(w3,cin,a);
and and1(cout,w1,w2,w3);

endmodule

module mux(y,i1,i0,s);

input i1,i0,s;
output y;

wire w1,w2;

and a1(w1,~s,i0);
and a2(w2,s,i1);
or o1(y,w1,w2);

endmodule