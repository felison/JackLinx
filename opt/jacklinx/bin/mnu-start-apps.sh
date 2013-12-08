#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

####################################################################################################################
#  Script to start applications menu

if [ "$(pidof jackd)" ] && [ "$(pidof vmpk)" ]

then
   # start applications menu
   9menu -popup -label "Applications" -fg black -bg red -file /etc/opt/jacklinx/mnu-start-apps.txt -geometry 100x1000+150+30

else
   # if jackd process has not been started show dialog to inform user that jack has 
   # to be started.
   /opt/jacklinx/bin/mnu-music-needs-synth.sh
fi
####################################################################################################################
# end of script
