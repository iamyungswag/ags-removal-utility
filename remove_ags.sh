#!/bin/bash

# Remove Adobe Genuine Software (AGS) Services on macOS
# Usage: sudo bash remove_ags.sh

# Check for sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (sudo)."
  exit 1
fi

echo "Force killing all Adobe processes..."
pkill -9 -i adobe

echo "Stopping AGS services..."
launchctl stop system/com.adobe.AGSService
launchctl stop system/com.adobe.agsservice
launchctl disable system/com.adobe.AGSService
launchctl disable system/com.adobe.agsservice

echo "Removing AGS LaunchDaemons..."
rm /Library/LaunchDaemons/com.adobe.AGSService.plist
rm /Library/LaunchDaemons/com.adobe.agsservice.plist

echo "Removing AGS files..."
rm -rf /Library/Application\ Support/Adobe/Adobe\ Desktop\ 
Common/AdobeGenuineClient
rm -rf /Library/Application\ Support/Adobe/AdobeGCClient

echo "Blocking Adobe domains..."
echo "block out to any port 443 from any to p13n.adobe.io" >> /etc/pf.conf
echo "block out to any port 443 from any to adobe.com" >> /etc/pf.conf
pfctl -f /etc/pf.conf
pfctl -E

echo "Done! Rebooting..."
shutdown -r now
