set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "I/mA"
set ylabel "P/mW"

unset xrange
set key bottom right


set output 'bfeld.png' 
p 'bfeld.txt' u "I":"P":"dI":"dP" w xyerrorbars title "power" lt rgb "black",\

	
	