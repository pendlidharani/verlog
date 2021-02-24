module mod100 (clk,rst,tod);
input clk;
input rst;
output [2:0] tod;


wire [2:0] ananya;
wire [2:0] tom;
wire s1;
reg [7:0] tod;

assign ananya = tod + 1;
assign s1 = tod == 5;
assign tom = s1 ? 0 :  ananya;


always @ (posedge clk or posedge rst)
 begin
  if (rst) 
		tod<=0;
  else 
		tod<=tom;
 end
 
endmodule