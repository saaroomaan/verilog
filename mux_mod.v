module mux(D, S, Q);
input [7:0] D;
input [2:0] S;
output Q;
assign Q = D[~S];
endmodule;
