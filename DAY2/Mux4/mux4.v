// Code your design here
module mux (y,s,i1,i0); 
input i1,i0,s; 
output y; 
wire sbar,p1,p2,y; 
not G1 (sbar,s); 
and G2 (p1,sbar,i0); 
and G3 (p2,s,i1); 
or G4 (y,p1,p2); 
endmodule 


module mux4 (Y,S,I1,I0);
  input [3:0] I1,I0;
  output [3:0] Y;
  input S;
  wire [3:0]Y;
  
  mux aa (Y[0],S,I1[0],I0[0]);
  mux bb (Y[1],S,I1[1],I0[1]);
  mux cc (Y[2],S,I1[2],I0[2]);
  mux dd (Y[3],S,I1[3],I0[3]);
  
endmodule




  