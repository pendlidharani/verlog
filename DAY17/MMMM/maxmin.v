module maxmin (max,min,A,B);
  input [7:0] A,B;
  output [7:0] max,min;
  
  wire gt;
  wire [7:0] max,min;
  
  assign gt= A>B;
  assign {max,min}= gt ? {A,B} : {B,A};
endmodule