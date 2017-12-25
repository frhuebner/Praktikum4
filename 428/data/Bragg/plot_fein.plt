set terminal postscript eps enhanced size 3in,2.25in
set decimalsign ","
set samples 1000
set xrange [29.5:31]

f(x)=a+b*x+a1*exp(-(x-m1)**2/2/s1**2)+a2*exp(-(x-m2)**2/2/s2**2)

a=1
b=-0.2
a1=3.5
m1=30.1
s1=0.2
a2=1.5
m2=30.3
s2=0.2

fit f(x) 'nachtmessung.txt' u 1:2 via a,a1,a2,m1,m2,s1,s2

set xlabel '{/Symbol b}'
set ylabel 'R/Hz'
set output 'nachtmessung.eps'
p f(x) title 'Regr.', 'nachtmessung.txt' u 1:2:(0.005):(0.0005) w xyerrorbars title 'Messwerte'
