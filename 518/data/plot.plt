set decimalsign ","

set terminal postscript eps enhanced size 3in,3in
set xlabel '-10U/V'

set output 'schwelle_1_koinzidenz.eps'
p 'schwelle_1.txt' u 1:(($2)/($3)):(sqrt(($2)+($2)**2/($3))/($3)) w yerrorbars title 'Koinzidenzrate'

set output 'schwelle_1_zaehler.eps'
p 'schwelle_1.txt' u 1:(($4)/($5)):(sqrt(($4)+($4)**2/($5))/($5)) w yerrorbars title 'Zaehlrate'

set output 'schwelle_2_koinzidenz.eps'
p 'schwelle_2.txt' u 1:(($2)/($3)):(sqrt(($2)+($2)**2/($3))/($3)) w yerrorbars title 'Koinzidenzrate'

set output 'schwelle_2_zaehler.eps'
p 'schwelle_2.txt' u 1:(($4)/($5)):(sqrt(($4)+($4)**2/($5))/($5)) w yerrorbars title 'Zaehlrate'
