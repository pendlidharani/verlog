// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb();
  reg i0,i1,i2,i3,i4,i5,i6,i7;
  wire y2,y1,y0;
  
  _8x3msbpe taskd7_p2 (y2,y1,y0,i0,i1,i2,i3,i4,i5,i6,i7);
  initial
    begin
      repeat(16)
        begin
          {i0,i1,i2,i3,i4,i5,i6,i7} =$random;
          #5; $display(i0,i1,i2,i3,i4,i5,i6,i7," : ",y2,y1,y0);
        end
    end
endmodule
  
  