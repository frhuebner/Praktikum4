set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

N(x)=A1*exp((s*s-2*t1*(x-t0))/(2*t1*t1))*(erf((s*s+t1*t0)/(sqrt(2)*s*t1))+erf((t1*(x-t0)-s*s)/(sqrt(2)*s*t1)))/(2*t1)+A2*exp((s*s-2*t2*(x-t0))/(2*t2*t2))*(erf((s*s+t2*t0)/(sqrt(2)*s*t2))+erf((t2*(x-t0)-s*s)/(sqrt(2)*s*t2)))/(2*t2)+BG 
 
A1=16844
A2=61111
t1=249
t2=58 
t0=954 
s=30
BG=0.2 

set xrange [500:2500]

fit N(x) 'na_121.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_121.png' 
p  N(x) notitle, 'na_121.txt' notitle
