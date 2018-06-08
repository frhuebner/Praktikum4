reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

set ylabel "N"
set xlabel "n"
set key right top

set output "si_cs_raw.png"
plot "raw_si.txt" using "bin":"cs":"dcs" with yerrorbars notitle lt rgb "black"
set output "si_co_raw.png"
plot "raw_si.txt" using "bin":"co":"dco" with yerrorbars notitle lt rgb "black"
set output "si_eu_raw.png"
plot "raw_si.txt" using "bin":"eu":"deu" with yerrorbars notitle lt rgb "black"
set output "si_unter.png"
plot "raw_si.txt" using "bin":"untergrund":"dunter" with yerrorbars notitle lt rgb "black"

set output "si_cs.png"
plot "raw_si.txt" using "bin":"ccs":"dccs" with yerrorbars notitle lt rgb "black"
set output "si_co.png"
plot "raw_si.txt" using "bin":"cco":"dcco" with yerrorbars notitle lt rgb "black"
set output "si_eu.png"
plot "raw_si.txt" using "bin":"ceu":"dceu" with yerrorbars notitle lt rgb "black"


set ylabel "n"
set xlabel "E/keV"
set key right bottom

f(x) = a*x
a=100
b=1
fit f(x) "si_gauge.txt" using "energy":"b":"s" yerrors via a

set output "si_gauge.png"
plot "si_gauge.txt" using "energy":"b":"s" with yerrorbars notitle lt rgb "black",\
	f(x) title "Regr." lt rgb "black"
	
