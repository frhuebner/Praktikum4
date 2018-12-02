set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "T/K"
set ylabel "L/W{/Symbol W}/K^2"

set key top right

set xrange [0:50]

set output 'wiede.png' 
p 'wiede.txt' u "T":($2==0?$9:1/0):10 w yerrorbars title "B = 0",\
	'wiede.txt' u "T":($2==-2?$9:1/0):10 w yerrorbars title "B = -2T",\
	'wiede.txt' u "T":($2==-4?$9:1/0):10 w yerrorbars title "B = -4T",\
	'wiede.txt' u "T":($2==-6?$9:1/0):10 w yerrorbars title "B = -6T",\
	'wiede.txt' u "T":($2==2?$9:1/0):10 w yerrorbars title "B = 2T",\
	'wiede.txt' u "T":($2==4?$9:1/0):10 w yerrorbars title "B = 4T",\
	'wiede.txt' u "T":($2==6?$9:1/0):10 w yerrorbars title "B = 6T"
	
unset xrange	

set output 'wiede_B0.png' 
p 'wiede.txt' u "T":($2==0?$9:1/0):10 w yerrorbars title "B = 0" lt rgb "black",\

set key bottom right

f(x) = a*x+b
g(x) = c*x

fit f(x) 'wiede.txt' u "T":($2==0 && $1> 100?$11:1/0):12 yerror via a,b

set ylabel "{/Symbol r}{/Symbol k}/W{/Symbol W}/K"

set output 'wiede_B0_rhokappa.png' 
p 'wiede.txt' u "T":($2==0?$11:1/0):12 w yerrorbars title "B = 0" lt rgb "black",\
	f(x) lt rgb "black",\
	
	