#!/usr/bin/env bash

# Start raspotify
if [[ ! -z "$SPOTIFY_USERNAME" ]]; then
    exec /usr/local/bin/librespot  --name "$BALENA_DEVICE_NAME_AT_INIT" --backend alsa --bitrate "$SPOTIFY_BITRATE" --cache /var/cache/librespot --initial-volume=50 --enable-volume-normalisation --username "$SPOTIFY_USERNAME" --password "$SPOTIFY_PASSWORD"
else
    exec /usr/local/bin/librespot  --name "$BALENA_DEVICE_NAME_AT_INIT" --backend alsa --bitrate "$SPOTIFY_BITRATE" --cache /var/cache/librespot --initial-volume=50 --enable-volume-normalisation
fi