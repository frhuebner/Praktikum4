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

set output "plot_106.png"
plot "edit_106.dat" using 1:2 notitle lt rgb "black"
set output "plot_107.png"
plot "edit_107.dat" using 1:2 notitle lt rgb "black"
set output "plot_108.png"
plot "edit_108.dat" using 1:2 notitle lt rgb "black"
set output "plot_109.png"
plot "edit_109.dat" using 1:2 notitle lt rgb "black"
set output "plot_110.png"
plot "edit_110.dat" using 1:2 notitle lt rgb "black"
set output "plot_111.png"
plot "edit_111.dat" using 1:2 notitle lt rgb "black"
set output "plot_112.png"
plot "edit_112.dat" using 1:2 notitle lt rgb "black"
set output "plot_113.png"
plot "edit_113.dat" using 1:2 notitle lt rgb "black"
set output "plot_114.png"
plot "edit_114.dat" using 1:2 notitle lt rgb "black"
set output "plot_115.png"
plot "edit_115.dat" using 1:2 notitle lt rgb "black"
set output "plot_116.png"
plot "edit_116.dat" using 1:2 notitle lt rgb "black"
set output "plot_117.png"
plot "edit_117.dat" using 1:2 notitle lt rgb "black"
set output "plot_118.png"
plot "edit_118.dat" using 1:2 notitle lt rgb "black"
set output "plot_119.png"
plot "edit_119.dat" using 1:2 notitle lt rgb "black"
set output "plot_120.png"
plot "edit_120.dat" using 1:2 notitle lt rgb "black"
set output "plot_121.png"
plot "edit_121.dat" using 1:2 notitle lt rgb "black"
set output "plot_122.png"
plot "edit_122.dat" using 1:2 notitle lt rgb "black"
set output "plot_125.png"
plot "edit_125.dat" using 1:2 notitle lt rgb "black"
set output "plot_126.png"
plot "edit_126.dat" using 1:2 notitle lt rgb "black"
set output "plot_127.png"
plot "edit_127.dat" using 1:2 notitle lt rgb "black"
set output "plot_128.png"
plot "edit_128.dat" using 1:2 notitle lt rgb "black"
set output "plot_129.png"
plot "edit_129.dat" using 1:2 notitle lt rgb "black"
set output "plot_130.png"
plot "edit_130.dat" using 1:2 notitle lt rgb "black"
set output "plot_131.png"
plot "edit_131.dat" using 1:2 notitle lt rgb "black"
set output "plot_132.png"
plot "edit_132.dat" using 1:2 notitle lt rgb "black"
set output "plot_133.png"
plot "edit_133.dat" using 1:2 notitle lt rgb "black"
set output "plot_134.png"
plot "edit_134.dat" using 1:2 notitle lt rgb "black"
set output "plot_135.png"
plot "edit_135.dat" using 1:2 notitle lt rgb "black"
set output "plot_136.png"
plot "edit_136.dat" using 1:2 notitle lt rgb "black"
set output "plot_137.png"
plot "edit_137.dat" using 1:2 notitle lt rgb "black"
set output "plot_138.png"
plot "edit_138.dat" using 1:2 notitle lt rgb "black"
set output "plot_139.png"
plot "edit_139.dat" using 1:2 notitle lt rgb "black"
set output "plot_140.png"
plot "edit_140.dat" using 1:2 notitle lt rgb "black"
