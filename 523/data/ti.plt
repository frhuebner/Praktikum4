reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "Y/V^{0.5}"
set xlabel "{/Symbol e}"
set key right top


f(x) = a*x + b
a=7800
b=-150
fit f(x) "ti.txt" using (column("eps")>1.35 && column("eps")<2.3?column("eps"):1/0):"y2":"deps":((column("dy2"))+0.001) xyerrors via a,b

set output "ti.png"
plot "ti.txt" using "eps":"y2":"deps":((column("dy2"))+0.001) with xyerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"
	
