set samples 1000
set terminal postscript eps enhanced size 3in,3in

set xlabel 'bin/1000'
set ylabel 'N'

set output 'links_LYSO.eps'
p 'links_LYSO.txt' u (($1)/1000):2 notitle

set output 'links_Na.eps'
p 'links_Na.txt' u (($1)/1000):2 notitle
