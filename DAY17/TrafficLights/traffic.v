module traddiclights (input clk,rst,veh,output reg hwr,hwy,hwg,swr,swy,swg);
reg [4:0] cnt;
always @ (posedge clk or posedge rst)
begin
   if (rst) cnt<=0;
   else 
   if (cnt==0) cnt<=veh?1:0;
   else cnt <=cnt==20?0: (cnt+1);
end

always @*
begin
   case (cnt)
   0: {hwr,hwy,hwg,swr,swy,swg}=6'b001100;
   1,2,3,4,5: {hwr,hwy,hwg,swr,swy,swg}=6'b010100;
   6,7,8,9,10,11,12,13,14,15: {hwr,hwy,hwg,swr,swy,swg}=6'b100001;
   16,17,18,19,20: {hwr,hwy,hwg,swr,swy,swg}=6'b100010;
   default: {hwr,hwy,hwg,swr,swy,swg}=6'b000000;
   endcase
   end
   