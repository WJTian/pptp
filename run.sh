#!/usr/bin/env bash
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -j MASQUERADE
iptables save
echo 1 > /proc/sys/net/ipv4/ip_forward
wget https://github.com/WJTian/pptp/archive/master.zip && unzip master && unzip master && cd pptp-master\
&& rpm -ivh ppp* && rpm -ivh pptp* && pptpd

