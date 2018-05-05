set terminal postscript eps enhanced size 3in,3in
set samples 1000
set decimalsign ","

set xlabel 'U'
set ylabel 'N'

f(x)=a0+a1*exp(-s1*(x-m1)**2)+a2*exp(-s2*(x-m2)**2)
a0=50
a1=150
a2=50
s1=1
s2=1
m1=154
m2=158

fit f(x) 'Ba_fein.txt' u (($1)-7.03):(($2)-30.5):(0.1):(sqrt(($2)-30.5)) xyerror via a0,a1,a2,s1,s2,m1,m2
set output 'Ba_fein.eps'
plot 'Ba_fein.txt' u (($1)-7.03):(($2)-30.5):(0.1):(sqrt(($2)-30.5)) w xyerrorbars notitle, f(x) t 'Regr.'

set xrange [145:165]
fit f(x) 'Ba_grob.txt' u (($1)-7.03):(($2)-12.2):(0.1):(sqrt(($2)-12.2)) xyerror via a0,a1,a2,s1,s2,m1,m2
set output 'Ba_grob.eps'
plot 'Ba_grob.txt' u (($1)-7.03):(($2)-12.2):(0.1):(sqrt(($2)-12.2)) w xyerrorbars notitle, f(x) t 'Regr.'

set xlabel 'U'
set ylabel '{/Symbol h}'

unset xrange
f(x)=a*x+b
a=1
fit f(x) 'kal.txt' u 2:1 via a,b
set xrange [-8:175]
set output 'kal.eps'
plot 'kal.txt' u 2:1:3 w xerrorbars notitle, f(x) t 'Regr.'





reset
set terminal postscript eps enhanced size 4in,3in
set decimalsign ','


set ylabel "Y"
set xlabel "{/Symbol e}"
set key right top

f(x) = a*x + b
a=7800
b=-150
fit f(x) "na.txt" using (column("eps")>1.2 && column("eps")<2?column("eps"):1/0):"y2":"deps":((column("dy2"))+0.001) xyerrors via a,b

set output "na.eps"
plot "na.txt" using "eps":"y2":"deps":((column("dy2"))+0.001) with xyerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"



reset
set terminal postscript eps enhanced size 4in,3in
set decimalsign ','


set ylabel "Y"
set xlabel "{/Symbol e}"
set key right top


f(x) = a*x + b
a=7800
b=-150
fit f(x) "ti.txt" using (column("eps")>1.35 && column("eps")<2.3?column("eps"):1/0):"y2":"deps":((column("dy2"))+0.001) xyerrors via a,b

set output "ti.eps"
plot "ti.txt" using "eps":"y2":"deps":((column("dy2"))+0.001) with xyerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"
	
