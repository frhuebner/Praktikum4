set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "{/Symbol a}/°"
set ylabel "P/mW"

unset xrange
set key bottom right

set output 'l41.png' 
p 'erstel4.txt' u "alpha":"P":"dP" w yerrorbars title "data" lt rgb "black",\


set output 'l42.png' 
p 'zweitel4.txt' u "alpha":"P":"dP" w yerrorbars title "data" lt rgb "black"
