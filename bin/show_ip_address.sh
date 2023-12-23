#!/bin/bash
echo 'IP address:'
ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'

echo ' '
echo 'Public IP address:'
current_ip="$(curl --silent --show-error --fail ipecho.net/plain)"
echo "$current_ip"
curl -s "ipinfo.io/$current_ip" | grep city -i -m 1 |cut -d ':' -f 2 | xargs

