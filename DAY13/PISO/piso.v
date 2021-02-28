module piso (clk,rst,start,din,dout);
input clk,rst,start;
input [7:0] din;
output dout;
reg [3:0] cnt;
wire dout;

always @ (posedge clk or posedge rst)
begin
  if (rst) cnt<=8;
  else 
  if (cnt==8)
    begin
	  cnt<= start ? 7:8;
	  end
	  
   else 
     begin
	 if (cnt==0) cnt<=8;
	 else    cnt<=cnt-1;
	 end
	 end
`ifdef OUT1
reg dout;
always @*
begin 
  case (cnt)
   7: dout=din[7];
   6: dout=din[6];
   5: dout=din[5];
   4: dout=din[4];
   3: dout=din[3];
   2: dout=din[2];
   1: dout=din[1];
   0: dout=din[0];
   8: dout=0;
   default: dout=0;
   endcase
 end
 `endif
 assign dout = (cnt>=0 | cnt<=7) ? din[cnt] : 1'b0;
 endmodule