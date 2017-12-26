set terminal postscript eps enhanced size 3in,2.25in
set decimalsign ","
set samples 1000
set xrange [5:25]
set yrange [0:2150]

f(x)=a+b*x+a1*exp(-(x-m1)**2/2/s1**2)+a2*exp(-(x-m2)**2/2/s2**2)+a3*exp(-(x-m3)**2/2/s3**2)+a4*exp(-(x-m4)**2/2/s4**2)+a5*exp(-(x-m5)**2/2/s5**2)

a=676
b=-30.4
a1=140
a2=380
a3=750
a4=1400
a5=1600
m1=10.6
m2=11.1
m3=12.7
m4=13
m5=15.1
s1=0.2
s2=0.2
s3=0.2
s4=0.2
s5=0.2

fit f(x) 'anode.txt' u 1:2 via a,b,a1,m1,s1,a2,m2,s2,a3,m3,s3,a4,m4,s4,a5,m5,s5

set xlabel '{/Symbol b}'
set ylabel 'R/Hz'
set xrange [10:18]
set output 'anode.eps'
p f(x) title 'Regr.', 'anode.txt' u 1:2:(0.05):(0.05) w xyerrorbars title 'Messwerte'
