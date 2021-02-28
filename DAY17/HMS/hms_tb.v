module tb;

reg clk,rst;
wire [4:0] hrs;
wire [5:0] mins;
wire [5:0] secs;

hms hms_inst (clk,rst,hrs,mins,secs);

initial clk=0;
always #5 clk=!clk;

initial
   begin
   rst=1;
   #2;
   rst=0;
   #20000000;
   $finish;
   end
endmodule