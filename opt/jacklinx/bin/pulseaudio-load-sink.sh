#!/bin/bash

# JackLinx
# Fred de Borst
# http://www.jacklinx.nl
# felison@gmx.net
# March 2013 

# Script to create pulseaudio source and sink sockets for jack
# Needed to route Firefox Flash audiostreams to jack

# pacmd load-module module-jack-source channels=2; 
pacmd load-module module-jack-sink channels=2;

# End of script 


