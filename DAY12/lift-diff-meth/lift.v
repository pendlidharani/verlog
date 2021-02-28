module lift (clk,rst,ra,rb,rc,rd,floor);
input clk,rst,ra,rb,rc,rd;
output [1:0] floor;
reg [1:0] floor;

parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;

always @ (posedge clk or posedge rst )
 begin 
   if (rst==1) floor<=A;
  
   else
   
   `ifdef STYLE1
     begin
	        if (ra) floor<=A;
		else if (rb) floor<=B;
		else if (rc) floor<=C;
		else if (rd) floor<=D;
		else floor<=floor;
	 end
	 `endif
	 
	`ifdef STYLE2
	      case (1)
		  ra: floor<=A;
		  rb: floor<=B;
		  rc: floor<=C;
		  rd: floor<=D;
		  default: floor<=floor;
		  endcase
	  `endif
	  
	  `ifdef STYLE3
	       casex({ra,rb,rc,rd})
		   4'b1xxx: floor<=A;
		   4'b01xx: floor<=B;
		   4'b001x: floor<=C;
		   4'b0001: floor<=D;
		   default: floor<=floor;
		   endcase
	   `endif
    end

endmodule
	 
		