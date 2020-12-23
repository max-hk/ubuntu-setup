#!/bin/bash
echo "PASSWORD" | sudo -S curl "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" -o /etc/hosts --connect-timeout 1 --max-time 5 --stderr ~/debug.txt
