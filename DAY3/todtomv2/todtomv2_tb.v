module tb();
reg [4:0] tod;
wire [4:0] tom;
reg[3:0] mon;

todtomv2 abcd (tom,tod,mon);

initial 
 begin
  repeat (100)
   begin 
    tod= $random;
	mon =$urandom_range(1,12);
	#1;
	$display(tod,mon);
	end
	end
	endmodule