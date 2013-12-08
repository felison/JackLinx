#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3# 

# MIDIDINGS MIDI ROUTER CHANNEL >> PORT
###########################################################################################
# Script to filter and route specific midi channels to specific midi output 
# ports that are connected to specific QSynth instances.
# See also remarks on JackLinx Channel Numbers in documentation. 

# Midichannel 01 > output port 01 > qsynth 01
# Midichannel 02 > output port 02 > qsynth 02
# Midichannel 03 > output port 03 > qsynth 03
# Midichannel 04 > output port 04 > qsynth 04
# Midichannel 05 > output port 05 > qsynth 05
# Midichannel 10 > output port 10 > qsynth 10

mididings -b alsa -c mdd-router-ch-port -i 1 -o 7 ["ChannelFilter(1) % Output(1,1)","ChannelFilter(2) % Output(2,2)","ChannelFilter(3) % Output(3,3)","ChannelFilter(4) % Output(4,4)","ChannelFilter(5) % Output(5,5)","ChannelFilter(9) % Output(6,9)","ChannelFilter(10) % Output(7,10)"]

############################################################################################
# End of script
 
