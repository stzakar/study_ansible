#!/bin/bash 
ip link add 'bond0' type bond && ip link set 'bond0' type bond mode 4
ip link set enp1s0 down && ip link set ens18 master bond0 && ip link set ens18 up && ip addr del 192.168.2.2/22 dev ens18
ip link set ens19 master bond0 
ip addr add 192.168.2.2/22 dev bond0
ip link set bond0 up