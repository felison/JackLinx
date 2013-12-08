#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

#########################################################################################
# Pre-script to control the start of Stack Layer 1 - Jack

# Check if jackd is still running.
# If it still runs, kill jackd and while-loop until jackd has stopped.
# As soon as jackd has stopped start new instance of qjackctl.

# Stop firefox to stop any instances of flash sound
killall firefox &

while :; do
    # Test if jackd is still running
    if [ ! "$(pidof jackd)" ]||[ ! "$(pidof jackdbus)" ]
    then
        if [ ! -f /tmp/lock-layer-1 ]
        then 
             # Run app-start-layer-1-run.sh
             /opt/jacklinx/bin/app-start-layer-1-run.sh &
             # Make lockfile 
             touch /tmp/lock-layer-1
        else
             exit 1
        fi       
    else
        sleep 1s
    fi

done

#########################################################################################
# End of script 


