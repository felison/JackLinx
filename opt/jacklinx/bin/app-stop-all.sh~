#!/bin/bash

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

# Script to close and stop all JackLinx applications.

source /opt/jacklinx/bin/app-stop.lib ;

# Remove lockfiles layer 1, 2 and 3.
rm /tmp/lock-layer-1 &
rm /tmp/lock-layer-2 &
rm /tmp/lock-layer-3 &

# Kill pulseaudio-sink
/opt/jacklinx/bin/pulseaudio-kill-sink.sh &

# devilspie
killall devilspie &

#MIDIDINGS ROUTER CHANNEL TO PORT
killall /bin/bash /opt/jacklinx/bin/mdd-router-ch-port.sh &  
killall mdd-router-ch-port.sh &  
killall mididings &    

# Page 6 - Tech
wmctrl -c Patchage &  
wmctrl -c patchage &
killall patchage &  

# page 5 0 tracker
killall qtractor &

# page 4 - Effects
wmctrl -c jack-rack & 
killall jack-rack &

# Page 3 - Synth & Qmidiroute
wmctrl -c "Qsynth - A fluidsynth Qt GUI Interface [Qsynth-CH-01]" & 
killall qsynth &
stop-qmidiroute &
wmctrl -c qmidiroute &
killall qmidiroute &
killall qmidiroute /etc/opt/jacklinx/qmr-chord-maker-01.qmr &  

# Page 2 - Play Page
stop-mscore &
stop-kmidimon &
stop-kmetronome &
stop-pianobooster &
stop-firefox &
stop-chromiumbrowser &
stop-mixxx &

# Page 1 - Meterbridge
wmctrl -c meterbridge &  
killall meterbridge &
wmctrl -c meterbridge-dpm &  
killall meterbridge-dpm &

# Page 1 - xsysinfo
wmctrl -c xsysinfo &
killall xsysinfo &

# Page 1 - vmpk
wmctrl -c "Virtual MIDI Piano Keyboard" & 
killall vmpk &

# Page 1  jack-mixer
wmctrl -c jack-mixer  &
killall jack-mixer  &
wmctrl -c Jack_Mixer &
killall Jack_Mixer &

# Page 1 - gmidimonitor
wmctrl -c GMIDImonitor & 
killall gmidimonitor &
killall "gmidimonitor -alsa" &

# Page 1 - QJackCtl
wmctrl -c "JACK Audio Connection Kit [] Gestart." &  
wmctrl -c "JACK Audio Connection Kit [] Gestopt." &
wmctrl -c "JACK Audio Connection Kit [] Actief." &
killall qjackctl &
killall jackd &

# Page 1 - Stopwatch
wmctrl -c Stopwatch & 
wmctrl -c stopwatch & 
killall stopwatch &

# General
killall 9menu &

# wmctrl -c jack audio & #???
# wmctrl -c python &     #???

# End of script




