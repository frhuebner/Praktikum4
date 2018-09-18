set samples 10000 
set terminal postscript eps enhanced size 3in,2.25in

set xlabel "K/T"
set ylabel "log({/Symbol s} {/Symbol r}*bin)"

set xrange [0:0.004]
set yrange [-8:0]

N(x)=a*x+b

fit N(x) 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" xyerr via a,b
set output 'fit.eps' 
p 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" w xyerrorbars notitle, N(x) notitle

unset xrange
unset yrange

set xlabel "T/{/Symbol \260}C"
set ylabel "t/bin"

set output 'times.eps' 
p 'fits.txt' u "T":"t1":"dT":"dt1" w xyerrorbars title "{/Symbol t}_t" pt 1 lt rgb "black",\
	'fits.txt' u "T":"t2":"dT":"dt2" w xyerrorbars title "{/Symbol t}_0" pt 2 ps 2 lt rgb "black"
