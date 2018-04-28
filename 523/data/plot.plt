set terminal postscript eps enhanced size 3in,3in
set samples 1000

set xlabel 'U'
set ylabel 'N'

f(x)=a0+a1*exp(-s1*(x-m1)**2)+a2*exp(-s2*(x-m2)**2)
a0=50
a1=150
a2=50
s1=1
s2=1
m1=154
m2=158

fit f(x) 'Ba_fein.txt' u (($1)-4.4):(($2)-30.5):(0.1):(sqrt(($2)-30.5)) xyerror via a0,a1,a2,s1,s2,m1,m2
set output 'Ba_fein.eps'
plot 'Ba_fein.txt' u (($1)-4.4):(($2)-30.5):(0.1):(sqrt(($2)-30.5)) w xyerrorbars t 'Messwerte', f(x) t 'angepasste Funktion'

set xrange [145:175]
fit f(x) 'Ba_grob.txt' u (($1)-4.4):(($2)-12.2):(0.1):(sqrt(($2)-12.2)) xyerror via a0,a1,a2,s1,s2,m1,m2
set output 'Ba_grob.eps'
plot 'Ba_grob.txt' u (($1)-4.4):(($2)-12.2):(0.1):(sqrt(($2)-12.2)) w xyerrorbars t 'Messwerte', f(x) t 'angepasste Funktion'

set xlabel 'U'
set ylabel '{/Symbol h}'

f(x)=a*x+b
a=1
fit f(x) 'kal.txt' u 2:1 via a,b
set output 'kal.eps'
plot 'kal.txt' u 2:1:3 w xerrorbars t 'Messwerte', f(x) t 'angepasste Funktion'