set samples 1000 
set terminal postscript eps enhanced color size 3in,3in 

N(x)=A1*exp((s*s-2*t1*(x-t0))/(2*t1*t1))*(erf((s*s+t1*t0)/(sqrt(2)*s*t1))+erf((t1*(x-t0)-s*s)/(sqrt(2)*s*t1)))/(2*t1)+A2*exp((s*s-2*t2*(x-t0))/(2*t2*t2))*(erf((s*s+t2*t0)/(sqrt(2)*s*t2))+erf((t2*(x-t0)-s*s)/(sqrt(2)*s*t2)))/(2*t2)+BG 
 
A1=1844610
A2=152724 
t1=71
t2=11 
t0=1002 
s=50
BG=3 

fit N(x) 'data.txt' u 1:($2 == 0 ? NaN : $2) xyerrors via A1,A2,t1,t2,t0,s,BG
set output 'data.eps' 
p  N(x) notitle, 'data.txt' notitle
