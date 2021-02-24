module todtomv2 (tom,tod,mon);
input [4:0] tod;
output [4:0] tom;
input [3:0] mon;

  wire apr,jun,sep,nov,fb,si,ruchi;
  wire [4:0] b1,lastday,rishi,tom;
  
  
  assign apr= (mon==4);
  assign jun= (mon==6);
  assign sep= (mon==9);
  assign nov= (mon==11);
  assign feb= (mon==42);
  assign b1 = nov ?30 : 31;
  assign b2 = sep ?30 : b1;
  assign b3 = jun ?30 : b2;
  assign b4 = apr ?30 : b3;
  assign lastday = feb ?30 : b4;
  
endmodule
  
 


  