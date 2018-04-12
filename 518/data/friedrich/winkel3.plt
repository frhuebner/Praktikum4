reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "Koinzidenzen"
set xlabel "{/Symbol f}/°"
set key right top

set object circle at first -45,37 radius char 0.5 \
    fillcolor rgb 'red' fillstyle solid noborder

set output "winkel3.png"
plot "winkel3.txt" using 3:5:4:6 with xyerrorbars notitle lt rgb "black"


set ylabel "Koinzidenzen"
set xlabel "cos^2{/Symbol f}"
set key right bottom
set xrange [-0.1:1.1]
f(x) = a*x + b
a=7800
b=-150
fit f(x) "winkel2.txt" using 7:5:8:6 xyerrors via a,b

set output "winkel3_cos.png"
plot "winkel3.txt" using 7:5:8:6 with xyerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"

	
set ylabel "Koinzidenzen"
set xlabel "{/Symbol f}/°"
set key right top
unset xrange

set object circle at first -45,37 radius char 0.5 \
    fillcolor rgb 'red' fillstyle solid noborder

set output "winkel3_ges.png"
plot "winkel3.txt" using 3:5:4:6 with xyerrorbars notitle lt rgb "black",\
	a*cos(x/180*pi)**2 + b title "Regr." lt rgb "black"