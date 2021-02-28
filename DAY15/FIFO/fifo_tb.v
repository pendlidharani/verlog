module tb;

reg clk=0,rst=1,wr=0,wrNBA=0,rd=0,rdNBA=0;
reg [7:0] din=0,dinNBA=0;
wire [7:0] dout;

wire housefull;
wire nostock;

wire [3:0] wrptr;
wire [3:0] rdptr;

fifo fifo_inst(clk,rst,wrNBA,rdNBA,wrptr,rdptr,dinNBA,dout,housefull,nostock);

always @* wrNBA<=wr;
always @* rdNBA<=rd;
always @* dinNBA<=din;

always #5 clk=!clk;
initial #2 rst=0;

enum {EMP,PAR,FUL} state_txt;

always @*
  begin
    case(tb.fifo_inst.state)
	0: state_txt=EMP;
	1: state_txt=PAR;
	2: state_txt=FUL;
	endcase
  end
  
 initial
  begin
     #55;
	 repeat (12)
	    begin
		wr=1;
		din=$random;
		#10;
		wr=0;
		#50;
		end
		$stop;
	repeat (5)
	    begin
		rd=1;
		din=$random;
		#10;
		rd=0;
		#50;
		end 
		$finish;
		end
endmodule
		
		


