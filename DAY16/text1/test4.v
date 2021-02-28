module tb;
integer a;
initial 
begin
    a=10;
	$monitor ("m:",a);//45787,3334560
	$display("1:",a);//10
	a=566;
	$display("2:",a);//566
	a=42;
	$display("3:",a);//42
	a=45787;
	$display("4:",a);//45787
#5;
	a=35;
	a<=3334560;
	$display("5:",a);//35
	end
endmodule
	
