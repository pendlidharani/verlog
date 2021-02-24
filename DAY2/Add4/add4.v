module fa (cout,sum,a,b,cin); 
input a,b,cin; 
output cout,sum; 
wire sum,p1,p2,p3,cout; 
 
xor G1 (sum,a,b,cin); 
and G2 (p1,a,b); 
and G3 (p2,cin,a); 
and G4 (p3,b,cin); 
or G5 (cout,p1,p2,p3); 
 
endmodule 


module adder4 (S,C0,A,B);
  output [3:0]S;
  output C0;
  input [3:0]A,B;
  
  wire [3:0]S;
  wire C0;
  wire C,C1,C2;
  
  fa add1 (C,S[0],A[0],B[0],1'b0);
  fa add2 (C1,S[1],A[1],B[1],C);
  fa add3 (C2,S[2],A[2],B[2],C1);
  fa add4 (C0,S[3],A[3],B[3],C2);
  
  
endmodule
  
  