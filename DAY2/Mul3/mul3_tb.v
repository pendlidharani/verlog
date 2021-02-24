module tb();

  reg [2:0] A,B;
  wire [5:0] Y;
  
  mul3 ananya (Y,A,B);
  initial 
  begin
    repeat (10)
	  begin
	     A=$random ;
		 B=$random ;
		 #2;
		 $display (A," " ,B," :",Y );
	 end
  end
  endmodule
		