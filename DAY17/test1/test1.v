module tb;
reg [2:0] i;
initial
 begin
    for (i=0;i<=7;i=i+1)
	  begin
	    $display (i);
		end
	$display ("This line will not be printed at all", i);
	#100;
	$finish;
	end
endmodule