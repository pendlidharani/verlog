module tb();
reg clk,rst;
wire [2:0] tod;

mod5 dharani (clk,rst,tod);
   initial 
     begin
	   clk=1;
	   rst=0;
	   #2;
	  // rst=1;
	   #2;
	  // rst=0;
	   #10;
	   $finish;
	  end
	always #5 clk=!clk;
endmodule