module mod5 (input wire clk,rst,output reg [2:0] tod);

wire [2:0] b1,tom;
wire s1;
assign b1 = tod +1;
assign s1= tod==4;
assign tom = s1 ? 0:b1;

always @ (posedge clk or posedge rst)
begin
 if (rst) tod<=0;
 else tod<=tom;
end
endmodule