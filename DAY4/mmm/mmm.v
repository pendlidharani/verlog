// Code your design here
// Code your design here
module maxmin (max,min,A,B);
  input [7:0] A,B;
  output [7:0] max,min;
  
  wire gt;
  wire [7:0] max,min;
  
  assign gt= A>B;
  assign {max,min}= gt ? {A,B} : {B,A};
    endmodule
    

// Code your design here
module mmm (max,mid, min,A,B,C);
  input [7:0] A,B,C;
  output [7:0] max,mid,min;
  
  wire gt;
  wire [7:0] max1,min1;
  wire [7:0] max,min2;
  wire [7:0] mid,min;
  
  
  maxmin mm1 (max1,min1, A,B);
    
  maxmin mm2 (max,min2, max1,C);
    
  maxmin mm3 (mid,min, min1,min2);
  
endmodule
  
  