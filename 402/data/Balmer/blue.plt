reset
set bars 0.5
show bars
set pointsize 3
#set title "Hg-Lampe"
set xlabel "{/Symbol g}/°"
set ylabel "I/%"
set key right top
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set output "out_blue0.png"

f(x) = a*exp(-(x-b)**2/2/s**2)+d

a=3
b=-1.53
s=0.03
d=6.4
fit f(x) "blue0.txt" using 1:2 via a,b,s,d

plot \
 "blue0.txt" using "beta":"I" title "I({/Symbol g})" pointtype 1 lt rgb "black",\
 f(x) title "Fit"  lt rgb "black"

 
set output "out_blue1.png"

f(x) = a1*exp(-(x-b1)**2/2/s1**2)+a2*exp(-(x-b2)**2/2/s2**2)+d

a1=30
a2=2
b1=-1.2
b2=-1.251
s1=0.054
s2=0.005
d=6
fit f(x) "blue1.txt" using 1:2 via a1,a2,b1,b2,s1,s2,d


plot \
 "blue1.txt" using "beta":"I" title "I({/Symbol g})" pointtype 1 lt rgb "black",\
 f(x) title "Fit"  lt rgb "black"