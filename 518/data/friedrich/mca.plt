reset
#set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
#set pointsize 3
#set title "Hg-Lampe"
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

#set ylabel "Koinzidenzen"
#set xlabel "{/Symbol D}E/MeV"
#set key right top

#set output "mca_raw.png"
#plot "mca.txt" using ($0*8.0/1000.0):1 notitle lt rgb "black"

#f(x) = a*exp(-((x-b)/l+exp(-(x-b)/l))/2)
#fit f(x) "mca.txt" using (($0>20) ? $0*8.0/1000.0: 1/0):1 via a,b,l

#g(x) = c*exp(-(x-d)**2/2/e**2)
#fit g(x) "mca.txt" using (($0>20) ? $0*8.0/1000.0: 1/0):1 via c,d,e

#set output "mca.png"
#plot "mca.txt" using (($0>20) ? $0*8.0/1000.0: 1/0):1 notitle lt rgb "black",\
#	f(x) title "Landau" lw 2 lt rgb "black",\
#	g(x) title "Gauss" lw 2 lt rgb "red"


set ylabel "Koinzidenzen"
set xlabel "E"
set key right top

set output "mca_raw.png"
plot "mca.txt" using ($0):1 notitle lt rgb "black"

f(x) = a*exp(-((x-b)/l+exp(-(x-b)/l))/2)
b = 250
l = 1000.0/8.0
fit f(x) "mca.txt" using (($0>20) ? $0: 1/0):1 via a,b,l

d = 250
e = 1000.0/8.0
g(x) = c*exp(-(x-d)**2/2/e**2)
fit g(x) "mca.txt" using (($0>20) ? $0: 1/0):1 via c,d,e

set output "mca.png"
plot "mca.txt" using (($0>20) ? $0: 1/0):1 notitle lt rgb "black",\
	f(x) title "Landau" lw 2 lt rgb "black",\
	g(x) title "Gauss" lw 2 lt rgb "red"