set terminal postscript eps enhanced color size 3in,3in
set samples 1000

set xlabel 'n'
set ylabel 'N'

f(x)=a*exp(-(x-m)**2/(2*s**2))
a=230
m=7500
s=150

set output 'ba_kal.eps'
p 'ba_kal.txt' notitle

set output 'na_kal.eps'
p 'na_kal.txt' notitle

set output 'rechts_ba_cfd_kal.eps'
p 'rechts_ba_cfd_kal.txt' notitle

set output 'na.eps'
p 'na.txt' notitle

set xrange [6734:8132]
fit f(x) 'na_kal_links.txt' u 1:2:(sqrt(($2))) yerr via a,m,s
unset xrange
set output 'na_kal_links.eps'
p 'na_kal_links.txt' u 1:2:(sqrt(($2))) w yerrorbars title 'Messwerte' lt rgb "black", f(x) title 'Regr.' lt rgb "red" 

set xrange [5782:7182]
fit f(x) 'na_kal_rechts.txt' u 1:2:(sqrt(($2))) yerr via a,m,s
unset xrange
set output 'na_kal_rechts.eps'
p 'na_kal_rechts.txt' u 1:2:(sqrt(($2))) w yerrorbars title 'Messwerte' lt rgb "black", f(x) title 'Regr.' lt rgb "red"


g(x)=a+b*x+a1*exp(-(x-m1)**2/(2*s1**2))+a2*exp(-(x-m2)**2/(2*s2**2))+a3*exp(-(x-m3)**2/(2*s3**2))+a4*exp(-(x-m4)**2/(2*s4**2))+a5*exp(-(x-m5)**2/(2*s5**2))+a6*exp(-(x-m6)**2/(2*s6**2))+a7*exp(-(x-m7)**2/(2*s7**2))
a=3429
b=-0.4
a1=35000
m1=1300
s1=100
a2=2500
m2=1900
s2=150
a3=1000
m3=2500
s3=150
a4=3000
m4=4500
s4=150
a5=10000
m5=5300
s5=150
a6=2000
m6=6000
s6=150
a7=1000
m7=6600
s7=150


set xrange [1000:8000]
fit g(x) 'links_ba_cfd_kal.txt' u 1:2:(sqrt(($2))) yerr via a,b,a1,a2,a3,a4,a5,a6,a7,m1,m2,m3,m4,m5,m6,m7,s1,s2,s3,s4,s5,s6,s7
unset xrange
set output 'links_ba_cfd_kal.eps'
p 'links_ba_cfd_kal.txt' u 1:2:(sqrt(($2))) w yerrorbars title 'Messwerte' lt rgb "black", g(x) title 'Regr.' lt rgb "red"

a=120
b=-0.02
a1=600
m1=1100
s1=100
a2=50
m2=1500
s2=150
a3=50
m3=2000
s3=150
a4=80
m4=3700
s4=150
a5=200
m5=4500
s5=150
a6=90
m6=4800
s6=150
a7=30
m7=5500
s7=150

set xrange [1000:5827]
fit g(x) 'rechts_ba_cfd_kal.txt' u 1:2:(sqrt(($2))) yerr via a,b,a1,a2,a3,a4,a5,a6,a7,m1,m2,m3,m4,m5,m6,m7,s1,s2,s3,s4,s5,s6,s7
unset xrange
set output 'rechts_ba_cfd_kal.eps'
p 'rechts_ba_cfd_kal.txt' u 1:2:(sqrt(($2))) w yerrorbars title 'Messwerte' lt rgb "black", g(x) title 'Regr.' lt rgb "red"