module tb;

reg clk=0,rst=1;
reg load=0;reg loadNBA=0;
wire [7:0] dout;
reg [3:0] din=0,dinNBA = 0;

din4_dout8 MM (clk,rst,din,dout,load);

always #5 clk=!clk;

initial #2 rst=0;

always @ (load) loadNBA<=load;
always @ (din) dinNBA<=din;

initial 
   begin
   #55;
   load=1;din=5;
   #10;load=0;din=4'hC;
   #50;
   
   load=1; din=$random;
   #10; din=$random;
   #10;load=0;din=4'hB;
   #10;
   
   din=4'hc;
   #10;
   din=3;
   #10;
   din=4;
   #1000;
   $finish;
   end
   
endmodule


