# Gnuplot script file for plotting data in file "antimonene_B.dos.dat"
# This file is called plot_dos.gnu
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
#set xtic auto                          # set xtics automatically
#set ytic auto                          # set ytics automatically
#set title "Density of states (DOS) of buckled antimonene " font "Times New Roman, 12"
set xlabel "Energy (eV)" font "Times New Roman, 12"
set ylabel "DOS (states/eV)/unit cell" font "Times New Roman, 12"
#set key 0.01,100
set y2tics 
set xr [3.5:-4.5]
set yr [0:20]
plot    "antimonene_B.dos.dat" using (2.2845+$1):2 with lines lc "black" lw 2 title "DOS"
pause -1 "Hit any key to continue\n"    #so that the code doesn't exit automatically
