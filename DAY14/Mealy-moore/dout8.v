`define A always @ (posedge clk or posedge rst)

module din4_dout8 (clk,rst,din,dout,load);
input clk,rst;
input load;
output [7:0] dout;
input [3:0] din;

wire [7:0] dout;
reg [3:0] dout74,dout30;
wire msb;
reg lsb;
reg state;
parameter IDLE=0,SMSB=1;

`A

begin
    if (rst) dout74<=0;
	else dout74<= msb ? din : dout74;
end

`A 
begin 
    if (rst) dout30<=0;
	else dout30<= lsb ? din : dout30;
end
assign dout={dout74,dout30};

`ifdef VER1

always @ (negedge clk or posedge rst)
begin
   if (rst) msb<=0;
   else msb<=load;
end
`endif


`ifdef VER2
`A
begin 
if (rst) state<= IDLE;
else 
case (state)
IDLE: state<= load? SMSB : IDLE;
SMSB: state<= IDLE;
endcase
end

assign msb = state==SMSB;

always @ *
begin
    if (state==IDLE)  lsb =load?1:0;
	else lsb=0;
end

`endif

endmodule

