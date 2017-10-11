set terminal postscript eps enhanced size 3in,3in
set output 'hg_kilian.eps'
set title "Hg-Lampe"
set xlabel "sin({/Symbol a})+sin({/Symbol b})"
set ylabel "{/Symbol l}/nm"
set key right bottom

f(x) = a*x + b
fit f(x) "hg.txt" using 10:12:11:(1E-38) xyerrors via a,b

plot \
 "hg.txt" using "x":"y":"dx" with xerrorbars title "" pointtype 1,\
 f(x) title sprintf("%.3f*x+%.3f", a, b)