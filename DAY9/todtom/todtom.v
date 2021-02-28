// Code your design here
module todtom (tod,tom);
  input [4:0]tod;
  output [4:0]tom;
  
  wire [4:0]bumi;
  wire [4:0]neth;
  wire [4:0]tom;
  
  assign bumi = tod + 1;
  assign neth= (tod==30);
  assign tom = neth ? 1 : bumi;
endmodule
  