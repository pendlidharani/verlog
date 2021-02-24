module saq1 (Q,Qbar,A,B);
input A,B;
output Q,Qbar;

 nor G1 (Q,A,Qbar);
 nor G2 (Qbar,Q,B);
 
 endmodule