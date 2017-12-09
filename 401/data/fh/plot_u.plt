set decimalsign ","
set  terminal postscript eps enhanced color size 3in,2.25in
set xlabel 'U_G/V'
set ylabel '1/V'
set xrange [0.5:4.5]

set output 'abh_u.eps'

p 'spannung.txt' u 1:2:3 w yerrorbars title 'A_2', 'spannung.txt' u 1:4:5 w yerrorbars title 'A_3', 'spannung.txt' u 1:6:7 w yerrorbars title 'A_4'
