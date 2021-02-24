module ha(sum,cout,A,B);
  output sum,cout;
  input A,B;
  
  wire sum,cout;
  xor G1 (sum,A,B);
  and G2 (cout,A,B);
  
endmodule

module fa(sum,cout,A,B,Cin);
  output sum,cout;
  input  A,B,Cin;
  
  wire sum,cout;
  wire t1,t2,t3;
  
  xor G1 (sum,A,B,Cin);
  and G2 (t1,A,B);
  and G3 (t2,B,Cin);
  and G4 (t3,A,Cin);
  or  G5 (cout,t1,t2,t3);
  
endmodule

module xfa1 (cout1,cout0,sum,a,b,c,d);
input a,b,c,d;
output cout1,cout0,sum;
wire cout1,cout0,sum;

  fa G1(c0,s0,a,b,c);
  ha G2 (c1,sum,s0,d);
  ha G3 (cout1,cout0,c0,c1);

endmodule