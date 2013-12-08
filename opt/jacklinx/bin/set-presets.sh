#!/bin/bash

#   JackLinx
#   Fred de Borst
#   april 2013
#   http://www.jacklinx.nl
#   felison@gmx.net
#
#   Script to be run as user to install and/or reset default configurations (presets) in user home directory
#

# Section 1 - Make directories
##############################################################################################

# Make directory voor JACKCONTROL en QSYNTH configuration files
mkdir -p       ~/.config/rncbc.org ;
chmod -R 755   ~/.config/rncbc.org ;

# Make directory for VMPK KEYBOARD configuration files.
mkdir -p       ~/.config/vmpk.sourceforge.net ;
chmod -R 755   ~/.config/vmpk.sourceforge.net ;

# Make directory for GNOME-MPLAYER configuration files.
mkdir -p       ~/.gconf/apps/gnome-mplayer ;
chmod -R 755   ~/.gconf/apps/gnome-mplayer ;

# Make directory for GNOME-MPLAYER configuration files.
mkdir -p       ~/.gconf/apps/gnome-mplayer/preferences ;
chmod -R 755   ~/.gconf/apps/gnome-mplayer/preferences ;

# Make directory for MUSE-SCORE configuration files.
mkdir -p       ~/.config/MusE ;
chmod -R 755   ~/.config/MusE ;

# Make directory for KMIDIMON and KMETRONOME configuration files.
mkdir -p       ~/.kde/share/config ;
chmod -R 755   ~/.kde/share/config ;

# Make directory for KMIDIMONUI configuration files.
mkdir -p       ~/.kde/share/apps/kmidimon ;
chmod -R 755   ~/.kde/share/apps/kmidimon ;

# Make directory for Piano Booster configuration files.
mkdir -p       ~/.config/PianoBooster ;
chmod -R 755   ~/.config/PianoBooster ;

# QTRACTOR - to be done
# MIXXX    - to be done

# Section 2 - Copy preset config files into specific directories in user home-directory
############################################################################################

# gnome-mplayer
cp -f /opt/jacklinx/share/presets/gmplayer-01/%gconf.xml        ~/.gconf/apps/gnome-mplayer/preferences/ ;

# mscore
cp -f /opt/jacklinx/share/presets/mscore-01/MuseScore.ini       ~/.config/MusE/ ;

# qjackctl
cp -f /opt/jacklinx/share/presets/qjackctl-01/QjackCtl.conf     ~/.config/rncbc.org/ ;

# qmidinet
cp -f /opt/jacklinx/share/presets/qmidinet-01/QmidiNet.conf     ~/.config/rncbc.org/ ;

# qsynth
cp -f /opt/jacklinx/share/presets/qsynth-01/Qsynth.conf         ~/.config/rncbc.org/ ;

# qtractor 
cp -f /opt/jacklinx/share/presets/qtractor-01/Qtractor.conf     ~/.config/rncbc.org/ ;

# vmpk
cp -f /opt/jacklinx/share/presets/vmpk-01/"Virtual MIDI Piano Keyboard.conf" ~/.config/vmpk.sourceforge.net/ ;

# kmidimon
cp -f /opt/jacklinx/share/presets/kmidimon-01/kmidimonrc        ~/.kde/share/config ;

# kmidimonui
cp -f /opt/jacklinx/share/presets/kmidimonui-01/kmidimonui.rc   ~/.kde/share/apps/kmidimon ;

# kmetronome
cp -f /opt/jacklinx/share/presets/kmetronome-01/kmetronomerc    ~/.kde/share/config ;

# piano booster
cp -f /opt/jacklinx/share/presets/pianobooster-01/"Piano Booster.ini"  ~/.config/PianoBooster ;

# hydrogen
cp -f /opt/jacklinx/share/presets/hydrogen-01/hydrogen.conf      ~/.hydrogen ;



# End of script
#####################################################################################################






