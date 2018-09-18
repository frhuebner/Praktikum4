set samples 10000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

N(x)=A1*exp((s*s-2*t1*(x-t0))/(2*t1*t1))*(erf((s*s+t1*t0)/(sqrt(2)*s*t1))+erf((t1*(x-t0)-s*s)/(sqrt(2)*s*t1)))/(2*t1)+A2*exp((s*s-2*t2*(x-t0))/(2*t2*t2))*(erf((s*s+t2*t0)/(sqrt(2)*s*t2))+erf((t2*(x-t0)-s*s)/(sqrt(2)*s*t2)))/(2*t2)+BG 
 
A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

#set xrange [800:1500]

fit N(x) 'na_61.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_61.png' 
p  N(x) notitle, 'na_61.txt' notitle
