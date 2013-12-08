

# Application name: JackLinx
# Developer:        Fred de Borst
# Website:          http://www.jacklinx.nl
# Documentation:    http://documentation.jacklinx.nl
# Email:            felison@gmx.net
# Date:             May 2013
# Licence:          GPLv3

from mididings import *

config(client_name='mdd-rtr-ch1-ch9')

run(ChannelFilter(1) >> Channel(9))
