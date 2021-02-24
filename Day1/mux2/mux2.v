module mux (y,s,i1,i0); 
input i1,i0,s; 
output y; 
wire sbar,p1,p2,y; 
not G1 (sbar,s); 
and G2 (p1,sbar,i0); 
and G3 (p2,s,i1); 
or G4 (y,p1,p2); 
endmodule 

module mux2 (y,s,i1,i0);
input [1:0]i1,i0;
output  [1:0]y;
input s;

mux bit0(y[0],s,i1[0],i0[0]);
mux bit1(y[1],s,i1[1],i0[1]);

endmodule