#!/bin/bash

# switch mididings python router - switch to channel 9

# switch off and kill unneeded router scripts
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch2.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch3.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch4.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch5.py &
pkill -f /opt/jacklinx/bin/mdd-rtr-ch1-ch10.py &

# switch on and start needed router script
python   /opt/jacklinx/bin/mdd-rtr-ch1-ch9.py

