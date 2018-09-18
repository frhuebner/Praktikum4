set samples 10000 
set terminal postscript eps enhanced size 3in,2.25in

set xlabel 'bin'
set ylabel 'N'

N(x)=A1*exp((s*s-2*t1*(x-t0))/(2*t1*t1))*(erf((s*s+t1*t0)/(sqrt(2)*s*t1))+erf((t1*(x-t0)-s*s)/(sqrt(2)*s*t1)))/(2*t1)+A2*exp((s*s-2*t2*(x-t0))/(2*t2*t2))*(erf((s*s+t2*t0)/(sqrt(2)*s*t2))+erf((t2*(x-t0)-s*s)/(sqrt(2)*s*t2)))/(2*t2)+BG 
 
A1=184461/3
A2=15272/3
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_55.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_55.eps'
set xrange [500:1500]
p 'na_55.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_61.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_61.eps'
set xrange [500:1500]
p 'na_61.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_68.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_68.eps'
set xrange [500:1500]
p 'na_68.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_78.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_78.eps'
set xrange [500:1500]
p 'na_78.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_81.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_81.eps'
set xrange [500:1500]
p 'na_81.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_95.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_95.eps'
set xrange [500:1500]
p 'na_95.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461/3
A2=15272/3 
t1=71
t2=11 
t0=900 
s=50
BG=3 

fit N(x) 'na_108.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_108.eps'
set xrange [500:1500]
p 'na_108.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=16844
A2=61111
t1=249
t2=58 
t0=954 
s=30
BG=0.2 

set xrange [500:2500]

fit N(x) 'na_121.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_121.eps'
set xrange [500:1500]
p 'na_121.txt' title 'Data', N(x) w line dt 1 title 'Fit'
unset xrange

A1=184461
A2=15272 
t1=71
t2=11 
t0=900 
s=50
BG=3 

set xrange [800:1500]

fit N(x) 'na_roomtemp.txt' u 1:($2 == 0 ? NaN : $2):($2 == 0 ? NaN : 1/sqrt($2)) yerr via A1,A2,t1,t2,t0,s,BG
set output 'na_roomtemp.eps'
set xrange [500:1500]
p 'na_roomtemp.txt' title 'Data', N(x) w line dt 1 title 'Fit'
