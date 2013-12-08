#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

###############################################################################################
#  Script to reset jack-mixer - slow but safe

#  Stop jackmixer
wmctrl -c jack-mixer  &
killall jack-mixer  &
wmctrl -c jack_mixer &
killall jack_mixer &
wmctrl -c jackmixer &
killall jackmixer &
wmctrl -c Jack_Mixer &
killall Jack_Mixer &

#  Give jackmixer the time to close down
sleep 2s ;

#  Start jackmixer with specific JackLinx mixer layout
jack_mixer -c /etc/opt/jacklinx/ext-mixerlayout-01.xml ;

# Start mididings router channel to port
/opt/jacklinx/bin/mdd-router-ch-port.sh &
   
#  Start devilspie to manage window geometry
devilspie -a ;

###############################################################################################
# end of script
