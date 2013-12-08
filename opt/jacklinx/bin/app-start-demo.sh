#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

####################################################################################################################
#  Script to start jacklinx demo

if [ "$(pidof jackd)" ] && [ "$(pidof vmpk)" ]

then
   # start jacklinx demo menu
   ./jacklinx-demo/demo-main.sh ; 
else
   # show dialog to inform user that jack has 
   # to be started by closing and restarting jacklinx.
   /opt/jacklinx/bin/mnu-jackd-not-running.sh

fi

####################################################################################################################
# end of script
