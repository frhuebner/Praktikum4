set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "T/K"
set ylabel "{/Symbol k}/W/Km"

set key top right

set xrange [0:50]

set output 'wlf_B.png' 
p 'WLF.txt' u "T":($2==0?$13:1/0):14 w yerrorbars title "B = 0",\
	'WLF.txt' u "T":($2==-2?$13:1/0):14 w yerrorbars title "B = -2T",\
	'WLF.txt' u "T":($2==-4?$13:1/0):14 w yerrorbars title "B = -4T",\
	'WLF.txt' u "T":($2==-6?$13:1/0):14 w yerrorbars title "B = -6T",\
	'WLF.txt' u "T":($2==2?$13:1/0):14 w yerrorbars title "B = 2T",\
	'WLF.txt' u "T":($2==4?$13:1/0):14 w yerrorbars title "B = 4T",\
	'WLF.txt' u "T":($2==6?$13:1/0):14 w yerrorbars title "B = 6T"
	
unset xrange	

set output 'wlf_B0.png' 
p 'WLF.txt' u "T":($2==0?$13:1/0):13 w yerrorbars title "B = 0" lt rgb "black",\

set xrange [0:50]
set output 'wlf_B_diff.png' 
p	'WLF.txt' u "T":($2==-2?$13:1/0):14 w yerrorbars title "B = -2T",\
	'WLF.txt' u "T":($2==2?$13:1/0):14 w yerrorbars title "B = 2T"
	
set xlabel "B/T"

set xrange [-7:7]

set output 'wlf_T.png' 
p 'WLF.txt' u "B":(abs($1-10)<0.8?$13:1/0):14 w yerrorbars title "T = 10K",\
	'WLF.txt' u "B":(abs($1-20)<0.8?$13:1/0):14 w yerrorbars title "T = 20K",\
	'WLF.txt' u "B":(abs($1-30)<0.8?$13:1/0):14 w yerrorbars title "T = 30K",\
	'WLF.txt' u "B":(abs($1-40)<0.8?$13:1/0):14 w yerrorbars title "T = 40K"