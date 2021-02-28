// Code your design here
// Code your design here
// Code your design here

  
module mmmm (max,midH,midL,min,A,B,C,D);
    input [7:0] A,B,C,D;
    output [7:0] max,midH,midL,min;
  

    wire [7:0] max1,mid1,min1;
    wire [7:0] max,min2;
    wire [7:0] midH,midL,min;
  
  
    mmm MMM1 (max1,mid1,min1, A,B,C);
    
    maxmin MMM2 (max,min2, max1,D);
    
    mmm MMM3 (midH,midL,min, mid1,min2,min1);
  
    endmodule
  
  