module tb();
reg clk;
reg rst;
wire [7:0] tod;

mod100 abc (clk,rst,tod);

initial clk=0;
always #5 clk =!clk;
initial  #3000 $finish;
initial
   begin 
   rst =1;
   #2;
   rst=0;
   
  
   end
endmodule