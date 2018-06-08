reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

set ylabel "N"
set xlabel "n
set key right top

set output "untergrund.png"
plot "raw_erde.txt" u "bin":"untergrund":"dunter" w yerrorbars notitle lt rgb "black",\

set output "erde_raw.png"
plot "raw_erde.txt" u "bin":"erde":"derde" w yerrorbars notitle lt rgb "black",\

set output "erde.png"
plot "raw_erde.txt" u "bin":"cerdem":"dcerde" w yerrorbars notitle lt rgb "black",\
	
