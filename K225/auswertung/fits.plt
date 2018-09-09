set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

N(x)=a*x+23.556479181

fit N(x) 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" xyerr via a
set output 'fit.png' 
p 'fits.txt' u "1/T":"lnsct":"d1/T":"dlnsct" w xyerrorbars notitle, N(x) notitle
