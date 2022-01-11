module Jk_FF(j,k,clock,q,clr);
input j,k,clock,clr;
output reg q;
initial
begin
q=0;
end
always@(negedge clock)
begin
case({j,k})
2'b00 :q=q;
2'b01 :q=0;
2'b10 :q=1;
2'b11 :q=~q;
default :q=0;
endcase

if(clr==1'b0)
q<=0;
end
endmodule

module mod14_counter(input clk, output [3:0] Q);
wire w1; reg clr;
Jk_FF jkD(1'b1, 1'b1, clk, Q[0], clr);
Jk_FF jkC(1'b1, 1'b1, Q[0], Q[1], clr);
Jk_FF jkB(1'b1, 1'b1, Q[1], Q[2], clr);
Jk_FF jkA(1'b1, 1'b1, Q[2], Q[3], clr);

always @ (Q or negedge clk)
clr<= ~(Q[3]&Q[1]);
//nand n2(clr, w1, Q[1]);
endmodule
