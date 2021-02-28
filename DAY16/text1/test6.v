module tb;

integer a;
integer b;

initial 
     begin
	   $monitor ($time,":",a,b);// 0: 105,70
	   
	   a=200;
	   a=10;
	   a=105;
	   b=70;
	#5;
       a=20;
	   a=156;
	   a=105;
	   b=70;
	#5;
	   a=10;
	   a=10;
	   a=105;
	   b=70;
	end
endmodule