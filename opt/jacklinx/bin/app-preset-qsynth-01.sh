#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

###############################################################################################
#  Script to reset QSYNTH - slow but super safe

wmctrl -c "Qsynth - A fluidsynth Qt GUI Interface [Qsynth-CH-01]" & 
killall qsynth &

# Give qsynth 2 seconds to close down
sleep 2s ;

# Reset qsynth config file with specific preset
cp -f /opt/jacklinx/share/presets/qsynth-01/Qsynth.conf  ~/.config/rncbc.org/ ;

sleep 2s ;

# Restart qsynth
qsynth -a jack -R off -C off &

# Reset the windows
devilspie -a ;

###############################################################################################
# end of script
