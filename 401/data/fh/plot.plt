set decimalsign ","
set key left top
set terminal postscript eps enhanced size 3in,2.25in
set xrange [10:30.5]
set xlabel 'U_B/V'
set ylabel 'U_A/V'

f(x)=a+b*x+A1*exp(-(x-m1)**2/(2*s1*s1))+A2*exp(-(x-m2)**2/(2*s2*s2))+A3*exp(-(x-m3)**2/(2*s3*s3))

a=-0.05
b=0.005
A1=0.05
A2=0.05
A3=0.1
m1=17
m2=22
m3=27
s1=2
s2=2
s3=2

set output '159K4V.eps'
fit f(x) '159K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,m1,m2,m3,s1,s2,s3
p '159K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.' 

f(x)=a+b*x+A1*exp(-(x-m1)**2/(2*s1*s1))+A2*exp(-(x-m2)**2/(2*s2*s2))+A3*exp(-(x-m3)**2/(2*s3*s3))+A4*exp(-(x-m4)**2/(2*s4*s4))+A5*exp(-(x-m5)**2/(2*s5*s5))

a=-0.05
b=0.1
A1=0.5
A2=1.5
A3=3
A4=5
A5=6
m1=12
m2=17
m3=22
m4=27
m5=32
s1=2
s2=2
s3=2
s4=2
s5=2

set output '165K1V.eps'
fit f(x) '165K1V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,A4,A5,m1,m2,m3,m4,m5,s1,s2,s3,s4,s5
p '165K1V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.' 

set output '165K2V.eps'
fit f(x) '165K2V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,A4,A5,m1,m2,m3,m4,m5,s1,s2,s3,s4,s5
p '165K2V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.' 

set output '165K3V.eps'
fit f(x) '165K3V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,A4,A5,m1,m2,m3,m4,m5,s1,s2,s3,s4,s5
p '165K3V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.'

f(x)=a+b*x+A1*exp(-(x-m1)**2/(2*s1*s1))+A2*exp(-(x-m2)**2/(2*s2*s2))+A3*exp(-(x-m3)**2/(2*s3*s3))

a=-0.05
b=0.005
A1=0.05
A2=0.1
A3=0.2
m1=17
m2=22
m3=27
s1=2
s2=2
s3=2

set output '165K4V.eps'
fit f(x) '165K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,m1,m2,m3,s1,s2,s3
p '165K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.'

set output '168K4V.eps'
fit f(x) '168K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A1,A2,A3,m1,m2,m3,s1,s2,s3
p '168K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.'

f(x)=a+b*x+A2*exp(-(x-m2)**2/(2*s2*s2))+A3*exp(-(x-m3)**2/(2*s3*s3))

set output '173K4V.eps'
fit f(x) '173K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A2,A3,m2,m3,s2,s3
p '173K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.'

set output '175K4V.eps'
fit f(x) '175K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A2,A3,m2,m3,s2,s3
p '175K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.'

set output '181K4V.eps'
fit f(x) '181K4V.txt' u 1:2:(0.005):(0.005) xyerrors via a,b,A2,A3,m2,m3,s2,s3  
p '181K4V.txt' u 1:2:(0.005):(0.005) w xyerrorbars title 'Messung', f(x) title 'Regr.' 
