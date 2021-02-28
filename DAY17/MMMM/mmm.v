 module mmm (max,mid, min,A,B,C);
      input [7:0] A,B,C;
  output [7:0] max,mid,min;
  
  wire [7:0] max1,min1;
  wire [7:0] max,min2;
  wire [7:0] mid,min;
  
  
  maxmin MM1 (max1,min1, A,B);
    
  maxmin MM2 (max,min2, max1,C);
    
  maxmin MM3 (mid,min, min1,min2);
  
    endmodule