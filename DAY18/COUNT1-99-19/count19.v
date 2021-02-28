module count19 (clk,rst,cnt);
input clk,rst;
output [4:0] cnt;
reg [4:0] cnt;
parameter NOT9=0,F9=1,S9=2;
reg [1:0] state;

always @ (posedge clk or posedge rst)
begin
   if (rst) 

   state<= NOT9;
   else
      case(state)
   NOT9: state<=cnt==8? F9:NOT9;
   F9: state <= S9;
   S9:state<=NOT9;
   endcase
end

always @ (posedge clk or posedge rst)
begin
   if (rst) cnt<=0;
   else 
      case (state)
     NOT9: case(cnt)
     19: cnt<=0;
     8:cnt<=9;
     default: cnt<=cnt+1;
     endcase
F9:cnt<=9;
S9:cnt<=11;
endcase
end
endmodule	 
