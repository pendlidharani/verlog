module tb;
reg a;
reg [3:0] b;

initial 
  begin
   a=1;
   b=4'b0111;
   $display ("%b", !b);
   $display ("%b", ~b);
   end
endmodule