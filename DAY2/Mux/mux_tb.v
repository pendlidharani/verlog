// Code your testbench here
// or browse Examples
module tb; 
reg i1,i0,s; 
wire y; 
mux one (y,s,i0,i1); 
initial 
begin 
$display ("s,i1,i0,y"); 
  s = 0; i1 = 0; i0 = 0; #1; $display (s,i1,i0,":",y); 
s = 0; i1 = 0; i0 = 1; #1; $display (s,i1,i0,":",y); 
s = 0; i1 = 1; i0 = 0; #1; $display (s,i1,i0,":",y); 
s = 0; i1 = 1; i0 = 1; #1; $display (s,i1,i0,":",":",y); 
s = 1; i1 = 0; i0 = 0; #1; $display (s,i1,i0,":",y); 
s = 1; i1 = 0; i0 = 1; #1; $display (s,i1,i0,":",y); 
s = 1; i1 = 1; i0 = 0; #1; $display (s,i1,i0,":",y); 
s = 1; i1 = 1; i0 = 1; #1; $display (s,i1,i0,":",y); 
end 
endmodule 