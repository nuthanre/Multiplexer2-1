module mux_2(out, i0, i1, s);

output out;       // ports declaration
input i0, i1, s;
wire r1,r2,r3;

not n1(r3, s);

and a1(r1, i0, r3);
and a2(r2, i1, s);

or o1(out, r1, r2);

endmodule



