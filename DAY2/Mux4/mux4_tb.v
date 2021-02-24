// Code your testbench here
// or browse Examples
module tb();
  wire [3:0]Y;
  reg S;
  reg [3:0]I1,I0;
  
  mux4 aaaaaa (Y,S,I1,I0);
    
  initial
    begin
      repeat (10)
        begin
          {S,I1,I0}=$random;
          #1;
          $display (S," ",I1, " ",I0,":",Y);
          
        end
    end
endmodule