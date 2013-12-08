#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

###############################################################################################
# Script to start JackLinx Stack Layer 3
# qsynth, qmidiroute-chord-maker, vmpk.

# stop stopwatch (a tough guy to stop)
wmctrl -c Stopwatch & 
wmctrl -c stopwatch & 
killall stopwatch &
wmctrl -c Stopwatch & 
wmctrl -c stopwatch & 
killall stopwatch &
wmctrl -c Stopwatch & 
wmctrl -c stopwatch & 
killall stopwatch &

# start qsynth - in background
/opt/jacklinx/bin/app-preset-qsynth-01.sh &

# start qmidiroute chord-maker in background 
/opt/jacklinx/bin/app-preset-qmidiroute-01.sh &

# start vmpk - in background
/opt/jacklinx/bin/app-preset-vmpk-01.sh &
  
# start devilspie to manage window geometry
devilspie -a ;

# Switch to workspace nr 1
wmctrl -s 0

################################################################################################
# end of script
