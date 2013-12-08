#!/bin/bash

#   JackLinx
#   Fred de Borst
#
#   http://www.jacklinx.nl
#   felison@gmx.net
#
#   Script to be run as user to install and/or reset default devilspie configurations (presets)
#   in user home-directory.

# Section 1 - Make directories
##############################################################################################

# Make directory for DEVILSPIE configuration files.
mkdir -p       ~/.devilspie ;
chmod -R 755   ~/.devilspie ;


# Section 2 - Copy preset config files into specific directories in user home-directory
############################################################################################

# devilspie
cp -f /opt/jacklinx/share/presets/devilspie-800-600/jackmixer.ds      ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/gmplayer.ds       ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/kplayer.ds        ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/kmplayer.ds       ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/mscore.ds         ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/qjackctl.ds       ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/qmidiroute.ds     ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/qsynth.ds         ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/vmpk.ds           ~/.devilspie ; 
# cp -f /opt/jacklinx/share/presets/devilspie-800-600/9menu.ds          ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/firefox.ds        ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/kmidimon.ds       ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/kmetronome.ds     ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/pianobooster.ds   ~/.devilspie ;
# cp -f /opt/jacklinx/share/presets/devilspie-800-600/mnu-music.ds      ~/.devilspie ;
# cp -f /opt/jacklinx/share/presets/devilspie-800-600/mnu-studio.ds     ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/mnu-playpage.ds   ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/mnu-techpage.ds   ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/meterbridge.ds    ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/xsysinfo.ds       ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/jkmeter.ds        ~/.devilspie ;
cp -f /opt/jacklinx/share/presets/devilspie-800-600/gmidimonitor.ds   ~/.devilspie ;
# End of script
#####################################################################################################






