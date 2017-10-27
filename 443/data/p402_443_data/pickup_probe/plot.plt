set datafile separator ","
set terminal postscript eps enhanced size 3in, 2.25in
set output 'pickup.eps'
set ylabel 'U/mV'
set xlabel 't/{/Symbol m}s'
plot 'print_000.csv' u (1000000*(($1)-199.99899000E-03)):(($2)*1000) w lines title 'Signal der Probe', 'print_000.csv' u (1000000*(($1)-199.99899000E-03)):(($3)*1000) w lines title 'Puls'
