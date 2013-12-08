#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3#  JackLinx

###############################################################################################
#  Script to reset VMPK - slow but super safe

# Stop VMPK
wmctrl -c "Virtual MIDI Piano Keyboard" & 
killall vmpk &

# Sleep 1 second to allow vmpk to write its config file while closing
sleep 2s ;

# Reset vmpk config file
cp -f /opt/jacklinx/share/presets/vmpk-01/"Virtual MIDI Piano Keyboard.conf" ~/.config/vmpk.sourceforge.net/ ;

# Sleep 1 second to allow the config file to be loaded
sleep 2s ;

# Start vmpk
vmpk &
   
# start devilspie to manage window geometry
devilspie -a &

###############################################################################################
# end of script
