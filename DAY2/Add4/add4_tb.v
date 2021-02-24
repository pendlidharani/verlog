// Code your testbench here
// or browse Examples
module  tb();
  wire [3:0]S;
  wire C0;
  reg [3:0]A,B;
 
  adder4 aaaa (S,C0,A,B);
  
  initial 
   
    repeat(10)
      begin
         begin
       A=$random;
       B=$random;
      #2;
           $display (A," ",B,":",{C0,S});
       end
      end
endmodule
      