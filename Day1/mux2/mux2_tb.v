module tb();
reg [1:0]i1,i0;
wire  [1:0]y;
reg s;
mux2 abc (y,s,i1,i0);

initial 
 begin 
  repeat (10)
   begin
     i0=$random;
	 i1=$random;
     s=$random; 
       #2;
	   $display (s,i1,i0,":",y);
	   end
	end
endmodule