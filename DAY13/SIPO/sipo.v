module sipo (clk,rst,start,din,dout);
input clk,rst,start;
input din;
output [7:0] dout;
reg [3:0]  cnt;
reg [7:0] dout;

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

always @ (posedge clk or posedge rst)
begin 
  if (rst) dout<=8'bxxxxxxxx;
  else if (cnt==8) dout<=dout;
  else
  `ifdef VER1
  case (cnt)
   7: dout={din,dout[6:0]};
   6: dout={dout[7],din,dout[5:0]};
   5: dout={dout[7:6],din,dout[4:0]};
   4: dout={dout[7:5],din,dout[3:0]};
   3: dout={dout[7:4],din,dout[2:0]};
   2: dout={dout[7:3],din,dout[1:0]};
   1: dout={dout[7:2],din,dout[0]};
   0: dout={dout[7:1],din};
  
   endcase
   `endif
   dout[cnt]<= din;
  
 end
 endmodule