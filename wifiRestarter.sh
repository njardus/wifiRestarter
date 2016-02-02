#!/bin/bash

echo "wifiRestarter.sh has run at: " >> ~/scripts/wifiRestarter.log
date >> ~/scripts/wifiRestarter.log

if [[ "$(ping -c 1 $(ROUTERIP) | grep '100% packet loss' )" != "" ]]; then
    echo "Internet isn't present"
    #restart wifi
    nmcli c down id $(SSID)
    sleep 5
    nmcli c up id $(SSID)
    echo "Wifi restarted at " >> ~/scripts/wifiRestarter.log
    date >> ~/scripts/wifiRestarter.log
    exit 1
else
    echo "Nothing"
fi
