module tb;

reg clk,rst,rhand;
wire shand;

delayby5 DB5C (clk,rst,rhand,shand);


initial 
begin : CLKGEN
clk=0;
forever
  begin
    #5 clk=!clk;
	end
	
  end
initial

   begin
   rhand=0;
   #100;
   rhand=1;#10;rhand=0;
   #20;
   rhand=1;
   #10; rhand=0;
   #100;
   disable CLKGEN;  //In place of $finish we are using this
   end
 endmodule