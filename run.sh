#!/usr/bin/env bash
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o eth0  -j MASQUERADE
iptables-save > /etc/sysconfig/iptables
echo 1 > /proc/sys/net/ipv4/ip_forward
wget -o master https://github.com/WJTian/pptp/archive/master.zip && unzip -f master.zip && cd pptp-master\
&& rpm -ivh ppp* && rpm -ivh pptp* && pptpd

