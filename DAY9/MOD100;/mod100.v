module mod100 (clk,rst,tod);
input clk;
input rst;
output [7:0] tod;


wire [7:0] ananya;
wire [7:0] tom;
wire s1;
reg [7:0] tod;

assign ananya = tod + 1;
assign s1 = tod == 99;
assign tom = s1 ? 0 :  ananya;


always @ (posedge clk or posedge rst)
 begin
  if (rst) 
		tod<=0;
  else 
		tod<=tom;
 end
 
endmodule