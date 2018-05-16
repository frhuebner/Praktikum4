set terminal postscript eps enhanced size 3in,3in
set samples 1000

f(x)=a*exp(-(x-m)**2/s)
a=230
m=7500
s=90168

set output 'ba_kal.eps'
p 'ba_kal.txt' notitle

set output 'na_kal.eps'
p 'na_kal.txt' notitle

set output 'links_ba_cfd_kal.eps'
p 'links_ba_cfd_kal.txt' notitle

set output 'rechts_ba_cfd_kal.eps'
p 'rechts_ba_cfd_kal.txt' notitle

set output 'na.eps'
p 'na.txt' notitle

set xrange [6734:8132]
fit f(x) 'na_kal_links.txt' via a,m,s
unset xrange
set output 'na_kal_links.eps'
p 'na_kal_links.txt' notitle, f(x) 

set xrange [5782:7182]
fit f(x) 'na_kal_rechts.txt' via a,m,s
unset xrange
set output 'na_kal_rechts.eps'
p 'na_kal_rechts.txt' notitle, f(x)
