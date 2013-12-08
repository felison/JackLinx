#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

#########################################################################################
# Pre-script to control start of application group layer 3: SYNTH, VMPK, QMIDIROUTE.

# Check if jackd is already running.
# If jackd runs start application group layer 3.

while :; do
    # Test if jackd is running.
    if [ "$(pidof jackd)" ]||[ "$(pidof jackdbus)" ]
    then
        if [ ! -f /tmp/lock-layer-3 ]
        then 
             # Run app-start-layer-3-run.sh
             /opt/jacklinx/bin/app-start-layer-3-run.sh &
             # Make lockfile 
             touch /tmp/lock-layer-3
        else
             exit 1
        fi       
    else
        sleep 1s
    fi

done

#########################################################################################
# End of script 


