module tb;

reg clk,rst;
wire [2:0] cnt;

updown UD (clk,rst,cnt);

initial clk=0;
always #5 clk=!clk;
initial #30000 $finish;

initial
begin
 rst =1;
 #1;
 rst=0;
 end

endmodule