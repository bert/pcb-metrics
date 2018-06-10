set term png size 1280,960
set output "pcb-4.x_daily.png"
set title "pcb-4.x.y series downloads"
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
plot 'data/pcb-4.0.0_daily.data' using 1:2 title "pcb-4.0.0.tar.gz" with linespoints, \
     'data/pcb-4.0.1_daily.data' using 1:2 title "pcb-4.0.1.tar.gz" with linespoints, \
     'data/pcb-4.0.2_daily.data' using 1:2 title "pcb-4.0.2.tar.gz" with linespoints, \
     'data/pcb-4.1.0_daily.data' using 1:2 title "pcb-4.1.0.tar.gz" with linespoints, \
     'data/pcb-4.1.1_daily.data' using 1:2 title "pcb-4.1.1.tar.gz" with linespoints, \
     'data/pcb-4.1.1_daily_win.data' using 1:2 title "pcbinst-4.1.1.exe" with linespoints, \
     'data/pcb-4.1.2_daily.data' using 1:2 title "pcb-4.1.2.tar.gz" with linespoints, \
     'data/pcb-4.1.2_daily_win.data' using 1:2 title "pcbinst-4.1.2.exe" with linespoints
# set output back to default
set output
# reset terminal type
set terminal pop

