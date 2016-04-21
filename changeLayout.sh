#!/bin/bash

#This script performs changing the keyboard layout from slovak to english

LG=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')

if [ $LG == "us" ]
then
	exec `setxkbmap sk`
else
	exec `setxkbmap us`
fi
