reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

#set title "Hg-Lampe"
set xlabel "Pixel"
set ylabel "I/%"
set key right top

set output "out_8_1_raw.png"

plot \
 "8_1A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\

set output "out_8_1.png"
#datafile = "fit8_1.txt"


#set xrange [0:2048]

#g(x,a,b,s) = a*exp(-log(2)*(x-b)**2/s**2)
#su = "f(x) = 0"
#do for [step=1:10] {
#	a=system("awk '{ if (NR == " . step . "+1) printf \"%f\", $7}' " . datafile)
#    b=system("awk '{ if (NR == " . step . "+1) printf \"%f\", $10}' " . datafile)
#    s=system("awk '{ if (NR == " . step . "+1) printf \"%f\", $13}' " . datafile)

    # convert parameters to numeric format
#    a=a+0.
#    b=b+0.
#    s=s+0.
#	s=s*1.05
#	#print a
#	#print b
#	#print s
#	su = sprintf("%s + g(x,%i,%i,%i)", su, a,b,s)
#}
#eval su
#set samples 10000
plot\
 "8_1.dat" using 1:2 title "I({/Symbol g})" pointtype 1 lt rgb "black",\
 "8_1.dat" using 1:3 title "I({/Symbol g})" with lines lt rgb "red",\
 #f(x) lt rgb "black"
