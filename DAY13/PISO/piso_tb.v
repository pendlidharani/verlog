module tb;
 
reg clk,rst,start;
reg [7:0] din;
wire dout;


piso piso_inst (clk,rst,start,din,dout);
initial
begin
  clk=0;
  while(1)
     begin
	 #5 clk=!clk;
	 end
  end
  initial
    begin
	rst=1;
	start=0;
	#2;
	rst=0;
	end
   initial 
     begin
	 din=8'b10110101;
	 #50;
	 startpulse;
	 
	 #100;
	 din=8'b101111;
	 startpulse;
	 #500;
	 $finish;
	 end
	 
task startpulse;
begin 
  start=1;
  #10;
  start=0;
end
endtask
endmodule