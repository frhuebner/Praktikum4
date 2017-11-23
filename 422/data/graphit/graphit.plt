reset

set terminal pngcairo size 700*71/97,700 enhanced font "Verdana,10"
set output "graphit.png"
set palette gray

set mapping cartesian
set tmargin 0
set bmargin 0
set border 0 back
set size ratio 1.3661971831
set yrange [] reverse
unset key
unset colorbox
unset tics

set cbrange [-0.4:0.4]
#set multiplot

###=== Plot heat map of interpolated data ===###
set dgrid3d 97*0.6,71*0.6,2
set pm3d map
plot "2nm_small.xyz" u (($1)*1e9):(($2)*1e9):(($3)*1e10) with image,\
"lines.txt" using 1:2:($3-$1):($4-$2) with vectors nohead
	
#unset multiplot