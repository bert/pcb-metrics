set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Dan McMahill" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Peter Clifton" w lines, 'lines_of_code_by_author.dat' using 1:4 title "DJ Delorie" w lines, 'lines_of_code_by_author.dat' using 1:5 title "bert" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Harry Eaton" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Andrew Poelstra" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Markus Hitter" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Charles Parker" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Felix Ruoff" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Ben Jackson" w lines, 'lines_of_code_by_author.dat' using 1:12 title "anthonix" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Sergey Alyoshin" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Kai-Martin Knaak" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Andrew Poelstra (local)" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Dima Kogan" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Bert Timmerman" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Bill Wilson" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Stuart Brorson" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Ineiev" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Roland Lutz" w lines
