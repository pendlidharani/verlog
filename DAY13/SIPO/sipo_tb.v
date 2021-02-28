module tb;
 
reg clk,rst,start;
reg  din;
wire [7:0] dout;


sipo sipo_inst (clk,rst,start,din,dout);
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
	 din=1'b0;
	 #50;
	 startpulse;
	 repeat (8)
	   begin  
	      din =!din;
		  #10;
		end
	 #100;
	 
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