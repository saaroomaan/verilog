`resetall

module csa2(cout,sum,cin,a,b);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;

wire s1,s2,s3,c0,c1,c2,c3,c4,c5,c6,c7;

fa f1(c0,sum[0],cin,a[0],b[0]);
fa f2(c1,s1,cin,a[1],b[1]);
fa f3(c2,s2,cin,a[2],b[2]);
fa f4(c3,s3,cin,a[3],b[3]);

fa f5(c4,sum[1],1'b0,c0,s1);
fa f6(c5,sum[2],c4,c1,s2);
fa f7(c6,sum[3],c5,c2,s3);
fa f8(c7,cout,c6,c3,1'b0);

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
