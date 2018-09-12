set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "K/T"
set ylabel "ln(sigma c_t)"

set xrange [0:0.004]
set yrange [-8:0]

N(x)=a*x+b

fit N(x) 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" xyerr via a,b
set output 'fit.png' 
p 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" w xyerrorbars notitle, N(x) notitle
