set datafile separator ","
set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' linewidth 2
set output 'pickup.eps'
set ylabel 'U/V'
set xlabel 't/{/Symbol m}s'
set xrange [0:8]
plot 'print_000.csv' u (1000000*(($1)-199.99899000E-03)-2):($2) w lines title 'Signal der Probe', 'print_000.csv' u (1000000*(($1)-199.99899000E-03)-2):($3) w lines title 'Puls'
