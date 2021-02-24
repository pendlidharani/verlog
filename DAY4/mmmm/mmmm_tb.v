// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [7:0] A,B,C,D;
  wire [7:0] max,midH,midL,min;
  
  mmmm Dharani3 (max,midH,midL,min,A,B,C,D);
  
  initial 
    begin
      repeat (15)
        begin
          A=$random;
          B=$random;
          C=$random;
          D=$random;
          #1;
          $display (A ," " ,B ," ",C ," ",D ," : ", max ," ", midH ," ", midL ," ", min);
        end
    end
endmodule