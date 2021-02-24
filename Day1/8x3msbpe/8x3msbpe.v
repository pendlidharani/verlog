// Code your design here
module _8x3msbpe (y0,y1,y2,i0,i1,i2,i3,i4,i5,i6,i7);
  input i0,i1,i2,i3,i4,i5,i6,i7;
  output y0,y1,y2;
  
  wire [2:0] p1,p2,p3,p4,p5,p6,p7;
  wire y0,y1,y2;
  
  assign {y2,y1,y0} =i7? 3'b111 :p1;
  assign p1=i6? 3'b110 :p2;
  assign p2=i5? 3'b101 :p3;
  assign p3=i4? 3'b100 :p4;
  assign p4=i3? 3'b011 :p5;
  assign p5=i2? 3'b010 :p6;
  assign p6=i1? 3'b001 :p7;
  assign p7=i0? 3'b000 :3'b111;

  
  
endmodule