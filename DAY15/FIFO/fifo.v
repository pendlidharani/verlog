module fifo (clk,rst,wr,rd,wrptr,rdptr,din,dout,housefull,nostock);
input clk,rst,wr,rd;
input [7:0] din;
output [7:0] dout;

output housefull;
output nostock;

output [3:0] wrptr;
output [3:0] rdptr;

wire [3:0] wrptrplus1;
wire [3:0] rdptrplus1;
reg [7:0] dout;

parameter EMP=0,PAR=1,FUL=2;
reg [1:0] state;
reg [3:0] wrptr,rdptr;

wire housefull,nostock;

integer i;

reg [7:0] Box[1:10];

always @ (posedge clk or posedge rst)
begin
     if (rst)
	     for (i=1;i<=10;i=i+1) 
		   Box[i] <=0;
     else 
	 case (state)
	 EMP,PAR: Box[wrptr]<=wr ? din: Box[wrptr];
	 endcase
end

always @ (posedge clk or posedge rst)
begin
   if (rst) dout<=0;
   else 
   case (state)
   PAR,FUL: dout<=rd ? Box[rdptr] : dout;
   endcase
end

always @ (posedge clk or posedge rst)
begin
     if (rst) state<=EMP;
	 else
	 case (state)
	 EMP: state <= wr? PAR: EMP;
	 PAR: if (wr && wrptrplus1==rdptr) state<=FUL;
	      else if (rd && (rdptrplus1==wrptr))
		     state<=EMP;
		  else state<=PAR;
	FUL: state <= rd ? PAR : FUL;
	endcase
end

assign housefull= (state==FUL);
assign nostock = (state==EMP);

always @ (posedge clk or posedge rst)
begin
if (rst) rdptr <=1;
else
    case (state)
	EMP: rdptr <= rdptr;
	PAR,FUL: rdptr<=rd ? rdptrplus1 : rdptr;
	endcase
end

assign wrptrplus1 = (wrptr==10) ? 1: wrptr+1;
assign rdptrplus1 =  (rdptr==10) ? 1: rdptr+1;

always @ (posedge clk or posedge rst)
begin
    if (rst) wrptr <=1;
	else 
	     case (state)
		 EMP,PAR: wrptr <= wr? wrptrplus1 : wrptr;
		 FUL: wrptr<=wrptr;
		 endcase
	end
	
endmodule
   
   
   
   
   
   
   
   
   
   
   
   