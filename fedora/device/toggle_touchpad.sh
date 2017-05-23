#!/bin/bash

DEVICE_ID=$(xinput list | grep "Synaptics TouchPad" | cut -f2 | cut -d '=' -f2)
CURRENT_STATE=$(xinput --list-props $DEVICE_ID | grep -i enabled | cut -f3)
echo DEVICE_ID=$DEVICE_ID
echo CURRENT_STATE=$CURRENT_STATE
echo CURRENT_STATE=$((1-CURRENT_STATE))

xinput --set-prop $DEVICE_ID "Device Enabled" $((1-CURRENT_STATE))
#xinput --set $INPUT_ID
