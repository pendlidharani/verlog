module dharani(a,y);
input [2:0] a;
output [2:0]y;
wire gt;
wire [2:0] b1,b2,y;


assign gt = a > 5;
assign b1= a + 1;
assign b2=  a - 1;
assign y= gt ? b2: b1;

endmodule

