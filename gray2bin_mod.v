module g2b(gray, bin);
input [3:0] gray;
output [3:0] bin;
integer  i;

assign bin[3] = gray[3];
assign bin[2] = gray[3] ^ gray[2];
assign bin[1] = gray[2] ^ gray[1];
assign bin[0] = gray[1] ^ gray[0];
endmodule
