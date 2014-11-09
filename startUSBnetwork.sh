#!/bin/bash

# This is done to enable the Beaglebone to access the internet 
# connection of the host computer.

route add default gw 192.168.7.1

echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# Sets date and time
/usr/bin/ntpdate -b -s -u de.pool.ntp.org 
