module secmin (clk,rst,hrs,mins,secs);
input clk,rst;
output [4:0] hrs;
output [5:0] mins;
output [5:0] secs;
reg [5:0] hrs;
reg [5:0] mins;
reg [5:0] secs;

`ifdef Dataflow
wire [5:0]b1,b2;
wire s1,s2,s3;

wire [5:0] b3,b4,b5;

wire [4:0] b6,b7,b8;

assign b1 = secs+1;
assign s1 = secs==59;
assign b2 = s1 ? 0 : b1;

always @ (posedge clk or posedge rst )
 begin 
 if (rst) secs <=0;
 else secs<=b2;
 end
 assign b5 = mins+1;
 assign s2 = mins == 59;
 assign b3 = s2 ? 0 : b5;
 assign b4 = s1 ? b3 :mins;
 
 always @(posedge clk or posedge rst)
 begin 
  if (rst) mins<=0;
  else mins<=b4;
  end
  
  assign b6=hrs+1;
assign s3=hrs==23;
assign b7= s3 ? 0 : b6;
assign b8= (s1&s2) ? b7 : hrs;

always @ (posedge clk or posedge rst)
begin
	if (rst) hrs<=0;
	else hrs<=b8;
end
  
  
  `endif
  `ifdef Beh
  always @(posedge clk or posedge rst)
  begin 
  if  (rst) secs<= 0;
  else 
  begin 
  if (secs==59) secs<=0;
  else secs<=secs+1;
  end
  end
  
  always @(posedge clk or posedge rst )
   begin 
    if (rst) mins<=0;
	else 
	 begin 
	  if (secs==59)
	  begin
	   if (mins==59) mins<=0;
	   else  mins<=mins +1;
	   end
	  else mins<=mins;
	 end
	end
	
	 always @(posedge clk or posedge rst )
   begin 
    if (rst) hrs<=0;
	else 
	 begin 
	  if (secs==59)
	  begin
	   if (mins==59) 
	     begin
	       if (hrs==23) hrs<=0;
	       else hrs<=hrs +1;
		 end  
	   
	   else  hrs<=hrs;
	   end
	  else hrs<=hrs;
	 end
	end
  `endif
  endmodule