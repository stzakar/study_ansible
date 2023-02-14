#!/bin/bash 
ip link add 'bond0' type bond && ip link set 'bond0' type bond mode 4
ip link set enp1s0 down && ip link set enp1s0 master bond0 && ip link set enp1s0 up && ip addr del 192.168.4.42/24 dev enp1s0
ip link set enp12s0 master bond0 
ip addr add 192.168.4.42/24 dev bond0
ip link set bond0 up