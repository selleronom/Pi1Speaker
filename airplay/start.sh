#!/usr/bin/env bash

if [[ -z "$DEVICE_NAME" ]]; then
  DEVICE_NAME=$(printf "balenaSound %s" $(hostname | cut -c -4))
fi

exec shairport-sync -a "$DEVICE_NAME"
