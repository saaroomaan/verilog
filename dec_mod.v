module decoder(A, B, E, D3, D2, D1, D0);
input A, B, E;
output D3, D2, D1, D0;
assign D3 = E | ~A | ~B;
assign D2 = E | ~A | B;
assign D1 = E | A | ~B;
assign D0 = E | A | B;
endmodule;