module tb;
//cadence 10
//synopsys 20;
//write-write race

integer a;

 initial a=0;
  sub S ();
 initial #5 $display (a);
 endmodule
 module sub ();
    initial tb.a =1;
	
endmodule