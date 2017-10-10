reset
set bars 0.5
show bars
set pointsize 3
set title "Hg-Lampe"
set xlabel "sin({/Symbol a})+sin({/Symbol b})"
set ylabel "{/Symbol l}/nm"
set key right bottom
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set output "out_hg.png"

f(x) = a*x + b
fit f(x) "hg.txt" using 10:12:11:(1E-38) xyerrors via a,b

plot \
 "hg.txt" using "x":"y":"dx" with xerrorbars title "" pointtype 1 lt rgb "black",\
 f(x) title sprintf("%.3f*x+%.3f", a, b)  lt rgb "black"
