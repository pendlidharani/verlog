module tb;
reg r;
initial 
begin
   r=0;
   case(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1;
      case(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1'bx;
      case(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   r=1'bz;
      case(r)
   0: $display ("ZERO");
   1:$display ("ONE");
   1'bx: $display ("UNKNOW");
   1'bz: $display ("Hi-Z");
   endcase
   end
endmodule