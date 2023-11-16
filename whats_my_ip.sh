#!/bin/bash

# "ifconfig" is giving all the details of system. 
# "Grep" extarct values that start with 192.
# "Cut" is cutting the IP address from line.
ifconfig | grep "192"  | cut -c 14-28
