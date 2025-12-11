#!/bin/bash

# PipeWire Audio Output Toggle Script for Fedora
# Switches between headpones and speakers using wpctl

SPEAKER="alsa_output.pci-0000_0a_00.4.analog-stereo"
HEADPHONES="alsa_output.usb-MediaTek_Inc_Razer_BlackShark_V2_HS_2.4_0000000000000000-00.analog-stereo"

current_sink=$(wpctl status -n | tail -n 2 | head -n 1 | awk '{print $3}')
speaker_id=$(pw-cli info "$SPEAKER" | head -n 1 | awk '{print $2}')
headphones_id=$(pw-cli info "$HEADPHONES" | head -n 1 | awk '{print $2}')

if [ "$current_sink" == $SPEAKER ]; then
    echo "Switching to headphones..."
    wpctl set-default "$headphones_id"
else
    echo "Switching to speakers..."
    wpctl set-default "$speaker_id"
fi
paplay /usr/share/sounds/freedesktop/stereo/message.oga --volume=50000
