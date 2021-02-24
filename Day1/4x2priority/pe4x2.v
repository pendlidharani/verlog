module _4x2msbpe (y0,y1,i0,i1,i2,i3);
  input i0,i1,i2,i3;
  output y0,y1;
  
  wire [1:0] p1,p2,p3;
  wire y0,y1;
  
  assign p1=i0? 2'b00 :2'b10;
  assign p2=i1? 2'b01 :p1;
  assign p3=i2? 2'b10 :p2;
  assign {y0,y1} =i3? 2'b11 :p3;
  
endmodule