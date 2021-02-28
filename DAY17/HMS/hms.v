module hms (clk,rst,hrs,mins,secs);
input clk,rst;
output [4:0] hrs;
output [5:0] mins;
output [5:0] secs;
reg [4:0] hrs;
reg [5:0] mins;
reg [5:0] secs;

parameter FN=59;
parameter TT=23;

always @ (posedge clk or posedge rst)
begin
    if (rst)
	 hrs<=0;
	else 
	 if(secs==FN && mins==FN)
	  begin
	     hrs<= hrs==TT ? 0:(hrs+1);
	  end
	  else 
	     hrs<=hrs;
end

always @ (posedge clk or posedge rst)
begin
   if (rst)  secs<=0;
   else  secs<=pluse1(secs);  //secs==FN?0:(secs+1);
end

always @ (posedge clk or posedge rst)
begin
   if (rst) mins<=0;
   else
       begin
       if (secs==FN)
         mins<=pluse1(mins); // mins<=mins==FN?0:mins+1;
        else 
          mins <=mins;
        end
end

function [5:0] pluse1;
input [5:0] sig;
begin
  pluse1 = sig==FN ?0 : (sig+1);
end
endfunction

endmodule  
   