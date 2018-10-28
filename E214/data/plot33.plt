set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "m_W/MeV"
set ylabel "h/MeV"

unset xrange
set key bottom right


set output '33.png' 
p '33.txt' u "I":"P":"dI":"dP" w xyerrorbars title "power" lt rgb "black",\