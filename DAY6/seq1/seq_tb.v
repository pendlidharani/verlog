// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst;
  wire q1,q2;
  
  seq seq_exmp1 (clk,rst,q1,q2);
  always #5 clk=!clk;
  initial 
    begin 
     
      rst=1;
      #2;
      rst=0;
      #20;
     
    end
  initial
    begin
      $dumpfile("dump.vcd");       
      $dumpvars;
      #200;
      $finish;
    end
endmodule