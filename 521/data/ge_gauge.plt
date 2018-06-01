reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

set ylabel "N"
set xlabel "E/keV"
set key right top

f(x) = a*x
a=1
b=1
fit f(x) "ge_gauge.txt" using "energy":"b":"s" yerrors via a

set output "ge_gauge.png"
plot "ge_gauge.txt" using "energy":"b":"s" with yerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"
	
