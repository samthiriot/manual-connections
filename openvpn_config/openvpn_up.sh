#!/bin/bash

# Write gateway IP for reference
echo $route_vpn_gateway > /opt/piavpn-manual/route_info

echo $4 > /opt/piavpn-manual/ip

# now we stop transmission as it should be down already
echo "OpenVPN up. Stopping transmission..." >> /var/log/openvpn/update-transmission-config.log
service transmission-daemon stop || echo "error when stopping transmission :-/"

# then trigger an update of the file :D 
echo "Will write the new transmission data in 1 minute" >> /var/log/openvpn/update-transmission-config.log
echo "bash /etc/openvpn/update-transmission-config.sh" | at now +1 minutes

