reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

gauss(b,a,s,x) = a*exp(-(x-b)**2/2/s**2) 

set ylabel "N"
set xlabel "n"
set key right top

set output "prompt.png"
plot "prompt001.txt" u 1:2:(sqrt($2)) w yerrorbars notitle lt rgb "black" 

set samples 1000

set output "prompt2.png"
plot "prompt001.txt" u ($1>1200 && $1<6000?$1:1/0):2 notitle lt rgb "black",\
	gauss(5443,19.6718,72.19296756,x) title "Regr." lw 2 lt rgb "red",\
	gauss(4727,12.1845,72.19296756,x) notitle lw 2 lt rgb "red",\
	gauss(4059,	12.2409,92.57686428,x) notitle lw 2 lt rgb "red",\
	gauss(3403,	13.0018,62.00101919,x) notitle lw 2 lt rgb "red",\
	gauss(2735,	11.9496,51.80907083,x) notitle lw 2 lt rgb "red",\
	gauss(2080,	11.1981,62.00101919,x) notitle lw 2 lt rgb "red",\
	gauss(1436,	11.2545,51.80907083,x) notitle lw 2 lt rgb "red"

set ylabel "n"
set xlabel "t"
set key right top


f(x) = a*x+b
a=41.6
b=1414
fit f(x) "prompt_time.txt" using "t":"Center":"sigma" yerrors via a,b


set output "prompt_time.png"
plot "prompt_time.txt" using "t":"Center":"sigma" with yerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"
	
