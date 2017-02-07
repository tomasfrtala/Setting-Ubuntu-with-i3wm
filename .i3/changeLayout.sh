#!/bin/bash

LG=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')

if [ $LG == "us" ]
then
	exec `setxkbmap sk`
else
	exec `setxkbmap us`
fi
