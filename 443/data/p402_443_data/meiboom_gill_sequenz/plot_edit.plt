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

#set object circle at first 578.013,58.4 radius char 0.5 \
#    fillcolor rgb 'red' fillstyle solid noborder

set output "plot_159.png"
plot "edit_159.dat" using 1:2 notitle lt rgb "black"
set output "plot_160.png"
plot "edit_160.dat" using 1:2 notitle lt rgb "black"
set output "plot_161.png"
plot "edit_161.dat" using 1:2 notitle lt rgb "black"

set ylabel "Q/V"
set xlabel "t/s"
set key right top

set output "plot_q.png"
plot "edit_159.dat" using 1:3 title "Meiboom-Gill" with lines lt rgb "red", "edit_160.dat" using 1:3 title "Carr-Purcell" with lines lt rgb "black" 

set ylabel "I/V"
set xlabel "t/s"
set key right top
set output "plot_i.png"
plot "edit_159.dat" using 1:4 title "Meiboom-Gill" with lines lt rgb "red", "edit_160.dat" using 1:4 title "Carr-Purcell" with lines  lt rgb "black" 

set output "plot_ic.png"
plot "edit_160.dat" using 1:2 title "Carr-Purcell" with lines  lt rgb "black",\
	"edit_160.dat" using 1:($4+10) title "Carr-Purcell" with lines  lt rgb "red",\
	"edit_160.dat" using 1:($3+12) title "Carr-Purcell" with lines  lt rgb "blue" 
	
set output "plot_ig.png"
plot "edit_159.dat" using 1:2 title "Meiboom-Gill" with lines  lt rgb "black",\
	"edit_159.dat" using 1:($4+10) title "Meiboom-Gill" with lines  lt rgb "red",\
	"edit_159.dat" using 1:($3+12) title "Meiboom-Gill" with lines  lt rgb "blue" 