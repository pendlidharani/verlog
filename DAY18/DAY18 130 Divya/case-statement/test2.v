module tb;
reg r;
initial 
begin
   r=0;
   casex (r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1;
      casex (r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1'bx;
      casex (r)
	    1'bz: $display ("Hi-Z");
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
 
   endcase
   r=1'bz;
      casex (r)
	     1'bx: $display ("UNKNOW");
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   end
endmodule