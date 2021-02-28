// Code your testbench here
// or browse Examples
module tb;
  reg [4:0] tod;
  wire [4:0] yes;
  
  todyes DAN (tod,yes);
  
  initial 
    begin
      repeat (10)
        begin
          tod=$random;
          #1;
          $display (tod,":",yes);
        end
    end
endmodule