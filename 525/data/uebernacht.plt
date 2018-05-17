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
set xlabel "n"
set key right top

set output "uebernacht.png"
plot "Uebernachtmessung001.txt" using 1:2:(sqrt($2)) with yerrorbars notitle pt 0 lt rgb "black"

f(x) = a*exp(-b*(x-1750))
a=14000.124
b=0.0004
fit f(x) "Uebernachtmessung001.txt" using ($1>=1750?$1:1/0):($2>0?$2:1/0):(sqrt($2)) yerrors via a,b

set yrange [0:14000]

set output "uebernacht2.png"
plot "Uebernachtmessung001.txt" using ($1>=1750 & $1 < 4000?$1:1/0):2:(sqrt($2)) with yerrorbars notitle pt 0 lt rgb "black",\
	f(x) title "Regr." lw 2 lt rgb "red"
	
