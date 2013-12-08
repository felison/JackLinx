#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

#########################################################################################
# Script to start JackLinx Stack Layer 1 - QJackCtl



# Reset QJackCtl configuration to JackLinx preset
cp -f /opt/jacklinx/share/presets/qjackctl-01/QjackCtl.conf  ~/.config/rncbc.org/ ;

# Restore alsa 
alsactl -F restore ;

# Need to sleep 5 seconds to give alsa time to restore.
# If less seconds allowed Qjackctl seems to complain not to be able to connect to alsa hw0.
sleep 5s ;

# Start QJackCtl
qjackctl -s ; 

# Start Devilspie daemon
devilspie -a ;

#########################################################################################
# End of script 


