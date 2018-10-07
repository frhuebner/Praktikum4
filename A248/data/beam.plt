set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "a/mm"
set ylabel "P/mW"

N(x)=a*(1-erf((x-b)/s/1.41))

fit N(x) 'beam.txt' u "a":"I":"da":"dI" xyerr via a,b,s

unset xrange
set key bottom right

set output 'beam.png' 
p 'beam.txt' u "a":"I":"da":"dI" w xyerrorbars title "data" lt rgb "black",\
	N(x) title "fit" lt rgb "black"
