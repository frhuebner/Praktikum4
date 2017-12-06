reset
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set bars 0.5
show bars
set pointsize 3
set decimalsign ','

set xlabel "B/T"
set ylabel "{/Symbol D}E/J"
set key right bottom


l(x,a,b) = a*x + b
a1=9.274
b1=0.1234
a2=9.274
b2=0.01
a3=9.274
b3=0.01
a4=9.274
b4=0.01
a5=9.274
b5=0.01
a6=9.274
b6=0.01

fit l(x,a1,b1) "zeeman.txt" using "B":(column("order") == -2 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a1,b1
fit l(x,a2,b2) "zeeman.txt" using "B":(column("order") == -2 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a2,b2
fit l(x,a3,b3) "zeeman.txt" using "B":(column("order") == -1 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a3,b3
fit l(x,a4,b4) "zeeman.txt" using "B":(column("order") == 1 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a4,b4
fit l(x,a5,b5) "zeeman.txt" using "B":(column("order") == 2 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a5,b5
fit l(x,a6,b6) "zeeman.txt" using "B":(column("order") == 2 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a6,b6
set output "out_zeeman.png"

plot \
 "zeeman.txt" using "B":(column("order") == -2 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "linkslambda-" lt rgb "red",\
 l(x,a1/1e24,b1/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B":(column("order") == -2 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "linkslambda+" lt rgb "blue",\
 l(x,a2/1e24,b2/1e24) notitle lt rgb "blue",\
 "zeeman.txt" using "B":(column("order") == -1 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "mittelambda-" lt rgb "red",\
 l(x,a3/1e24,b3/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B":(column("order") == 1 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "mittelambda+" lt rgb "blue",\
 l(x,a4/1e24,b4/1e24) notitle lt rgb "blue",\
 "zeeman.txt" using "B":(column("order") == 2 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "rechtslambda-" lt rgb "red",\
 l(x,a5/1e24,b5/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B":(column("order") == 2 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "mittelambda+" lt rgb "blue",\
 l(x,a6/1e24,b6/1e24) notitle lt rgb "blue"

 
fit l(x,a1,b1) "zeeman.txt" using "B2":(column("order") == -2 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a1,b1
fit l(x,a2,b2) "zeeman.txt" using "B2":(column("order") == -2 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a2,b2
fit l(x,a3,b3) "zeeman.txt" using "B2":(column("order") == -1 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a3,b3
fit l(x,a4,b4) "zeeman.txt" using "B2":(column("order") == 1 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a4,b4
fit l(x,a5,b5) "zeeman.txt" using "B2":(column("order") == 2 ? abs(column("deltaE-")*1e24): 1/0):"dB":(column("ddeltaE-")*1e24) xyerrors via a5,b5
fit l(x,a6,b6) "zeeman.txt" using "B2":(column("order") == 2 ? abs(column("deltaE+")*1e24): 1/0):"dB":(column("ddeltaE+")*1e24) xyerrors via a6,b6
set output "out_zeeman_b2.png"

plot \
 "zeeman.txt" using "B2":(column("order") == -2 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "linkslambda-" lt rgb "red",\
 l(x,a1/1e24,b1/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B2":(column("order") == -2 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "linkslambda+" lt rgb "blue",\
 l(x,a2/1e24,b2/1e24) notitle lt rgb "blue",\
 "zeeman.txt" using "B2":(column("order") == -1 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "mittelambda-" lt rgb "red",\
 l(x,a3/1e24,b3/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B2":(column("order") == 1 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "mittelambda+" lt rgb "blue",\
 l(x,a4/1e24,b4/1e24) notitle lt rgb "blue",\
 "zeeman.txt" using "B2":(column("order") == 2 ? abs(column("deltaE-")): 1/0):"dB":"ddeltaE-" with xyerrorbars title "rechtslambda-" lt rgb "red",\
 l(x,a5/1e24,b5/1e24) notitle lt rgb "red",\
 "zeeman.txt" using "B2":(column("order") == 2 ? abs(column("deltaE+")): 1/0):"dB":"ddeltaE+" with xyerrorbars title "mittelambda+" lt rgb "blue",\
 l(x,a6/1e24,b6/1e24) notitle lt rgb "blue"
