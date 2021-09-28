#!/bin/sh -e
#
# entrypoint for strongswan
#
# - VPN_DEVICE
# - VPN_NETWORK
#

/init.sh

iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -s ${VPN_NETWORK}  -j ACCEPT
iptables -A INPUT -i ${VPN_DEVICE} -p esp -j ACCEPT
iptables -A INPUT -i ${VPN_DEVICE} -p udp --dport 500 -j ACCEPT
iptables -A INPUT -i ${VPN_DEVICE} -p tcp --dport 500 -j ACCEPT
iptables -A INPUT -i ${VPN_DEVICE} -p udp --dport 4500 -j ACCEPT
#L2TP
#iptables -A INPUT -i ${VPN_DEVICE} -p udp --dport 1701 -j ACCEPT
#PPTP
#iptables -A INPUT -i ${VPN_DEVICE} -p tcp --dport 1723 -j ACCEPT
iptables -t nat -A POSTROUTING -s ${VPN_NETWORK} -o ${VPN_DEVICE} -j MASQUERADE
exec ipsec start --nofork "$@"