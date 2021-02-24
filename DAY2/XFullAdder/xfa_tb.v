module tb();
 reg a,b,c,d;
 wire cout1,cout0,sum;
 
 xfa1 amani (cout1,cout0,sum,a,b,c,d);
 
 initial
  begin
    repeat(10)
    begin 
	 {a,b,c,d}= $random;
	 #2;
	 $display(a,b,c,d,":",cout1,cout0,sum);
	 
    end
  end
endmodule