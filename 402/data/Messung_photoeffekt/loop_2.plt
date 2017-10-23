set xrange [l:r]
f(x)=a*x+b
fit f(x) i.".txt" u (-($1)):6:2:7 xyerror via a,b
set xrange[-2:0.1]
set yrange[-0.5:10]
set autoscale ymax
set terminal postscript eps enhanced size 3in, 2.25in
set output i.".eps"
set xlabel 'U_g_e_g/V'
set ylabel '(I-I_0)^{1/2}/(nA)^{1/2}'
set key right bottom
plot i.".txt" u (-($1)):6:2:7 with xyerrorbars title ii, f(x) title 'Regr.'