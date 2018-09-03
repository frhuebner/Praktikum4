set samples 1000
set terminal postscript eps enhanced color size 3in,3in

a(x,y,z)=(x**2+y*z)/(sqrt(2)*x*y)
b(x,y,z)=(-x**2+y*z)/(sqrt(2)*x*y)

N(x)=A1*exp((s*s-2*t1*(x-t0))/(2*t1*t1))*(erf((s*s+t1*t0)/(sqrt(2)*s*t1))+erf((t1*(x-t0)-s*s)/(sqrt(2)*s*t1)))/(2*t1)+A2*exp((s*s-2*t2*(x-t0))/(2*t2*t2))*(erf((s*s+t2*t0)/(sqrt(2)*s*t2))+erf((t2*(x-t0)-s*s)/(sqrt(2)*s*t2)))/(2*t2)+BG

A1=900000
A2=800000
t1=100
t2=100
t0=1000
s=1
BG=1

fit N(x) '1.txt' u 1:($2 == 0 ? NaN : $2) via A1,A2,t1,t2,t0,s,BG

set output 'test.eps'
p  N(x), '1.txt'
