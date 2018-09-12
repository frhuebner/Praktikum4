set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "K/T"
set ylabel "ln(sigma c_t*bin)"

set xrange [0:0.004]
set yrange [-8:0]

N(x)=a*x+b

fit N(x) 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" xyerr via a,b
set output 'fit.png' 
p 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" w xyerrorbars notitle, N(x) notitle

unset xrange
unset yrange

set xlabel "T/°C"
set ylabel "t/bin"

set output 'times.png' 
p 'fits.txt' u "T":"t1":"dT":"dt1" w xyerrorbars title "t_1" pt 1 lt rgb "black",\
	'fits.txt' u "T":"t2":"dT":"dt2" w xyerrorbars title "t_2" pt 2 ps 2 lt rgb "black"
