module tb;
integer a;
initial 
begin
    //30
	a=30;
    // $monitor($time,"p:",a);
	$write("p2:",a);//30 write means it will print the value side by side 
#5;
    a=100;
    $display("p1:",a);//100

    $finish;
	 end
endmodule

//p2: 30 //p1: 100 its writing beside p2 becausep2 is $write not $display  
