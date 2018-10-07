set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "bin"
set ylabel ""

unset xrange
set key bottom left

set arrow from 8.2, graph 0 to 8.2, graph 1 nohead lt rgb "black" dt '-'

set output 'oszi.png' 
p 'oszi.txt' u 1:(10000*$2) title "power" lt rgb "black",\
	'oszi.txt' u 1:3 title "spectrum" lt rgb "red"

	
	