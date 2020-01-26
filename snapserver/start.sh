#!/bin/bash

echo "Start Avahi-daemon..."
/usr/sbin/avahi-daemon -D
echo "Started Avahi-daemon"

sleep 5

while :
do
    if /usr/bin/avahi-browse -p -a -t -k | /bin/grep -q Snapcast; then
        echo "Found other Snapserver, trying again in 10 seconds..."
        sleep 10
    else
        echo "Start Snapserver..."
        exec /usr/bin/snapserver
        echo "Started Snapserver"
    fi
done