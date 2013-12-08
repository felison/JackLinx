#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

###############################################################################################
# Script to reset both vmpk and qsynth with same default instrument settings.
# Needed because vmpk does not pass program messages to qsynth when being reset.

# reset vmpk and qsynth
/opt/jacklinx/bin/app-preset-vmpk-01.sh &
/opt/jacklinx/bin/app-preset-qsynth-01.sh &

###############################################################################################
# end of script
