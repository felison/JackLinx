#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

##################################################################################################
#  Script to start JackLinx Stack Layer 2 : 
#  jack-mixer, gmidimonitor, mididings-mouter, pulseaudio-sink, meterbridge 

# start jackmixer  - in background
/opt/jacklinx/bin/app-preset-jackmixer-01.sh &
      
# Start mididings router channel to port
/opt/jacklinx/bin/mdd-router-ch-port.sh &
   
# Load pulseaudio sink to jack
/opt/jacklinx/bin/pulseaudio-load-sink.sh &

# Start meterbridge on mixer output ports
# meterbridge -t dpm -c 2 -n meterbridge-dpm "jack_mixer:MAIN L" "jack_mixer:MAIN R" &

# Start gmidimonitor with alsa connections
gmidimonitor --alsa &

sleep 2s ;
   
# (re)start devilspie to manage window geometry
devilspie -a 

###################################################################################################
# end of script
