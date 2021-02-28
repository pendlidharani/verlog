// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [7:0] A,B,C,D;
  wire [7:0] max,midH,midL,min;
  wire [7:0] maxE,midHE,midLE,minE;  
  mmmm Dharani3 (max,midH,midL,min,A,B,C,D);
  
  reg [7:0] Y[0:3];
  integer i,j,temp;
  
  initial 
    begin
      repeat (10)
        begin
          {A,B,C,D}=$random;
         
		  Y[0]=A;
		  Y[1]=B;
		  Y[2]=C;
		  Y[3]=D;
          #1;
		  if ({Y[3],Y[2],Y[1],Y[0]} != 
		  {max,midH,midL,min})
		     begin
		      $display ("FAIL");
			  $display("ABCD	%0d:%0d:%0d:%0d",
			  A,B,C,D);
		      $display("Expected 	%0d:%0d:%0d:%0d",
			  Y[0],Y[1],Y[2],Y[3]);
		      $display("from DUT=%0d:%0d:%0d:%0d","   ",
			  max ,"   ", midH ,"   ", midL ,"    ", min);
		    
          end
        end
    end
	
	always @*
	begin  
	   for (i=0;i<=3;i=i+1)
	     begin
		   for (j=0;j<=3;j=j+1)
		     begin
			  if (Y[i]>Y[j])
			   begin
			    temp=Y[i];
				Y[i]=Y[j];
				Y[j]=temp;
				
			  end
			end
		end
	 end
endmodule
	
	
	
