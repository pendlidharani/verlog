module tb;
reg r;
initial 
begin
   r=0;
   casez(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1;
    casez(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1'bx;
    casez(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1'bz;
    casez(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
    r=1'bz;
    casez(r)
	   1:$display ("ONE");
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
    r=1'bz;
    casez(r)
	   1'bx: $display ("UNKNOW");
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
    r=1'bz;
    casez(r)
	 1'bz: $display ("Hi-Z");
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   
   end
endmodule