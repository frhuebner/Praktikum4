set decimalsign ','
l=-1.2
r=0

ii="365nm_1"
i="365nm_1"
load "loop.plt"

l=-1.2
r=0

i="365nm_2"
ii="365nm_2"
load "loop.plt"

l=-1.3
r=0

i="365nm_low_intensity"
ii="365nm_l_i"
load "loop.plt"

l=-1.1
r=0

i="405nm_1"
ii="405nm_1"
load "loop.plt"

l=-1.1
r=0

i="405nm_2"
ii="405nm_2"
load "loop.plt"

l=-1.2
r=0

i="436nm_1"
ii="436nm_1"
load "loop.plt"

l=-0.8
r=0

i="436nm_2"
ii="436nm_2"
load "loop.plt"

l=-0.3
r=0

i="546nm_1"
ii="546nm_1"
load "loop.plt"

l=-0.4
r=0

i="546nm_2"
ii="546nm_2"
load "loop.plt"

l=-0.3
r=0

i="578nm_1"
ii="578nm_1"
load "loop.plt"

l=-0.3
r=0

i="578nm_2"
ii="578nm_2"
load "loop.plt"


set xrange [4:9.2]
set yrange [-0.2:1.9]
set output 'f_u.eps'
set xlabel '{/Symbol n}/(10^{14}Hz)'
set ylabel 'U_0/V'
p 'f_u.txt' u (2997.92458/($1)):2:3 w yerrorbars title 'Messwerte', 0.379079*x-1.51865 title 'Regr.'