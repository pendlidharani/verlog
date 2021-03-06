module pentaadd (sum,carry,A,B);
 input [2:0]A,B;
 output [2:0] sum,carry;
 
 wire [2:0] sum,carry;
 wire  p1,p2;
 
 assign p1 = A +B;
 assign p2 = p1 > 5;
 assign carry = p1 - 5;
 assign sum = p1 ? carry : p1;
 
 endmodule