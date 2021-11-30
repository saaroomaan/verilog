module mux32(Q,D,S);
input [31:0] D;
input [4:0] S;
output Q;
assign Q = D[S];
endmodule
