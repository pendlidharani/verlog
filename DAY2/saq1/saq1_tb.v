module tb ();
wire Q,Qbar;
reg A,B;

  saq1 anu (Q,Qbar,A,B);
   initial 
    begin
	 repeat (10)
	 begin
	  A=$random;
	  B=$random;
	  #2;
	  $display (A," ",B,": ", Q," ",Qbar);
	 end
	end
endmodule