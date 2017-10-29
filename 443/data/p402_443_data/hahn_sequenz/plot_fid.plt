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
set xlabel "t/s"
set key right top


f(x) = m*exp(-x/t)
m=9
t=0.002
fit f(x) "fid.txt" using 1:"y":"dy" yerrors via m,t

#set object circle at first 170, 8.56563 radius char 0.5 \
#    fillcolor rgb 'red' fillstyle solid noborder
	
#set object circle at first 180,8.55625 radius char 0.5 \
#    fillcolor rgb 'red' fillstyle solid noborder

set output "out_fid.png"
plot "fid.txt" using "tau":"y":"dy" with yerrorbars notitle lt rgb "gray",\
	f(x) title "Regr." lt rgb "red"

