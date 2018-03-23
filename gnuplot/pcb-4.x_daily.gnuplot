set term png
set output "pcb-4.x_daily.png"
set title "pcb-4.x series tar.gz downloads"
set style data linespoints
# set Y-axis
set yrange [0:]
set ylabel "Number of daily downloads [-]"
set grid y
# set X-axis
set xlabel "Date"
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y-%m-%d"
set xrange ["2017-01-01":]
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# plot data
plot 'data/pcb-4.0.0_daily.data' using 1:2 title "pcb-4.0.0" with linespoints, \
     'data/pcb-4.0.1_daily.data' using 1:2 title "pcb-4.0.1" with linespoints, \
     'data/pcb-4.0.2_daily.data' using 1:2 title "pcb-4.0.2" with linespoints, \
     'data/pcb-4.1.0_daily.data' using 1:2 title "pcb-4.1.0" with linespoints
# set output back to default
set output
# reset terminal type
set terminal pop

