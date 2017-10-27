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

set output "plot_76.png"
plot "edit_76.dat" using 1:2 notitle lt rgb "black"
set output "plot_77.png"
plot "edit_77.dat" using 1:2 notitle lt rgb "black"
set output "plot_78.png"
plot "edit_78.dat" using 1:2 notitle lt rgb "black"
set output "plot_79.png"
plot "edit_79.dat" using 1:2 notitle lt rgb "black"
set output "plot_80.png"
plot "edit_80.dat" using 1:2 notitle lt rgb "black"
set output "plot_81.png"
plot "edit_81.dat" using 1:2 notitle lt rgb "black"
set output "plot_82.png"
plot "edit_82.dat" using 1:2 notitle lt rgb "black"
set output "plot_83.png"
plot "edit_83.dat" using 1:2 notitle lt rgb "black"
set output "plot_84.png"
plot "edit_84.dat" using 1:2 notitle lt rgb "black"
set output "plot_85.png"
plot "edit_85.dat" using 1:2 notitle lt rgb "black"
set output "plot_86.png"
plot "edit_86.dat" using 1:2 notitle lt rgb "black"
set output "plot_87.png"
plot "edit_87.dat" using 1:2 notitle lt rgb "black"
set output "plot_88.png"
plot "edit_88.dat" using 1:2 notitle lt rgb "black"
set output "plot_89.png"
plot "edit_89.dat" using 1:2 notitle lt rgb "black"
set output "plot_90.png"
plot "edit_90.dat" using 1:2 notitle lt rgb "black"
set output "plot_91.png"
plot "edit_91.dat" using 1:2 notitle lt rgb "black"
set output "plot_92.png"
plot "edit_92.dat" using 1:2 notitle lt rgb "black"
set output "plot_93.png"
plot "edit_93.dat" using 1:2 notitle lt rgb "black"
set output "plot_94.png"
plot "edit_94.dat" using 1:2 notitle lt rgb "black"
set output "plot_95.png"
plot "edit_95.dat" using 1:2 notitle lt rgb "black"
set output "plot_96.png"
plot "edit_96.dat" using 1:2 notitle lt rgb "black"
set output "plot_97.png"
plot "edit_97.dat" using 1:2 notitle lt rgb "black"
set output "plot_98.png"
plot "edit_98.dat" using 1:2 notitle lt rgb "black"
set output "plot_99.png"
plot "edit_99.dat" using 1:2 notitle lt rgb "black"
set output "plot_100.png"
plot "edit_100.dat" using 1:2 notitle lt rgb "black"
set output "plot_101.png"
plot "edit_101.dat" using 1:2 notitle lt rgb "black"
set output "plot_102.png"
plot "edit_102.dat" using 1:2 notitle lt rgb "black"
set output "plot_103.png"
plot "edit_103.dat" using 1:2 notitle lt rgb "black"
set output "plot_104.png"
plot "edit_104.dat" using 1:2 notitle lt rgb "black"
set output "plot_105.png"
plot "edit_105.dat" using 1:2 notitle lt rgb "black"
