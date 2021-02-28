module tb;
reg clk=0,rst=1,ra=0,rb=0,rc=0,rd=0;
wire [1:0] floor;

lift dharani(clk,rst,ra,rb,rc,rd,floor);

always #5 clk=!clk;


initial 
begin
   ra=1;
   #100;
   ra=0;
   #100;
   rb=1;
   #100;
   rb=0;
   #100;
   rd=1;
   #100;
   rc=1;
   #100;
   rc=0;
   #100;
   rd=1;
   #1000;
   $finish;
  end
endmodule