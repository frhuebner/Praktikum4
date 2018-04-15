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

set output "mca.png"
plot "e518-spectrum-z12.asc" notitle lt rgb "black"


