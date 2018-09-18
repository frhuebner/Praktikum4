set samples 10000 
set term postscript eps enhanced size 3in,2.25in
set key left

set xlabel "t/s"
set ylabel "T/{/Symbol \260}C"

N(x)=-a*exp(-x/b)+d

a = 55
b = 200
d = 55

fit N(x) 'heatcurve.txt' u "t":"T":(0.1) yerr via a,b,d
set output 'heatcurve.eps' 
p N(x) w line dt 1 title "Fit", 'heatcurve.txt' u "t":"T":(0.1) w yerrorbars title "Data"
