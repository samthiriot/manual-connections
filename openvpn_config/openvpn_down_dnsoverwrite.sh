#!/bin/bash

# stop transmission (no more torrent without operational VPN!)
echo "Stopping Transmission Torrent Downloading"
service transmission-daemon stop

# Remove process and route information when connection closes
rm -rf /opt/piavpn-manual/pia_pid /opt/pia-manual/route_info
# remove port information
rm -f /opt/piavpn-manual/port

# Replace resolv.conf with original stored as backup
cat /opt/piavpn-manual/resolv_conf_backup > /etc/resolv.conf


