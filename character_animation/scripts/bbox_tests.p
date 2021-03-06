set terminal postscript eps color blacktext 
set output 'plot_bbox_tests.eps'

set title '# BoundingBox Tests'
set xlabel "frame number"
set ylabel "# BoundingBox Tests"

plot 'data_refit' using 1:6 title 'refit' with linespoints, \
     'data_rebuild' using 1:6 title 'rebuild' with linespoints, \
     'data_fuzzy' using 1:6 title 'fuzzy' with linespoints, \
     'data_twolevelrefit' using 1:6 title 'modecomp/refit' with linespoints;
