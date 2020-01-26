#!/usr/bin/env bash

echo "Start Avahi-daemon..."
/usr/sbin/avahi-daemon -D
echo "Started Avahi-daemon"

sleep 5

echo "Start Snapclient..."
exec snapclient --hostID "$BALENA_DEVICE_NAME_AT_INIT"
echo "Started Snapclient"