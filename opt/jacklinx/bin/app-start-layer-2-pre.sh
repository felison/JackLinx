#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

#########################################################################################
# Pre-script to control start of application layer 2: MIXER and peripherals

# Check if jackd is already running.
# If jackd runs start application group layer 2.

while :; do
    # Test if jackd is running.
    if [ "$(pidof jackd)" ]||[ "$(pidof jackdbus)" ]
    then
        if [ ! -f /tmp/lock-layer-2 ]
        then 
             # Run app-start-layer-2-run.sh
             /opt/jacklinx/bin/app-start-layer-2-run.sh &
             # Make lockfile 
             touch /tmp/lock-layer-2
        else
             exit 1
        fi       
    else
        sleep 1s
    fi

done

#########################################################################################
# End of script 


