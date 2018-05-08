set term png
set output "pcb-4.x_monthly.png"
set title "pcb-4.x series downloads"
set style data linespoints
set key bottom left
# set Y-axis
set yrange [0:]
set ylabel "Number of monthly downloads [-]"
set grid y
# set X-axis
set xlabel "Month"
set timefmt "%Y-%m"
set xdata time
set format x "%Y-%m"
set xrange ["2017-01":]
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# plot data
plot 'data/pcb-4.0.0_monthly.data' using 1:2 title "pcb-4.0.0.tar.gz" with points, \
     'data/pcb-4.0.1_monthly.data' using 1:2 title "pcb-4.0.1.tar.gz" with points, \
     'data/pcb-4.0.2_monthly.data' using 1:2 title "pcb-4.0.2.tar.gz" with points, \
     'data/pcb-4.1.0_monthly.data' using 1:2 title "pcb-4.1.0.tar.gz" with points, \
     'data/pcb-4.1.1_monthly.data' using 1:2 title "pcb-4.1.1.tar.gz" with points, \
     'data/pcb-4.1.1_monthly_win.data' using 1:2 title "pcbinst-4.1.1.exe" with points
# set output back to default
set output
# reset terminal type
set terminal pop

