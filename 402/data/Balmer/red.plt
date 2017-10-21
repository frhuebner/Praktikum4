reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

#set title "Hg-Lampe"
set xlabel "{/Symbol g}/°"
set ylabel "I/%"
set key right top

set output "out_red_raw.png"

plot \
 "red_raw.txt" using 1:2 title "I({/Symbol g})" lt rgb "black",\

set output "out_red.png"

f(x) = a1*exp(-(x-b1)**2/2/s1**2)+a2*exp(-(x-b2)**2/2/s2**2)+d

a1=90
a2=60
b1=-0.34
b2=-0.3
s1=0.02
s2=0.02
d=10
fit f(x) "red.txt" using 1:2 via a1,a2,b1,b2,s1,s2,d

plot \
 "red.txt" using "beta":"I" title "I({/Symbol g})" pointtype 1 lt rgb "black",\
 a1*exp(-(x-b1)**2/2/s1**2)+d title "" lt rgb "red",\
 a2*exp(-(x-b2)**2/2/s2**2)+d title "" lt rgb "blue",\
 f(x) title "Regr."  lt rgb "black"
