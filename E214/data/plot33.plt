set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2

set xlabel "m_W/GeV"
set ylabel "h/GeV"

unset xrange
set key bottom right


set output '33.png' 
p '33.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.526684585*x+0.673587301 title "fit" lt rgb "black"
	
set output '31.png' 
p '31.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.529017545*x+0.50434508 title "fit" lt rgb "black"

set output '35.png' 
p '35.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.529374035*x+0.457660426 title "fit" lt rgb "black"	

set output '37.png' 
p '37.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.533145745*x+0.138376231 title "fit" lt rgb "black"

set output '33i3060.png' 
p '33i3060.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.532589377*x+0.060149472 title "fit" lt rgb "black"

set output '33i3070.png' 
p '33i3070.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.532731674*x-0.027347496 title "fit" lt rgb "black"	

set output '33i3555.png' 
p '33i3555.txt' u "m":"h":"dh" w yerrorbars title "data" lt rgb "black",\
	0.533690334*x+0.021500282 title "fit" lt rgb "black"		
	

##########################################
reset

set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set xlabel "QCD scale factor"
set ylabel "m_W/GeV"

set xrange [0.3:0.38]

f(x) = a*x+b 

fit f(x) 'qcdfactor.txt' u "qcd":"m":"dm" yerror via a,b

set output 'qcdfactor.png' 
p 'qcdfactor.txt' u "qcd":"m":"dm" w yerrorbars title "data" lt rgb "black",\
	f(x) title "fit" lt rgb "black"
	
reset
set samples 1000 
set term pngcairo size 1280,960 fontscale 2 linewidth 2
set xlabel "Upper fit range limit E_u/GeV"
set ylabel "m_W/GeV"

set xrange [45:75]

f(x) = a*x+b 

fit f(x) 'range.txt' u "eu":"m":"dm" yerror via a,b

set output 'range.png' 
p 'range.txt' u "eu":"m":"dm" w yerrorbars title "data" lt rgb "black",\
	f(x) title "fit" lt rgb "black"
