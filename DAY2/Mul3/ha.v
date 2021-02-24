module ha(sum,cout,A,B);
  output sum,cout;
  input A,B;
  
  wire sum,cout;
 
  
  xor G1 (sum,A,B);
  and G2 (cout,A,B);
  
endmodule