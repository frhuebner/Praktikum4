set decimalsign ","

set terminal postscript eps enhanced size 3in,3in
set xlabel '-10{/Symbol d}U_1/V'
set ylabel 'Zaehlrate'

set output 'schwelle_1_koinzidenz.eps'
p 'schwelle_1.txt' u 1:(($2)/($3)):(sqrt(($2)+($2)**2/($3))/($3)) w yerrorbars title 'Koinzidenzen'

set output 'schwelle_1_zaehler.eps'
p 'schwelle_1.txt' u 1:(($4)/($5)):(sqrt(($4)+($4)**2/($5))/($5)) w yerrorbars title 'Zaehler 1'

set xlabel '-10{/Symbol d}U_2/V'

set output 'schwelle_2_koinzidenz.eps'
p 'schwelle_2.txt' u 1:(($2)/($3)):(sqrt(($2)+($2)**2/($3))/($3)) w yerrorbars title 'Koinzidenzen'

set output 'schwelle_2_zaehler.eps'
p 'schwelle_2.txt' u 1:(($4)/($5)):(sqrt(($4)+($4)**2/($5))/($5)) w yerrorbars title 'Zaehler 2'

set terminal postscript eps enhanced size 5in,3in
set xlabel 't/(10 {/Symbol m}s)'
set ylabel 'Zaehlungen'
f(x)=a*exp(-x/b)+c
a=1600
b=2
c=7.8
fit f(x) 'lebensdauer.txt' u 1:2:(sqrt($2)) yerr via a,b,c
set output 'lebensdauer.eps'
set xrange [0:11]
plot 'lebensdauer.txt' u 1:2:(sqrt($2)) w yerrorbars title 'Messwerte', f(x) title 'Anpassungskurve'