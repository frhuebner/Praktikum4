reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

#set title "Hg-Lampe"
set xlabel "{/Symbol a}"
set ylabel "I/%"
set key right top

set output "out_0_0_raw.png"
plot \
 "ohnebfeld.txt" using 1:2 title "I({/Symbol a})" with lines lt rgb "black",\

set xlabel "p"
set ylabel "I/%"
set key right top
 
set output "out_6_0_raw.png"
plot \
 "6A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_6_3_raw.png"
plot \
 "6_3A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_6_6_raw.png"
plot \
 "6_6A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_6_9_raw.png"
plot \
 "6_9A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_7_2_raw.png"
plot \
 "7_2A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_7_5_raw.png"
plot \
 "7_5A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_7_8_raw.png"
plot \
 "7_8A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_8_1_raw.png"
plot \
 "8_1A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_8_4_raw.png"
plot \
 "8_4A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 
set output "out_8_5_raw.png"
plot \
 "8_5A.txt" using 1:2 title "I(p)" with lines lt rgb "black",\
 

set output "out_6_0.png"
plot\
 "6_0.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "6_0.dat" using 1:13 title "Fit" with lines lt rgb "red"
set output "out_6_3.png"
plot\
 "6_3.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "6_3.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_6_6.png"
plot\
 "6_6.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "6_6.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_6_9.png"
plot\
 "6_9.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "6_9.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_7_2.png"
plot\
 "7_2.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "7_2.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_7_5.png"
plot\
 "7_5.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "7_5.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_7_8.png"
plot\
 "7_8.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "7_8.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_8_1.png"
plot\
 "8_1.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "8_1.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_8_4.png"
plot\
 "8_4.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "8_4.dat" using 1:13 title "Fit" with lines lt rgb "red"
 set output "out_8_5.png"
plot\
 "8_5.dat" using 1:2 title "I(p)" pointtype 1 lt rgb "black",\
 "8_5.dat" using 1:13 title "Fit" with lines lt rgb "red"


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

 #f(x) lt rgb "black"
