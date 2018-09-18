set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "t/bin"
set ylabel "Events"

set output 'prompt.png' 
p 'prompt.txt' u 1:2 notitle

set xlabel "t/s"
set ylabel "t/bin"

set xrange [13:50]

N(x)=a*x+b

fit N(x) '../../auswertung/prompt_fit.txt' u 2:3:4 yerr via a,b

unset xrange
set key bottom right

set output 'prompt_fit.png' 
p '../../auswertung/prompt_fit.txt' u 2:3:4 w yerrorbars title "data" lt rgb "black",\
	N(x) title "fit" lt rgb "black"
