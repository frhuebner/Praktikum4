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

set output "plot_141.png"
plot "edit_141.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_142.png"
plot "edit_142.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_143.png"
plot "edit_143.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_144.png"
plot "edit_144.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_145.png"
plot "edit_145.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_146.png"
plot "edit_146.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_147.png"
plot "edit_147.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_148.png"
plot "edit_148.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_149.png"
plot "edit_149.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_150.png"
plot "edit_150.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_151.png"
plot "edit_151.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_152.png"
plot "edit_152.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_153.png"
plot "edit_153.dat" using (1000*($1)):2 notitle lt rgb "black"
set output "plot_154.png"
plot "edit_154.dat" using (1000*($1)):2 notitle lt rgb "black"
