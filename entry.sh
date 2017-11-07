#!/bin/sh

iptables -t nat -A POSTROUTING -s 10.22.22.0/24 -o eth0 -j MASQUERADE

/tinyvpn -s -l0.0.0.0:443 --log-level 5 --tun-dev tunx

