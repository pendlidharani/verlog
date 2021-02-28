module tb;
integer a;
sub s();
 //read-write race
 //write-read race
 initial 
     begin
	 a=110;
	#5;
	 a=2420;
	 end
endmodule

module sub ();

 initial 
   begin   
       #4; $display (tb.a);//110
	   #1; $display (tb.a);//2420
	   #1; $display (tb.a);//2420
	   end
endmodule