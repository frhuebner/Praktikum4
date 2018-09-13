set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "t/s"
set ylabel "T/°C"

N(x)=-a*exp(-x/b)+d

a = 55
b = 200
d = 55

fit N(x) 'heatcurve.txt' u "t":"T":(0.1) yerr via a,b,d
set output 'heatcurve.png' 
p 'heatcurve.txt' u "t":"T":(0.1) w yerrorbars title "data" lt rgb "black",\
	N(x) title "fit" lt rgb "black"
