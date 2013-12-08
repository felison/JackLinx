#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

#  JackLinx start script
#  Start this script by pointing to it from a starter on the desktop.
#  Point to: /opt/jacklinx/bin/app-start-jacklinx.sh

#########################################################################################

# set 6 workspaces
wmctrl -n 6 &

# Start menu system
/opt/jacklinx/bin/mnu-general.sh &
/opt/jacklinx/bin/mnu-bandsolo.sh &

# Start bandindicator with indication 'solo'. Width = 14 units
9menu -label "Band Number" -bg orange -fg black -geometry 100x1000+0+800 "Solo          " &

# Start main menu blocks
/opt/jacklinx/bin/mnu-background.sh &
/opt/jacklinx/bin/mnu-deskswitch.sh &
/opt/jacklinx/bin/mnu-desk-1.sh &
/opt/jacklinx/bin/mnu-desk-2.sh &
/opt/jacklinx/bin/mnu-desk-3.sh &
/opt/jacklinx/bin/mnu-desk-4.sh &
/opt/jacklinx/bin/mnu-desk-5.sh &
/opt/jacklinx/bin/mnu-desk-6.sh &

# Start stopwatch
stopwatch -forward &

# start xsysinfo
xsysinfo &

# Start the three layered application stack
/opt/jacklinx/bin/app-start-layer-1-pre.sh &
/opt/jacklinx/bin/app-start-layer-2-pre.sh &
/opt/jacklinx/bin/app-start-layer-3-pre.sh &

# switch to workspace nr 1
# wmctrl -s 0 &

# put all windows into place
devilspie -a ;

#######################################################################################
# end of script

