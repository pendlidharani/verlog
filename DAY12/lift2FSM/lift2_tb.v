module tb;
reg clk=0,rst=1,ra=0,rb=0,rc=0,rd=0;
wire [1:0] floor;
wire dir;

lift2 dharani2 (clk,rst,ra,rb,rc,rd,floor,dir);
always #5 clk=!clk;

initial #2 rst=0;

initial
    begin
	/*#50;
	
	rapulse;
	#50;
	
	rbpulse;
	#50;
	
	rcpulse;
	#50;
	
	rdpulse;
	#50;
	
	fork
	   rapulse;
	   rbpulse;
	   rcpulse;
	   rdpulse;
	join
	#50;*/
	
	repeat (50)
	   begin 
	   {ra,rb,rc,rd}=$random;
	   #10;
	   {ra,rb,rc,rd}=4'b000;
	   #50;
	   end
	$finish;
	end
	
	endmodule
	