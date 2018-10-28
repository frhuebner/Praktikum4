set terminal pngcairo size 350,262 enhanced font 'Verdana,10'

set output 'zee_init.png'

set xlabel "{/Symbol z}/0.5"
set ylabel "E_{raw}/20 MeV"
set zlabel "E/E_{raw}"

plot 'zee_init.txt' matrix u 1:2:3 with image notitle
