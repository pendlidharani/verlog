module covid_19 (clk,rst,inp,eurika);
input clk;
input rst;
input [6:0] inp ;
output eurika;

reg [2:0] state;
wire eurika;
parameter NO=0, SC=1, SO1=2,SR=3,SO2=4,SN=5 ,SA=6;

 `include "parameter.txt"
  
  always @(posedge clk or posedge rst)
  begin
       if (rst)   state<=NO;
	   else
	   case(state) 
	     NO : state <= inp==C ? SC: NO;
		 
		 SR : if (inp==O) state<=SO2;
		       else state<= inp==C ? SC : NO;
			   
		 SA : if (inp==C) state<=SC;
		 
		       else state<=NO;
		 SO1: case (inp)
		       R : state<= SR;
			   C: state<= SC;
			   default : state<=NO;
			   endcase
		 SC: case(1)
		       inp==O : state<=SO1;
			   inp==C : state<=SC;
			   default: state<=NO;
			   endcase
			   
		 SO2: case(inp)
		      N: state<= SN;
			  C: state<= SC;
			  default: state<=NO;
			  endcase
		 SN: case (inp)
		      A: state<= SA;
			  C: state<= SC;
			  default: state<=NO;
			  endcase
		endcase
	end
	assign eurika = (state==SA);
	
endmodule
		 