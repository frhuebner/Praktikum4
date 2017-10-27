set datafile separator ","
set terminal postscript eps enhanced size 3in, 2.25in
set output 'FID_1.eps'
set ylabel 'U/V'
set xlabel 't/ms'
set autoscale xy
plot 'print_001.csv' u (($1)*1000-198.08000):2 w lines title 'FID-Signal'
