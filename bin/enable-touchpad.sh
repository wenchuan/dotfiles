#!/bin/sh
ID=`xinput list | grep "TouchPad" | grep -o "id=[0-9]\+" | cut -c4-`

xinput set-prop $ID "Device Enabled" 1
