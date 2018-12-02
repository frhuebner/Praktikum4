set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "I/A"
set ylabel "U/V"

set key bottom right

f(x) = a*x+b

fit f(x) 'elec.txt' u "I":"U":"dU" yerror via a,b

set output 'elec.png' 
p 'elec.txt' u "I":"U":"dU" w yerrorbars title "Room temperature" lt rgb "black",\
	f(x) notitle lt rgb "black"

set xlabel "I/mA"
	
f(x) = a*x**2+b

fit f(x) 'therm.txt' u "I":"U":"dU" yerror via a,b

set output 'therm.png' 
p 'therm.txt' u ($2*1000):"U":"dU" w yerrorbars title "Room temperature" lt rgb "black",\
	f(x/1000) notitle lt rgb "black"
	