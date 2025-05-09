set term png
set output "pcb-4.3.0_OS_win.png"
set title "pcbinst-4.3.0.exe downloads by OS"
set style data histogram
set style fill solid border -1
set ylabel "Number of downloads [-]"
set autoscale y
set grid y
set xlabel "Operating System" offset 0,-4
set boxwidth 1.0 relative
set autoscale x
#set grid x
set xtic offset 0,-4.5 rotate by 90
plot 'data/pcb-4.3.0_OS_win.data' using 2:xticlabels(1) title ""
# set output back to default
set output
# reset terminal type
set terminal pop
