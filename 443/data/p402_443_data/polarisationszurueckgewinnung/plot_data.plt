reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "U/V"
set xlabel "{/Symbol t}/ms"
set key right bottom


set xrange [0:250]
f(x) = m*(1-2*exp(-x/t))
#m=650
#b=-250
fit f(x) "data_final.txt" using ($2<165?$2:1/0):"y":"dy" yerrors via m,t

set object circle at first 170, 8.56563 radius char 0.5 \
    fillcolor rgb 'red' fillstyle solid noborder
	
set object circle at first 180,8.55625 radius char 0.5 \
    fillcolor rgb 'red' fillstyle solid noborder

set output "out_pol.png"
plot "data_final.txt" using "tau":"y":"dy" with yerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"

