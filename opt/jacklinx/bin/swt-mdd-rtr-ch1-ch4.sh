#!/bin/bash

# switch-mididings-python-router
# switch channel 1 to channel 4

# switch off - kill unselected router scripts
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch2.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch3.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch5.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch9.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch10.py &

# switch on - start selected router script
python /opt/jacklinx/bin/mdd-rtr-ch1-ch4.py
