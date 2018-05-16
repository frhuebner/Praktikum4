reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','


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
	
