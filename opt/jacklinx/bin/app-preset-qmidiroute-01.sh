#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

###############################################################################################
# Script to reset qmidiroute chordmaker

# Stop-qmidiroute
wmctrl -c qmidiroute &
killall qmidiroute &
killall qmidiroute /etc/opt/jacklinx/qmr-chord-maker-01.qmr &  

# Give qmidiroute 2 seconds to close down
sleep 2s ;

# Start qmidiroute chord-maker with specific preset
qmidiroute /etc/opt/jacklinx/qmr-chord-maker-01.qmr ;
   
# Start devilspie to manage window geometry
devilspie -a ;

###############################################################################################
# end of script
