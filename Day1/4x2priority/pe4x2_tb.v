// Code your testbench here
// or browse Examples
module tb();
  reg i0,i1,i2,i3;
  wire y1,y0;
  
  _4x2msbpe taskd7_p1 (y1,y0,i0,i1,i2,i3);
  initial
    begin
      repeat(16)
        begin
          {i0,i1,i2,i3} =$random;
          #5; 
          $display(i0,i1,i2,i3,":",y1,y0);
        end
    end
endmodule
  
  