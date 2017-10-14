reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "{/Symbol w}_G/{/Symbol \260}"
set xlabel "{/Symbol l}/nm"
set key right bottom
set output "out_hg_raw.png"

set object circle at first 578.013,58.4 radius char 0.5 \
    fillcolor rgb 'red' fillstyle solid noborder
plot \
 "hg.txt" using "lambda":"wg":"dwg" with yerrorbars title "" lt rgb "black"

 
set xlabel "sin({/Symbol a})+sin({/Symbol b})"
set ylabel "{/Symbol l}/nm"
set key right bottom
set output "out_hg.png"

f(x) = a*x + b
a=650
b=-250
fit f(x) "hg.txt" using "x":"y":"dx":(1E-38) xyerrors via a,b

plot \
 "hg.txt" using "x":"y":"dx" with xerrorbars title "" lt rgb "black",\
 f(x) title sprintf("%.3f*x+%.3f", a, b) lt rgb "black"
