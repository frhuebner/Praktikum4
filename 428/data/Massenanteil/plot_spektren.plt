set terminal postscript eps enhanced size 3in,2.25in
set decimalsign ","
set samples 1000

set xrange [70:200]
set yrange [-1000:7000]

f(x)=a+b*x+a1*exp(-(x-m1)**2/2/s1**2)+a2*exp(-(x-m2)**2/2/s2**2)+a3*exp(-(x-m3)**2/2/s3**2)+a4*exp(-(x-m4)**2/2/s4**2)+a5*exp(-(x-m5)**2/2/s5**2)

a=1
b=-0.2
a1=6400
m1=103
s1=9
a2=2000
m2=110
s2=8
a3=770
m3=136
s3=4
a3=770
m3=136
s3=4
a4=150
m4=150
s4=6
a5=0
m5=0
s5=0.2

a5_err=0
m5_err=0
s5_err=0

fit f(x) 'fezn.txt' u 1:2 via a,b,a1,a2,a3,a4,m1,m2,m3,m4,s1,s2,s3,s4

set fit errorvariables
set print "parameter.txt"
print sprintf("FeZn & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set xlabel 'Kanal'
set ylabel 'N'
set output 'fezn.eps'
p f(x) title 'Regr.', 'fezn.txt' u 1:2 title 'Messwerte'

set autoscale xy

set xlabel 'E/keV'
set ylabel 'N'

a=0.1
b=0.1
a1=70
a2=60
a3=46.8
a4=130
a5=22
m1=3.06
m2=8.12
m3=9.04
m4=21.9
m5=24.5
s1=0.14
s2=0.23
s3=0.27
s4=0.26
s5=0.1

fit f(x) 'ag.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,a5,m1,m2,m3,m4,m5,s1,s2,s3,s4,s5

set fit errorvariables
print sprintf("Ag & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'ag.eps'
p f(x) title 'Regr.', 'ag.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=238
a2=421
a3=229
a4=30
a5=0
m1=8.2
m2=9.8
m3=11.6
m4=13.5
s1=0.14
s2=0.23
s3=0.27
s4=0.26

fit f(x) 'au.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,m1,m2,m3,m4,s1,s2,s3,s4

set fit errorvariables
print sprintf("Au & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'au.eps'
p f(x) title 'Regr.', 'au.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=3630
a2=500
a3=0
a4=0
m1=8.1
m2=8

fit f(x) 'cu.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Cu & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'cu.eps'
p f(x) title 'Regr.', 'cu.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=9000
a2=116
m1=6.5
m2=9.9

fit f(x) 'fe.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Fe & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'fe.eps'
p f(x) title 'Regr.', 'fe.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'


a1=143
a2=620
a3=60
a4=12
m1=3.4
m2=8.3
m3=24
m4=26

fit f(x) 'in.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,m1,m2,m3,m4,s1,s2,s3,s4

set fit errorvariables
print sprintf("In & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'in.eps'
p f(x) title 'Regr.', 'in.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=4800
a2=31
a3=0
a4=0
m1=7.7
m2=11.5

fit f(x) 'ni.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Ni & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'ni.eps'
p f(x) title 'Regr.', 'ni.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=173
a2=88
a3=530
a4=347
a5=30
m1=8
m2=9.1
m3=10.7
m4=12.8
m5=15

fit f(x) 'pb.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,a5,m1,m2,m3,m4,m5,s1,s2,s3,s4,s5

set fit errorvariables
print sprintf("Pb & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'pb.eps'
p f(x) title 'Regr.', 'pb.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=243
a2=75
a3=50
a4=6
a5=0
m1=3.5
m2=8
m3=25
m4=28

fit f(x) 'sn.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,m1,m2,m3,m4,s1,s2,s3,s4

set fit errorvariables
print sprintf("Sn & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'sn.eps'
p f(x) title 'Regr.', 'sn.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=3028
a2=0
a3=0
a4=0
a5=0
m1=4.5

fit f(x) 'ti.txt' u (0.0684*($1)-0.655):2 via a,b,a1,m1,s1

set fit errorvariables
print sprintf("Ti & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'ti.eps'
p f(x) title 'Regr.', 'ti.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=33
a2=740
a3=453
a4=47
m1=5.5
m2=8.5
m3=9.8
m4=11.5

fit f(x) 'w.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,a3,a4,m1,m2,m3,m4,s1,s2,s3,s4

set fit errorvariables
print sprintf("W & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'w.eps'
p f(x) title 'Regr.', 'w.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=3570
a2=0
a3=0
a4=0
m1=8.6

fit f(x) 'zn.txt' u (0.0684*($1)-0.655):2 via a,b,a1,m1,s1

set fit errorvariables
print sprintf("Zn & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'zn.eps'
p f(x) title 'Regr.', 'zn.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=784
a2=111
m1=15.6
m2=17.6

fit f(x) 'zr.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Zr & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'zr.eps'
p f(x) title 'Regr.', 'zr.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=1156
a2=4692
m1=5.37
m2=6.46

fit f(x) 'probe_1.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Probe 1 & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'probe_1.eps'
p f(x) title 'Regr.', 'probe_1.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=1912
a2=1462
a3=0
m1=8.14
m2=8.66

fit f(x) 'probe_2.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Probe 2 & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'probe_2.eps'
p f(x) title 'Regr.', 'probe_2.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=1744
a2=1513
m1=8.12
m2=8.63

fit f(x) 'probe_3.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Probe 3 & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'probe_3.eps'
p f(x) title 'Regr.', 'probe_3.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'

a1=434
a2=2589
m1=5.6
m2=7

fit f(x) 'probe_4.txt' u (0.0684*($1)-0.655):2 via a,b,a1,a2,m1,m2,s1,s2

set fit errorvariables
print sprintf("Probe 4 & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ & $%s \\pm %s$ \\\\",gprintf("%f",a),gprintf("%f",a_err),gprintf("%f",b),gprintf("%f",b_err),gprintf("%f",a1),gprintf("%f",a1_err),gprintf("%f",m1),gprintf("%f",m1_err),gprintf("%f",s1),gprintf("%f",s1_err),gprintf("%f",a2),gprintf("%f",a2_err),gprintf("%f",m2),gprintf("%f",m2_err),gprintf("%f",s2),gprintf("%f",s2_err),gprintf("%f",a3),gprintf("%f",a3_err),gprintf("%f",m3),gprintf("%f",m3_err),gprintf("%f",s3),gprintf("%f",s3_err),gprintf("%f",a4),gprintf("%f",a4_err),gprintf("%f",m4),gprintf("%f",m4_err),gprintf("%f",s4),gprintf("%f",s4_err),gprintf("%f",a5),gprintf("%f",a5_err),gprintf("%f",m5),gprintf("%f",m5_err),gprintf("%f",s5),gprintf("%f",s5_err))

set output 'probe_4.eps'
p f(x) title 'Regr.', 'probe_4.txt' u (0.0684*($1)-0.655):2 title 'Messwerte'
