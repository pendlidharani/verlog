module tb;

reg clk,rst;
wire [4:0] hrs;
wire [5:0] mins;
wire [5:0] secs;

secmin times(clk,rst,hrs,mins,secs);
initial clk=0;
always #5 clk=!clk;
initial #99999999 $finish;
initial
 begin
  rst=1;
  #2;
  rst=0;
  #100;
  force tb.times.hrs=1;
  release tb.times.hrs;
  end
always @ (negedge clk)
begin
$display (hrs,":",mins,":", secs);
end
endmodule