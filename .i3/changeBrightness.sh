#!/bin/bash

# Arg: <number with plus sign> for increasing brighntess
#      <number with minus sign for decreasing brightness
# https://github.com/tshirtman/.i3/blob/master/brightness
val=$(cat /sys/class/backlight/acpi_video0/brightness)
max_val=$(cat /sys/class/backlight/acpi_video0/max_brightness)
val=$((val $1))
if [ $val -ge 0 -a $val -le $max_val ]; then
	echo $val > /sys/class/backlight/acpi_video0/brightness
fi
