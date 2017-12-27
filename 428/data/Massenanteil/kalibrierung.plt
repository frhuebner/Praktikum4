set terminal postscript eps enhanced size 3in,2.25in
set decimalsign ","
set key left top
f(x)=a*x+b

fit f(x) 'kalibrierung.txt' using 1:2:3 via a,b

set output 'kalibrierung.eps'
set xlabel 'Kanal'
set ylabel 'E/keV'

p f(x) title 'Regr.', 'kalibrierung.txt' u 1:2:3 with xerrorbars title 'Messpunkte'
