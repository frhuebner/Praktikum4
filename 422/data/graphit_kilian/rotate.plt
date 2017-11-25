reset
set terminal postscript eps enhanced size 8in,6in  fontscale 2 linewidth 2
show bars
set decimalsign ','
set ylabel "y/nm"
set xlabel "x/nm"
set zeroaxis
set size square
set xrange [-0.5:0.5]
set yrange [-0.5:0.5]
unset key

phi=1.60008
delta_phi=0.0363603
alpha=1.64321
delta_alpha=0.0649768
r=0.402979

set output "out_rotate_old.eps"
plot \
 "datapoints.txt" using (cos(phi)*($1)+sin(phi)*($2)):(cos(phi)*$2-sin(phi)*$1):(0.01):(0.01) notitle with xyerrorbars, '' using (cos(phi)*($1)+sin(phi)*($2)):(cos(phi)*$2-sin(phi)*$1) notitle w lines lt 1

set output "out_rotate.eps"

set object circle at first 0,0 radius first r fc rgb "navy"

plot \
 "datapoints.txt" using (cos(phi)*($1)+sin(phi)*($2)):(alpha*(cos(phi)*$2-sin(phi)*$1)):(sqrt((0.01)**2+(delta_phi)**2*((($1)*sin(phi))**2+(($2)*cos(phi))**2))):(sqrt((0.01*alpha)**2+(delta_phi*alpha)**2*((($1)*sin(phi))**2+(($2)*cos(phi))**2)+(delta_alpha)**2*(-($1)*sin(phi)+cos(phi)*($2))**2)) with xyerrorbars, '' using (cos(phi)*($1)+sin(phi)*($2)):(alpha*(cos(phi)*$2-sin(phi)*$1)):(sqrt((0.01)**2+(delta_phi)**2*((($1)*sin(phi))**2+(($2)*cos(phi))**2))) notitle w lines lt 1
