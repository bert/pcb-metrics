set term png
set output "pcb-4.1.0_OS.png"
set title "pcb-4.1.0.tar.gz downloads by OS"
set style data histogram
set style fill solid border -1
set ylabel "Number of downloads [-]"
set autoscale y
set grid y
set xlabel ""
set boxwidth 1.0 relative
set autoscale x
#set grid x
set xtic rotate by 90 scale 0 offset 1.0,0
plot 'data/pcb-4.1.0_OS.data' using 2:xticlabels(1) title ""
# set output back to default
set output
# reset terminal type
set terminal pop

