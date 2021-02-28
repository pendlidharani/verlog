module tb;
reg clk=0,rst=1;
always #5 clk=!clk;
initial #2 rst =0;
reg [6:0] inp=65 ;
wire hello;

`include "parameter.txt"
parameter NO=0, SR1=1, SA1=2,SR2=3,SA2=4;
sm_rara nol_ol (clk,rst,inp,hello);

initial
    begin
	#10 ; inp=A;
	#10 ; inp=A;
	#10 ; inp=A;
	#10 ; inp=C;
	#10 ; inp=O;
	#10 ; inp=R;
	#10 ; inp=A;
	#10 ; inp=R;
	#10 ; inp=A;
	#10 ; inp=R;
	#10 ; inp=A;
	#10 ; inp=R;
	#10 ; inp=R;
	#10 ; inp=O;
	#10 ; inp=N;
	#10 ; inp=A;
	#10 ; inp=A;
	#10 ; inp=A;
	#10 ; inp=A;
	#10 ; inp=A;
	$finish;
	
	end
	
endmodule
	

