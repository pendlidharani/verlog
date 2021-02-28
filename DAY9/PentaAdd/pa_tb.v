module tb();
 reg [2:0]A,B;
 wire [2:0] sum,carry;
 
 pentaadd pa (sum,carry,A,B);
 initial 
 begin 
 repeat (10)
 begin
 A=1;
 B=2;$display(A,B," :",carry,sum);
 #2;
  A=2;
 B=2;$display(A,B," :",carry,sum);
 #2;
  A=1;
 B=1;$display(A,B," :",carry,sum);
 #2;
 A=4;
 B=4;$display(A,B," :",carry,sum);
 end
 end
 endmodule
 
 