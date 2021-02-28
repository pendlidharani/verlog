module tb();
 reg [2:0] a;
 wire [2:0] y;
 
 dharani bumi (a,y);
 
 
 initial 
  begin
    repeat (10)
	  begin 
	    a=$random;
		#2;
		$display(a,":",y);
	  
	  end
	  end
	  
endmodule