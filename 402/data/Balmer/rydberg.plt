reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "nm/{/Symbol l}"
set xlabel "0,25-1/n^2"
set key right bottom

set output "out_rydberg.png"

f(x) = a*x
a=650
b=-250
fit f(x) "rydberg.txt" using "rx":"ry":"dry" yerrors via a

plot \
 "rydberg.txt" using "rx":"ry":"dry" with yerrorbars title "" lt rgb "black",\
 f(x) title "Regr." lt rgb "black"
