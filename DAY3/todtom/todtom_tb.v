// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [4:0] tod;
  wire [4:0] tom;
  
  todtom DAN (tod,tom);
  
  initial 
    begin
      repeat(10)
      
        begin
          tod=$random;
       
          #1;
          $display (tod,":",tom);
        end
    end
endmodule