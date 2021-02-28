module tb;
//read-read race does not exist

integer a;
initial #5 a=50;
initial #6 $display (a);//50
initial #6 $display (a);//50

endmodule
