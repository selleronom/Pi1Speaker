#!/usr/bin/env bash

if [[ -z "$DEVICE_NAME" ]]; then
  DEVICE_NAME=$(printf "balenaSound %s" $(hostname | cut -c -4))
fi

# Set the system volume here
SYSTEM_OUTPUT_VOLUME="${SYSTEM_OUTPUT_VOLUME:-25}"

# Start raspotify
exec /usr/local/bin/librespot  --name "$DEVICE_NAME" --backend alsa --bitrate 160 --cache /var/cache/librespot --initial-volume=$SYSTEM_OUTPUT_VOLUME --enable-volume-normalisation --normalisation-pregain 2
