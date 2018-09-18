set samples 1000
set terminal postscript eps enhanced size 3in,3in
set xlabel 't/(4ns)'
set ylabel '{/Symbol m}'
set key left

f(x)=a*x+b

fit f(x) 'prompt_means.txt' u 1:2:3 yerr via a,b

set xrange [0:13]

set output 'prompt_means.eps'
p f(x) title 'Fit', 'prompt_means.txt' u 1:2:3 w yerrorbars title 'Data'
