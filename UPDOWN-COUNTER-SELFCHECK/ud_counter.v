module updowncounter(A0, A1,ncs,nwr,nrd,clk,rst,start,din,err,cout,dir,ec);
	input ncs,nwr,nrd, A0, A1,clk,rst,start;
	inout [7:0] din;

	output reg [7:0] cout;
	output reg dir;
	output err;
	output reg ec;


	     // all circutes wires and regs declaration

	wire b1,b2,b3,b4;
    reg [7:0] plr,ulr,llr,ccr,inc_cc;
	wire out2;
	reg out1;
	reg start_pos_hold;
	wire a1,a2,a3,a4,a5,a6,a7,a8,a9;

    wire co1,co2,co3,co4,co5,co6;
	wire c1,c2,c3,c4,c5,c6,c7,c8;
	wire r5,r6,r7,r8,r9;
	wire i1,i2,i3,i4;
	wire end1,end2,end3,end4;


	//write operation
	assign b1=((~ncs&&~nwr&&nrd) && ~A1 && ~A0);
	assign b2=((~ncs&&~nwr&&nrd) && ~A1 && A0);
	assign b3=((~ncs&&~nwr&&nrd) && A1 && ~A0);
	assign b4=((~ncs&&~nwr&&nrd) && A1 && A0);
	always@(posedge clk)
	begin
		if (rst) plr<=8'h00;
		else if (b1==1)
		plr<=din;
	end

	always@(posedge clk)
	begin
		if (rst) ulr<=8'hff;
		else if (b2==1)
		ulr<=din;
	end

	//assign b3=((~ncs&&~nwr&&nrd) & A1 & ~A0);
	always@(posedge clk)
	begin
			if (rst) llr<=8'h00;
			else if (b3==1)
			llr<=din;
	end

	always@(posedge clk)
	begin
		if (rst) ccr<=8'h00;
		else if (b4==1)
		ccr<=din;
	end


	//read operation
	assign din=(~ncs&&nwr&&~nrd&&~A1&&~A0)?plr:8'dz;

	assign din=(~ncs&&nwr&&~nrd&&A1&&~A0)?ulr:8'dz;

	assign din=(~ncs&&nwr&&~nrd&&~A1&&A0)?llr:8'dz;

	assign din=(~ncs&&nwr&&~nrd&&A1&&A0)?ccr:8'dz;

	//start posedge



	always @(posedge clk or posedge rst)
	begin
		if (rst)
		out1<=1'b0;
		else
		out1<=start;
	end
    assign start_posedge= start && ~out1;
	//counter
	/*
  assign r5= ( (plr==ulr)) && (plr==llr) && (~start && ~dir) && (start_pos_hold==1);

  assign r6= ( (start_pos_hold )&& (dir  && ~start));

  assign r7= ((start_pos_hold) && (plr==llr) && (dir==1));

  assign r8= ((start_pos_hold )&& (cout==plr && ~dir));

  assign r9=(ccr==inc_cc) && ec;

always @ (posedge clk or posedge rst)
   begin
     if (rst)
      cout<=8'b0;
		else if (err==1) cout<=cout;
		else if ((start==0)&& (start_pos_hold==0)) cout<=cout;
		else if ((start==1)&& (start_pos_hold==0)) cout<=plr;
		else if (ccr==0) cout<=cout;
		else if (r5==1) cout<=cout;
		else if (r6==1) cout<=cout+1;
		else if (r7==1) cout<=cout+1;
		else if (r8==1) cout<=cout-1;
		else if ( ec && (ccr==inc_cc) ==1) cout<=cout;
		else cout <=cout-1;

  end */

   assign co1=((plr==llr)&&(plr ==ulr))&&(start_pos_hold==1)&&((~start)&(~dir));
  assign co2=(start_pos_hold==1)&&(dir&&(~start));

  assign co3=(start_pos_hold==1)&&(plr==llr)&&(dir==1);
  assign co4=(start_pos_hold==1)&&((cout==plr)&&(~dir));
  assign co5=(ccr==inc_cc)&&ec;
  assign c06=(plr==0 && llr==0 && ulr==0);

	always@(posedge clk)
	begin
	if(rst) cout<=8'b0;
	else if(err==1) cout<=cout;

	else if ((start_pos_hold==0)&&(start==0)) cout<=cout;
	else if ((start_pos_hold==0)&&(start==1)) cout<=plr;
	else if (ccr==0) cout<=cout;
	else if (co1==1) cout<=cout;
	else if (co2==1) cout<=cout+1;
	else if (co3==1) cout<=cout+1;
	else if (co4==1) cout<=cout-1;
	else if (co5==1) cout<=cout;

	else cout<=cout-1;
	end



	//start posedge hold


	 assign a4 =((plr==ulr)&& (plr==llr))&& ((cout==plr)&& (dir==0)) && (inc_cc== ccr-1);

	 assign a5=((plr==ulr)&&(cout==plr+1))&&(~dir&&(inc_cc==ccr-1));
	 assign a7=(dir&&(cout==plr-1))&&(inc_cc==ccr-1);

	 assign a8 = ((cout==plr+1)&&(plr==llr))&&((inc_cc==ccr-1)&&~dir);
	 assign a9 =(dir&&(cout==plr-1)&&(inc_cc==ccr-1));
	always @ (posedge clk or posedge rst )
	 begin
	   if (rst)
		start_pos_hold<= 1'b0;
	   else if (err==1) start_pos_hold <= 1'b0;
       else if (ccr==0) start_pos_hold <= 1'b0;
	   else if (ec==1) start_pos_hold <= 1'b0;
	   else if (a4==1) start_pos_hold <= 1'b0;
	   else if (a5==1) start_pos_hold <= 1'b1;
       else if (a8==1) start_pos_hold <= 1'b0;
	   else if (a7==1) start_pos_hold <= 1'b0;
	   else if (a9==1) start_pos_hold <= 1'b0;
	   else if (start_posedge==1) start_pos_hold<=1'b1;
	   else start_pos_hold <= start_pos_hold;
	end


	//dir


	assign c1=((plr==llr)&&(plr==ulr))&&(dir&&(cout==plr));
	assign c2=((ulr==plr+1)&&(llr==plr-1))&&(~dir&&(cout==plr));
	assign c3=(plr==llr)&&~dir&&(cout==plr+1);
	assign c4=(plr==ulr)&&start&&dir;
	assign c5=(plr==ulr)&&(cout==llr+1)&&(dir==0);
	assign c6=((plr==llr)&&(cout==ulr-1))&&(~dir&&start);
	assign c7=((plr==0)&& (ulr==0)&& (llr==0)  );


	always @ (posedge clk or posedge rst)
	begin
		if (rst)
		  dir<=1'b1;
		else if (c1==1) dir<=1;
		else if (c2==1) dir<=1;
		else if (c3==1) dir<=1;
		else if (c4==1) dir<=0;
		else if (c5==1) dir<=1;
		else if (c6==1) dir<=1;
		else if (cout== ulr-1) dir<=0;
		else if (cout ==llr+1) dir<=1;
		else if (c7 ==1 ) dir<=0;
		
		else   dir<=dir;


	end

	//error


	//inc_cc


    assign i1=((plr==ulr)&&(cout==plr))&&((start_pos_hold==1)&&(~dir))&&(plr==llr);
	assign i2=((plr==llr)&&(cout==plr+1))&&(start_pos_hold==1)&&(~dir);
	assign i3=((plr==ulr)&&(cout==plr-1))&&((dir)&&(start_pos_hold==1));
	assign i4=(cout==plr-1)&&dir&&(start_pos_hold==1);

	always@(posedge clk)
	begin
	if(rst) inc_cc=8'd0;
	else if(ec==1) inc_cc<=8'd0;
	else if(i1==1) inc_cc<=inc_cc+1;
	else if(i2==1) inc_cc<=inc_cc+1;
	else if(i3==1) inc_cc<=inc_cc+1;
	else if(i4==1) inc_cc<=inc_cc+1;
	else inc_cc<=inc_cc;
	end

	//end of count

	assign end1=(plr==llr)&&((plr==ulr)&&(cout==plr))&&(~dir&&(inc_cc==ccr-1));
	assign end2=((plr==llr)&&(inc_cc==ccr-1))&&((dir==0)&&(cout==plr+1));
	assign end3=((plr==ulr)&(inc_cc==ccr-1))&&((dir)&&(cout==plr-1));
	assign end4=(inc_cc==ccr-1)&&(dir==1)&&(cout==plr-1);

	always@(posedge clk)
	begin
	if (rst) ec<=0;
	else if (inc_cc==ccr) ec<=0;
	else if (end1==1) ec<=1;
	else if (end2==1) ec<=1;
	else if (end3==1) ec<=1;
	else if (end4==1) ec<=1;
	else ec<=0;
	end


	assign err=((plr<llr) || (plr>ulr) || (start&&err))?1'b1:1'b0;

	endmodule