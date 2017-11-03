set samples 1000
set terminal postscript eps size 3.5,2.62
set output 'rabi_1.eps'
set ylabel 'U/V'
set xlabel 't/{/Symbol m}s'
f(x)=a1+b1*abs(sin(c1*x+d1))
g(x)=a2+b2*sin(c2*x+d2)
a1=0.5
b1=8
c1=0.63
d1=0.2
a2=0.2
b2=1.5
c2=0.5
d2=0.2
fit f(x) 'maxima.txt' u 1:2:(0.3) yerr via a1,b1,c1,d1
fit g(x) 'maxima.txt' u 1:3:(0.1) yerr via a2,b2,c2,d2
set yrange [-2:13.5]
plot 'maxima.txt' u 1:2:(0.3) w yerrorbars title 'Envelope Signal', 'maxima.txt' u 1:3:(0.1) w yerrorbars title 'In-Phase Signal', f(x) notitle, g(x) notitle
