module tb;
integer a,clk;
initial 
begin
    always @ (posedge clk)
	 a=2;
	 a<=3;
	 $display(a);
	end
endmodule
	
