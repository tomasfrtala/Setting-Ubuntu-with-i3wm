#!/bin/bash

# http://i3wm.org/i3status/manpage.html#_external_scripts_programs_with_i3status
i3status --config ~/.i3status.conf | while :

do
read line
	# http://unix.stackexchange.com/a/12074
	#LG=$(setxkbmap -query | awk '/layout/{print $2}')
	LG=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')
	# shortcut based on this http://askubuntu.com/a/158627
	# a vypnut gnome-setting-deamon https://faq.i3wm.org/question/4595/problems-when-switching-keyboard-layout-in-gnome-i3/
	#LG=$(setxkbmap -print | grep xkb_symbols | awk '{print $4}' | awk -F"+" '{print $2}')
	# But at the end this worked
	# http://unix.stackexchange.com/a/27688
	# At lest this need to be changed
	#LG=$(xset -q | grep LED | awk '{ print $10 }')


	if [ $LG == "us" ]
	then
# Original color harmonized with colors of i3wm
# Colors taken from http://infra.in.zekjur.net/pipermail/i3-discuss/2012-October/001020.html
#		dat="[{ \"full_text\": \" $LG\", \"color\":\"#009E00\" },"
		dat="[{ \"full_text\": \" $LG\", \"color\":\"#00FF00\" },"
	else
# Original color
#		dat="[{ \"full_text\": \" $LG\", \"color\":\"#C60101\" },"
		dat="[{ \"full_text\": \" $LG\", \"color\":\"#FF0000\" },"

	fi
	echo "${line/[/$dat}" || exit 1
done
