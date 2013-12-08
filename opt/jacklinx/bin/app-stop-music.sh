#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

# Script to close and kill all apps related to playing of demo or custom content
########################################################################################

source /opt/jacklinx/bin/app-stop.lib

# Close media related apps by calling function from app-stop-lib
stop-mscore  &
stop-mplayer &
stop-kmetronome &
stop-kmidimon &
stop-pianobooster &
stop-firefox &
stop-chromiumbrowser &
stop-mixxx &

# Run the qsynth-panic-script in case some midi notes remain hanging.
/opt/jacklinx/bin/app-panic-qsynth.sh &
 
# Kill non-gui apps
killall aplaymidi &

# Run the qsynth-panic-script in case some midi notes remain hanging.
/opt/jacklinx/bin/app-panic-qsynth.sh &

# Set focus on workspace number 2 (wmctlr counts from 0) 
wmctrl -s 1 

########################################################################################
# End of script
