reset
set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
set pointsize 3
#set title "Hg-Lampe"


set ylabel "{/Symbol w}_G/{/Symbol \260}"
set xlabel "{/Symbol l}/nm"
set key right bottom
set output "out_hg_raw.eps"

plot \
 "hg.txt" using "lambda":"wg":"dwg" with yerrorbars title "" lt rgb "black"

 
set xlabel "sin({/Symbol a})+sin({/Symbol b})"
set ylabel "{/Symbol l}/nm"
set key right bottom
set output "out_hg.eps"

f(x) = a*x + b
fit f(x) "hg.txt" using 10:12:11:(1E-38) xyerrors via a,b

plot \
 "hg.txt" using "x":"y":"dx" with xerrorbars title "" lt rgb "black",\
 f(x) title sprintf("%.3f*x+%.3f", a, b) lt rgb "black"
