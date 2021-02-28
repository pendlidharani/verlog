module delayby5 (clk,rst,rhand,shand);
input clk,rst,rhand;
output shand;

`ifdef VER1
reg q1,q2,q3,q4;
reg shand;
always @(posedge clk or posedge rst)
begin
   if (rst) q1<=0;
   else q1<= rhand;
   end
always @(posedge clk or posedge rst)
begin  
   if (rst) q2<=0;
   else q2<=q1;
 end
always @(posedge clk or posedge rst)
begin 
   if (rst) q3<=0;
   else q3<=q2;
 end
 always @(posedge clk or posedge rst)
begin 
   if (rst) q3<=0;
   else q4<=q3;
 end
 always @(posedge clk or posedge rst)
begin 
   if (rst) shand<=0;
   else shand<=q4;
 end
 `endif
 
 
 `ifdef VER2
 reg [2:0] cnt;
 wire shand;
 
 always @ (posedge clk or posedge rst)
 begin
   if (rst) cnt<=0;
   else 
   if (cnt==0)
      begin 
	    cnt<= rhand ? 1:0;
		end
	else 
	  begin
	    if (cnt==5) cnt<=0;
		else  cnt<=cnt+1;
	end
	end
	assign shand = cnt==5;
	`endif
	
	endmodule