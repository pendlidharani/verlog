module tb;
reg clk=0,rst=1;
always #5 clk=!clk;
initial #2 rst=0;
integer i;

wire [4:0] cnt;
reg [4:0] cnt_exp;

count19 count19_inst (clk,rst,cnt);

initial #500 $finish;
//0,1,2,3,4,5,6,7,8,9,9,10,11,12,13,14,15,16,17,18,19

reg [4:0] C[0:19];
initial
   begin
   C[0]=0;
 C[1]=1;
   C[2]=2;
   C[3]=3;
   C[4]=4;
   C[5]=5;
   C[6]=6;
   C[7]=7;
   C[8]=8;
   C[9]=9;
   C[10]=9;
   C[11]=10;
    C[12]=10;	 C[13]=13;
C[14]=14;
C[15]=15;
 C[16]=16;	C[17]=17;
 C[18]=18;
 C[19]=19;
	forever
	  begin
	  for (i=0;i<=19;i=i+1)
	  begin
	     cnt_exp = C[i];
	@(posedge clk);
	end
	end
	end
	
	always@ (negedge clk)
	begin 
	   if (cnt_exp != cnt) 
	   $display ($time,":Mismatch Exp=%0d,but DUT =%0d",cnt_exp,cnt);
	   end
	   endmodule
		 


