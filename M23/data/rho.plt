set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "T/K"
set ylabel "{/Symbol r}/{/Symbol W}m"

set key bottom right

set xrange [0:50]

set output 'rho_B.png' 
p 'RHO.txt' u "T":($2==0?$12:1/0):13 w yerrorbars title "B = 0",\
	'RHO.txt' u "T":($2==-2?$12:1/0):13 w yerrorbars title "B = -2T",\
	'RHO.txt' u "T":($2==-4?$12:1/0):13 w yerrorbars title "B = -4T",\
	'RHO.txt' u "T":($2==-6?$12:1/0):13 w yerrorbars title "B = -6T",\
	'RHO.txt' u "T":($2==2?$12:1/0):13 w yerrorbars title "B = 2T",\
	'RHO.txt' u "T":($2==4?$12:1/0):13 w yerrorbars title "B = 4T",\
	'RHO.txt' u "T":($2==6?$12:1/0):13 w yerrorbars title "B = 6T"

unset xrange	

f(x) = a*x+b

fit f(x) 'RHO.txt' u "T":($2==0 && $1> 100?$12:1/0):13 yerror via a,b

set output 'rho_B0.png' 
p 'RHO.txt' u "T":($2==0?$12:1/0):13 w yerrorbars title "B = 0" lt rgb "black",\
	f(x) notitle lt rgb "black"
	
f(x) = a*x**b+c

a=1e-10
c=1e-10
b=2

#set xrange [0:50]
set logscale xy

set output 'rho_B0_log.png' 
p 'RHO.txt' u "T":($2==0?($12-6.5e-11):1/0):13 w yerrorbars title "B = 0" lt rgb "black"

fit f(x) 'RHO.txt' u "T":($2==0  && $1< 50 ?$12:1/0):13 yerror via a,b,c	

set ylabel "({/Symbol r}-{/Symbol r}(0))/{/Symbol W}m"
	
set output 'rho_B0_fit.png' 
p 'RHO.txt' u "T":($2==0?($12-c):1/0):13 w yerrorbars title "B = 0" lt rgb "black",\
	f(x)-c notitle lt rgb "black"

set ylabel "{/Symbol r}/{/Symbol W}m"	
	
unset logscale

set xlabel "B/T"

set xrange [-7:7]

set output 'rho_T.png' 
p 'RHO.txt' u "B":(abs($1-10)<0.8?$12:1/0):13 w yerrorbars title "T = 10K",\
	'RHO.txt' u "B":(abs($1-20)<0.8?$12:1/0):13 w yerrorbars title "T = 20K",\
	'RHO.txt' u "B":(abs($1-30)<0.8?$12:1/0):13 w yerrorbars title "T = 30K",\
	'RHO.txt' u "B":(abs($1-40)<0.8?$12:1/0):13 w yerrorbars title "T = 40K"
	
reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set bars 0.5
show bars
set pointsize 3

set xlabel "B/T"
set ylabel "U_H/V"

set xrange [-7:7]

set output 'rho_uh.png'
p 'RHO.txt' u "B":(abs($1-10)<0.8?$14:1/0) title "T = 10K" pt 1,\
	'RHO.txt' u "B":(abs($1-20)<0.8?$14:1/0) title "T = 20K" pt 1,\
	'RHO.txt' u "B":(abs($1-30)<0.8?$14:1/0) title "T = 30K" pt 1,\
	'RHO.txt' u "B":(abs($1-40)<0.8?$14:1/0) title "T = 40K" pt 1
	
set xrange [-7:7]

set key bottom right

set output 'rho_uh2.png'
p 'RHO.txt' u "B":(abs($1-10)<0.8?$16:1/0) title "T = 10K" pt 1,\
	'RHO.txt' u "B":(abs($1-20)<0.8?$16:1/0) title "T = 20K" pt 1,\
	'RHO.txt' u "B":(abs($1-30)<0.8?$16:1/0) title "T = 30K" pt 1,\
	'RHO.txt' u "B":(abs($1-40)<0.8?$16:1/0) title "T = 40K" pt 1	
	
set xrange [-7:7]

f1(x)=a1*x+b1
f2(x)=a2*x+b2
f3(x)=a3*x+b3
f4(x)=a4*x+b4

fit f1(x) 'RHO.txt' u "B":(abs($1-10)<0.8?$16:1/0) via a1,b1
fit f2(x) 'RHO.txt' u "B":(abs($1-20)<0.8?$16:1/0) via a2,b2
fit f3(x) 'RHO.txt' u "B":(abs($1-30)<0.8?$16:1/0) via a3,b3
fit f4(x) 'RHO.txt' u "B":(abs($1-40)<0.8?$16:1/0) via a4,b4

set output 'rho_uh2_fit.png'
p 'RHO.txt' u "B":(abs($1-10)<0.8?$16:1/0) title "T = 10K" pt 1 lt rgb "red",\
	'RHO.txt' u "B":(abs($1-20)<0.8?$16:1/0) title "T = 20K" pt 1 lt rgb "blue",\
	'RHO.txt' u "B":(abs($1-30)<0.8?$16:1/0) title "T = 30K" pt 1 lt rgb "green",\
	'RHO.txt' u "B":(abs($1-40)<0.8?$16:1/0) title "T = 40K" pt 1 lt rgb "black",\
	f1(x) notitle lt rgb "red",\
	f2(x) notitle lt rgb "blue",\
	f3(x) notitle lt rgb "green",\
	f4(x) notitle lt rgb "black"

unset xrange
set ylabel "{/Symbol t}/s"	
set xlabel "T/K"

set logscale y

set output 'rho_tau.png' 
p 'RHO.txt' u "T":($2==0?$17:1/0):18 w yerrorbars title "B = 0" lt rgb "black"	

set ylabel "{/Symbol l}/m"	
set xlabel "T/K"

set output 'rho_lambda.png' 
p 'RHO.txt' u "T":($2==0?$19:1/0):20 w yerrorbars title "B = 0" lt rgb "black"	
	