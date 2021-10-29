module mux_2tb();

reg i0, i1, s;
wire out;

mux_2 dut_behav(.out(out), .i0(i0), .i1(i1), .s(s));

initial 
 begin
	
	 i0 = 0; i1 = 1; s = 0;
	#5 s = 1;
	 
	#5 i0 = 1; i1 = 0; s = 0;
	#5 s = 1;
	
	#5 i0 = 1; i1 = 1; s = 0;
	#5 s = 1;
	#5 $finish;
  end
initial
	$monitor($time, "ns i0 = %b i1 = %b s = %b out = %b", i0, i1, s, out);
initial 
 begin
	$dumpfile("mux_2tb.vcd");
	$dumpvars;
 end
endmodule
