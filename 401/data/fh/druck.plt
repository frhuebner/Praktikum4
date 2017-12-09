set  terminal postscript eps enhanced size 3in,2.25in
set xlabel 'T/{/Symbol \260}C'
set ylabel 'p/Pa'
set xrange [-100:500]
set output 'druck.eps'
p 101325/760*exp(10.55-3333/(x+273.15)-0.85*log(x+273.15)) notitle 
