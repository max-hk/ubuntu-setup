#!/bin/bash
sudo curl "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" -o /etc/hosts --connect-timeout 1 --max-time 5
