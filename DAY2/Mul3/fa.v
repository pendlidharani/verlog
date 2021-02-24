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
  
  