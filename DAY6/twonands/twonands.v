module twonands (a,b,q,qbar);

input a,b;
output q,qbar;

nand G1 (q,a,qbar);
nand G2  (qbar,q,b);

endmodule