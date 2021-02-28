module tb();

  reg [2:0] A,B;
  wire [5:0] Y;
  wire [5:0] Yexp;
  integer failures;
  
  mul3 ananya (Y,A,B);
  initial 
  begin: B1
  failures =0;
    repeat (100)
	  begin
	     A=$random ;
		 B=$random ;
		 #2;
		 if (Yexp != Y)
		   begin
		       failures=failures+1;
			   $display ("Fail : A=%0d B=%0d Yexp=%0d Y=%0d", 
			                     A ,     B,   Yexp,      Y);
			end
	    end
	 if (failures==0)
	     $display ("Test Passed");
	else
	     $display   ("Test Fail");
	end : B1
	//self Checking CODE
	assign Yexp = A*B;
	

  endmodule
		