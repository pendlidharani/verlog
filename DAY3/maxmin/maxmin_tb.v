// Code your testbench here
// or browse Examples
module tb;
  reg [7:0] A,B;
  wire [7:0] max,min;
  
  maxmin Dharani (max,min,A,B);
  
  initial 
    begin
      repeat (10)
        begin
          A=$random;
          B=$random;
          #1;
          $display (A," " ,B," : ", max,min);
        end
    end
endmodule