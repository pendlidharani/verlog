// Code your testbench here
// or browse Examples
module tb;
  reg [7:0] A,B,C;
  wire [7:0] max,mid,min;
  
  mmm Dharani2 (max,mid,min,A,B,C);
  
  initial 
    begin
      repeat (15)
        begin
          A=$random;
          B=$random;
          C=$random;
          #1;
          $display ("%0d:%0d:%0d:%0d - %0d:%0d:%0d:%0d", "-----",A," " ,B," ",C ," : ", max," ",mid," ",min);
        end
    end
endmodule