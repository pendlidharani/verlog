module tb;
reg clk=0,rst=1,veh=0,vehNBA=0;
always #5 clk=!clk;
initial #2 rst=0;
always @* vehNBA<=veh;

wire hwr,hwy,hwg,swr,swy,swg;
wire [2:0] hw,sw;


traddiclights traffic_inst (clk,rst,veh,hwr,hwy,hwg,swr,swy,swg);

assign hw={hwr,hwy,hwg};
assign sw= {swr,swy,swg};
initial
begin

 #55;
 veh=1;
 #10;
 veh=0;
 #1000;
 $finish;
 end
 endmodule