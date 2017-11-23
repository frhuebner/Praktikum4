reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


set ylabel "y/nm"
set xlabel "x/nm"
set size square
set zeroaxis
set xrange [-0.5:0.5]
set yrange [-0.5:0.5]
unset key

set output "out_rotate_old.png"
plot \
 "rotate_final.txt" using (cos(1.6000836172699093)*($1)+sin(1.6000836172699093)*($2)):(cos(1.6000836172699093)*$2-sin(1.6000836172699093)*$1) notitle with linespoints lt rgb "black"

set output "out_rotate.png"

set object circle at first 0,0 radius first 0.402979 fc rgb "navy"

#set object circle at first 578.013,58.4 radius char 0.5 \
#    fillcolor rgb 'red' fillstyle solid noborder
plot \
 "rotate_final.txt" using "pointx":"pointy" notitle with linespoints lt rgb "black"
