#!/bin/bash

NOTIFY_ID=9999
ICON_MUTED="microphone-sensitivity-muted-symbolic"
ICON_UNMUTED="microphone-sensitivity-high-symbolic"

pactl set-source-mute @DEFAULT_SOURCE@ toggle

if pactl get-source-mute @DEFAULT_SOURCE@ | grep -q yes; then
    notify-send -r $NOTIFY_ID -i $ICON_MUTED " "
else
    notify-send -r $NOTIFY_ID -i $ICON_UNMUTED " "
fi
