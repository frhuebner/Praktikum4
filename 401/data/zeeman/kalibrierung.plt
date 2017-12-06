reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

set xlabel "I/A"
set ylabel "B/mT"
set key right bottom

set output "out_kalibrierung.png"

plot \
 "kalibrierung.txt" using 1:2 title "vorher" with lines lt rgb "red",\
 "kalibrierung_2.txt" using 1:2 title "nachher" with lines lt rgb "blue"

q(x,a,b,c) = a*x**2 + b*x + c
fit q(x,a1,b1,c1) "kalibrierung_edit.txt" using 1:2 via a1,b1,c1
fit q(x,a2,b2,c2) "kalibrierung_2_edit.txt" using 1:2 via a2,b2,c2

print "\n"
print "a: ", (a1+a2)/2, " +- ", (a1-a2)/2
print "b: ", (b1+b2)/2, " +- ", (b1-b2)/2
print "c: ", (c1+c2)/2, " +- ", (c1-c2)/2

set output "out_kalibrierung_edit.png"

plot \
 "kalibrierung_edit.txt" using 1:2 title "vorher" lt rgb "red",\
 q(x,a1,b1,c1) notitle lt rgb "red",\
 "kalibrierung_2_edit.txt" using 1:2 title "nachher" lt rgb "blue",\
 q(x,a2,b2,c2) notitle lt rgb "blue",\
 q(x,(a1+a2)/2,(b1+b2)/2,(c1+c2)/2) title "gemittelter Fit" lt rgb "black"
