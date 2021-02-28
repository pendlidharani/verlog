module tb;

integer a;
integer b;

initial 
     begin
	   //$monitor ($time,":",a,b);
	   //#0: 105,765
	   //#5: 15,70
	   //10: 10,5
	   $monitor (a);
	    // 0:  765
       // 5: 70
        // 10: 5
	   a=200;
	   a=10;
	   a=105;
	   b=765;
	#5;
       a=20;
	   a=156;
	   a=15;
	   b=70;
	#5;
	   a=10;
	   a=10;
	   a=10;
	   b=5;
	end
endmodule


module tb;

integer a;
integer b;

initial 
     begin
	   $monitor ($time,":",a);// 0: 105, beacuse a=105 in all 3 time stages same so it wont print the same value 
	   
	   a=200;
	   a=10;
	   a=105;
	   b=7;
	#5;
       a=20;
	   a=156;
	   a=105;
	   b=70;
	#5;
	   a=10;
	   a=10;
	   a=105;
	   b=17;
	end
endmodule