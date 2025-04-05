set term png
set output "pcb-4.3.0_monthly.png"
set title "pcb-4.3.0.tar.gz downloads"
set style data linespoints
# set Y-axis
set yrange [0:]
set ylabel "Number of monthly downloads [-]"
set grid y
# set X-axis
set xlabel "Month" offset 0,-4
set timefmt "%Y-%m"
set xdata time
set format x "%Y-%m"
set xrange ["2021-03":]
set grid x
set xtic offset 0,-4.5 rotate by 90
# plot data
plot 'data/pcb-4.3.0_monthly.data' using 1:2 title ""
# set output back to default
set output
# reset terminal type
set terminal pop
