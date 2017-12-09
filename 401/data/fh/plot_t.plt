set decimalsign ","
set  terminal postscript eps enhanced color size 3in,2.25in
set xlabel 'T/{/Symbol \260}C'
set ylabel '1/V'

set output 'abh_t.eps'

p 'temperatur.txt' u 1:2:3 w yerrorbars title 'A_3', 'temperatur.txt' u 1:4:5 w yerrorbars title 'A_4'
