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
set xlabel "t/ms"
set key right top

#set object circle at first 578.013,58.4 radius char 0.5 \
#    fillcolor rgb 'red' fillstyle solid noborder

set output "plot_159.png"
plot "edit_159.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_160.png"
plot "edit_160.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_161.png"
plot "edit_161.dat" using (1000*($1)):2 notitle lt rgb "black"

set ylabel "Q/V"
set xlabel "t/s"
set key right top

set output "plot_q.png"
plot "edit_159.dat" using (1000*($1)):3 title "Meiboom-Gill" with lines lt rgb "red", "edit_160.dat" using (1000*($1)):3 title "Carr-Purcell" with lines lt rgb "black" 

set ylabel "I/V"
set xlabel "t/s"
set key right top
set output "plot_i.png"
plot "edit_159.dat" using (1000*($1)):4 title "Meiboom-Gill" with lines lt rgb "red", "edit_160.dat" using (1000*($1)):4 title "Carr-Purcell" with lines  lt rgb "black" 

set output "plot_ic.png"
plot "edit_160.dat" using (1000*($1)):2 title "U" with lines  lt rgb "black",\
	"edit_160.dat" using (1000*($1)):($4+10) title "I+10V" with lines  lt rgb "red",\
	"edit_160.dat" using (1000*($1)):($3+12) title "Q+12V" with lines  lt rgb "blue" 
	
set output "plot_ig.png"
plot "edit_159.dat" using (1000*($1)):2 title "U" with lines  lt rgb "black",\
	"edit_159.dat" using (1000*($1)):($4+10) title "I+10V" with lines  lt rgb "red",\
	"edit_159.dat" using (1000*($1)):($3+12) title "Q+12V" with lines  lt rgb "blue" 

set yrange [-2:12]
	
set output "plot_icg.png"
plot "edit_160.dat" using (1000*($1)):($4) title "Carr-Purcell I" with lines  lt rgb "black",\
	"edit_160.dat" using (1000*($1)):($3+3) title "Carr-Purcell Q+3V" with lines  lt 2 lc rgb "gray",\
	"edit_159.dat" using (1000*($1)):($4+5) title "Meiboom-Gill I+5V" with lines  lt rgb "red",\
	"edit_159.dat" using (1000*($1)):($3+8) title "Meiboom-Gill Q+8V" with lines  lt 2 lc rgb "blue" 
