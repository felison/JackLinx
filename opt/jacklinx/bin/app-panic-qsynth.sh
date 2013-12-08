#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

# Midi Panic script to reset midinotes on qsynth channel 12.
# Needed when sudden stopping of kmidimon lets notes hang.

aplaymidi --port="FLUID Synth (Qsynth-CH-12)":0 /opt/jacklinx/share/midi/reset.mid 

# End of script
