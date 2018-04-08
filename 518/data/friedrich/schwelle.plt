reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "Koinzidenz/D25"
set xlabel "U_S/mV"
set key right top



set output "schwelle.png"
plot "schwelle.txt" using 1:6 notitle lt rgb "black"
