// Code your design here
module todyes (tod,yes);
  input [4:0]tod;
  output [4:0]yes;
  wire [4:0]bumi;
  wire neth;
  wire [4:0]yes;
  
  assign bumi = tod-1;
  assign neth= (tod==1);
  assign yes = neth ? 30 : bumi;
endmodule
  