// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [4:0] tod;
  wire [4:0] dby;
  
  toddbyes DAN (tod,dby);
  
  initial 
    begin
      repeat (10)
        begin
          tod=$random;
          #1;
          $display (tod,":",dby);
        end
    end
endmodule