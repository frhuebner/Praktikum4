set samples 1000
set terminal postscript eps enhanced size 3in,3in
set key left
set xlabel 'bin/1000'
set ylabel 'N'

f(x)=A1*exp(-(x-m1)**2/(2*s1**2))/sqrt(2*pi*s1**2)+A2*exp(-(x-m2)**2/(2*s2**2))/sqrt(2*pi*s2**2)+A3*exp(-(x-m3)**2/(2*s3**2))/sqrt(2*pi*s3**2)+A4*exp(-(x-m4)**2/(2*s4**2))/sqrt(2*pi*s4**2)+A5*exp(-(x-m5)**2/(2*s5**2))/sqrt(2*pi*s5**2)+A6*exp(-(x-m6)**2/(2*s6**2))/sqrt(2*pi*s6**2)+A7*exp(-(x-m7)**2/(2*s7**2))/sqrt(2*pi*s7**2)+A8*exp(-(x-m8)**2/(2*s8**2))/sqrt(2*pi*s8**2)+A9*exp(-(x-m9)**2/(2*s9**2))/sqrt(2*pi*s9**2)+A10*exp(-(x-m10)**2/(2*s10**2))/sqrt(2*pi*s10**2)+A11*exp(-(x-m11)**2/(2*s11**2))/sqrt(2*pi*s11**2)+A12*exp(-(x-m12)**2/(2*s12**2))/sqrt(2*pi*s12**2)+C

A1=4000
A2=4000
A3=4000
A4=4000
A5=4000
A6=4000
A7=4000
A8=4000
A9=4000
A10=4000
A11=4000
A12=4000
m1=900
m2=1500
m3=2088
m4=2685
m5=3281
m6=3886
m7=4482
m8=5070
m9=5681
m10=6283
m11=6909
m12=7489
s1=60
s2=60
s3=60
s4=60
s5=60
s6=60
s7=60
s8=60
s9=60
s10=60
s11=60
s12=60
C=1

fit f(x) 'prompt.txt' u 1:2 via A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,C

set output 'prompt.eps'
p f(1000*x) title 'Fit' w line dt 1, 'prompt.txt' u (($1)/1000):2 title 'Data'
