set terminal postscript eps enhanced size 3in,3in
set samples 1000

set xlabel 'U/V'
set ylabel 'N'

f(x)=a0+a1*exp(-s1*(x-m1)**2)+a2*exp(-s2*(x-m2)**2)
a0=50
a1=150
a2=50
s1=1
s2=1
m1=158
m2=162

fit f(x) 'Ba_fein.txt' u 1:2:(sqrt(($2))) yerror via a0,a1,a2,s1,s2,m1,m2
set output 'Ba_fein.eps'
plot 'Ba_fein.txt' u 1:2:(sqrt(($2))) w yerrorbars t 'Messwerte', f(x) t 'angepasste Funktion'
