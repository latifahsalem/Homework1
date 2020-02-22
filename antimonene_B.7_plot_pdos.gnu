# Gnuplot script file for plotting data in files: s_PDSO.dat, Px,Py_PDOS.dat, Pz_PDOS.dat,  atom_Sb_tot.dat
# This file is called plot_pdos.gnu
#set autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
#set xtic auto                          # set xtics automatically
#set ytic auto                          # set ytics automatically
set title "Density of states (DOS) of antimonene Buckled" font "Times New Roman, 12"
set xlabel "Energy (eV)" font "Times New Roman, 12"
set ylabel "PDOS (states/eV)" font "Times New Roman, 12"
#set arrow 1 from 0,0 to 0,2 nohead ls 10 dt 2 #Fermi energy

#set key 0.01,100
set xr [3.5:-4.3]
set yr [0:4]
#set terminal latex

set y2tics 
      
plot  "s_PDSO.dat" using ($1):2  title "l" with lines lc "green" lw 5,\
      "Px,Py_PDOS.dat" using ($1):2 title "l" with lines lc "blue" lw 5,\
      "Pz_PDOS.dat" using ($1):2 title "l " with lines lc "red" lw 5,\
      "atom_Sb_tot.dat" using (2.2845+$1):2  title "l" with lines lc "black" lw 5, 
pause -1 "Hit any key to continue\n"    #so that the code doesn't exit automatically
  
