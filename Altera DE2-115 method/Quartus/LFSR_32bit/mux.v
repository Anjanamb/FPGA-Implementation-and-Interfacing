module mux(out, 
	control, 
	a, 
	b
	);
	
	input a,b,control;
	output out;
	wire i1,i2,i3;
	and (i2,i1,a);
	and (i3,b,control);
	not (i1,control);
	or (out,i2,i3);
endmodule